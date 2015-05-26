class CommentsController < ApplicationController
 
	def create
	    @car = Car.find(params[:car_id])
	    @comment = @car.comments.create(comments_params)

	    CommentMailer.comment_created(current_user,@car.user,@comment.content).deliver
	    redirect_to car_path(@car)
	end
 
 
	private
 
	def comments_params
	   params.require(:comment).permit(:content)
	end
 
 
end