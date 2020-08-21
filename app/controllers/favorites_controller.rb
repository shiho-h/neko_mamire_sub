class FavoritesController < ApplicationController
	before_action :authenticate_user!

	def create
		cat_image = CatImage.find(params[:cat_image_id])
		favorite = current_user.favorites.new(cat_image_id: cat_image.id)
		favorite.save
		redirect_to cat_image_path(cat_image)
	end

	def destroy
    	cat_image = CatImage.find(params[:cat_image_id])
    	favorite = current_user.favorites.find_by(cat_image_id: cat_image.id)
    	favorite.destroy
    	redirect_to cat_image_path(cat_image)
	end
end
