class UsersController < ApplicationController
  def mypage
    user = current_user
    @cat_images = user.cat_images.all
    @user = User.find(params[:id])
    @cat_image = @user.cat_images.all
    @bookmarks = Bookmark.where("user_id = ?", @user)
  end

  def show
    @user = User.find_by(id: params[:id])
    @cat_images = @user.cat_images
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def leave
    @user = User.find(params[:id])
  end

  def withdrawl
    @user = User.find(current_user.id)
    @user.update(status:"退会済")
    reset_session
    redirect_to root_path
  end

  def bookmark
    @user = User.find(params[:id])
    @bookmarks = Bookmark.where("user_id = ?", @user)
  end



  private
  def user_params
    params.require(:user).permit(:name, :email, :status, :id)
  end

end
