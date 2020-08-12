class BookmarksController < ApplicationController
  def create
  	cat_image = CatImage.find(params[:cat_image_id])
  	bookmark = current_user.bookmarks.new(cat_image_id: cat_image.id)
  	bookmark.save!
  	redirect_to cat_image_path(cat_image), success: t('.flash.bookmark')
  end

  def destroy
  	cat_image = CatImage.find(params[:cat_image_id])
  	bookmark = current_user.bookmarks.find_by(cat_image_id: cat_image.id)
  	bookmark.destroy!
    redirect_to cat_image_path(cat_image), success: t('.flash.not_bookmark')
  end

  def inedex
  	@bookmark_cat_images = curre_user.bookmark_cat_images
  end

end
