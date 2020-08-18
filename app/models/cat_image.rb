class CatImage < ApplicationRecord
	belongs_to :user
	attachment :image
	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	has_many :bookmarks, dependent: :destroy
	has_many :users, through: :bookmarks

	acts_as_taggable

	def favorited_by?(user)
	 favorites.where(user_id: user.id).exists?
	end

	def bookmark_by?(user)
		bookmarks.where(user_id: user.id).exists?
	end
end