class CommentsController < ApplicationController
	def create
		@comment = current_user.comments.build(comment_params)
		if @comment.save
			flash[:success] = "Commented!"
			redirect_to :back
		else
			flash[:danger] = "Comment too long"
			redirect_to :back
		end
	end
	private
	def comment_params
		params.require(:comment).permit(:content,:entry_id)
	end
end
