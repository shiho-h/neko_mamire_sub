class FavoritesController < ApplicationController
	before_action :authenticate_user!

	def create
		@cat_image = CatImage.find(params[:cat_image_id])
		favorite = current_user.favorites.new(cat_image_id: @cat_image.id)
		favorite.save
	end

	def destroy
    	@cat_image = CatImage.find(params[:cat_image_id])
    	favorite = current_user.favorites.find_by(cat_image_id: @cat_image.id)
    	favorite.destroy
	end
end
