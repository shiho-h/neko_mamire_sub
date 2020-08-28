class BookmarksController < ApplicationController
  before_action :authenticate_user!

  def create
  	@cat_image = CatImage.find(params[:cat_image_id])
  	bookmark = current_user.bookmarks.new(cat_image_id: @cat_image.id)
  	bookmark.save!
  end

  def destroy
  	@cat_image = CatImage.find(params[:cat_image_id])
  	bookmark = current_user.bookmarks.find_by(cat_image_id: @cat_image.id)
  	bookmark.destroy!
  end

  def show
  	@user = User.find(params[:user_id])
    @bookmarks = Bookmark.where("user_id = ?", @user)
  end

end
