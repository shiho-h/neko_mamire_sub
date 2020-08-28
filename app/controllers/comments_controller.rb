class CommentsController < ApplicationController
	before_action :authenticate_user!

	def create
	cat_image = CatImage.find(params[:cat_image_id])
	message = current_user.comments.new(comment_params)
	message.cat_image_id = cat_image.id
	message.save
	redirect_to cat_image_path(cat_image)
	end

	def destroy
	Comment.find_by(id: params[:id], cat_image_id: params[:cat_image_id]).destroy
	redirect_to cat_image_path(params[:cat_image_id])
	end


	private
	def comment_params
		params.require(:comment).permit(:message)
	end

end

