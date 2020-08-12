class UsersController < ApplicationController
  def mypage
    @user = User.find(params[:id])
    @cat_images = @user.cat_images.reverse_order
  end

  def show
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
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
