class CatImage < ApplicationRecord
	belongs_to :user
	attachment :image
end