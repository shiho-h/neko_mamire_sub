class CatImagesController < ApplicationController

before_action :authenticate_user!,except: [:index, :show, :all, :rank]


  def index
    @cat_images = CatImage.where(created_at: Time.now.all_month).page(params[:page]).reverse_order

    if params[:tag_name]
      @cat_images = CatImage.tagged_with("#{params[:tag_name]}").page(params[:page]).reverse_order
    end

    @tags = ActsAsTaggableOn::Tag.all

end

  def show
    @cat_image = CatImage.find(params[:id])
    @comment = Comment.new
  end

  def new
    @cat_image = CatImage.new
  end

  def create
    @cat_image = CatImage.new(cat_image_params)
    @cat_image.user_id = current_user.id
    if @cat_image.save
    redirect_to cat_images_path, notice:"投稿できたにゃ"
  else
    render 'new'
  end
  end

  def edit
    @cat_image = CatImage.find(params[:id])
  end

  def update
    cat_image = CatImage.find(params[:id])
    cat_image.update(cat_image_params)
      redirect_to cat_image_path(cat_image)
    
  end

  def destroy
    @cat_image = CatImage.find(params[:id])
    @cat_image.destroy
    redirect_to cat_images_path
  end

  def all
    @cat_images = CatImage.page(params[:page])
    @tags = ActsAsTaggableOn::Tag.all
  end

  def rank
    @all_ranks = CatImage.find(Favorite.group(:Cat_image_id).order('count(cat_image_id) desc').limit(10).pluck(:cat_image_id))
  end

  def bookmarks
    @cat_images = current_user.bookmark_cat_images.includes(:user).recent
  end

private
  def cat_image_params
    params.require(:cat_image).permit(:catname, :image, :memo, :tag_list)
  end


end
