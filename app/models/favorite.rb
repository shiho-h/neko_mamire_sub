class Favorite < ApplicationRecord

	belongs_to :user
	belongs_to :cat_image
end
