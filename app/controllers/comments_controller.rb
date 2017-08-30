class CommentsController < ApplicationController    
  def create
    @comment = Comment.new
    @comment.content = params[:content]
    @comment.post_id = params[:post_id]
    @comment.save
    redirect_to :back
  end

  def destroy
    @comment_destroy = Post.find(params[:post_id]).comments.find(params[:comment_id])
    @comment_destroy.destroy
    
    redirect_to :back
  end
end
