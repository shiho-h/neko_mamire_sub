class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :cat_image

	validates :message, presence: true
end
