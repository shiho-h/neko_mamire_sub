class CatImagesController < ApplicationController
  def index
    @cat_images = CatImage.all
  end

  def show
    @cat_image = CatImage.find(params[:id])
  end

  def new
    @cat_image = CatImage.new
  end

  def create
    @cat_image = CatImage.new(cat_image_params)
    @cat_image.user_id = current_user.id
    @cat_image.save
    redirect_to cat_images_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def all
  end

  def rank
  end

private
  def cat_image_params
    params.require(:cat_image).permit(:catname, :image, :memo)
  end

end
