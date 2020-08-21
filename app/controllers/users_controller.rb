class UsersController < ApplicationController

  before_action :authenticate_user!, except: [:show]
  before_action :signed_in?, only: [:edit, :update]



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
    if  @user == current_user
       render 'edit'
     else
      redirect_to cat_images_path
     end
  end

  def update
    @user = User.find(params[:id])
    if
    @user.update(user_params)
    redirect_to user_path(@user.id)
  else
    render 'edit'
  end
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
