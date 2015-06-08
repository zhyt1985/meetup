class CommentsController < ApplicationController

  def create
    c = Comment.create(comment_params)
    redirect_to c.issue
  end

  private
  def comment_params
    params.permit(:username, :email, :content, :issue_id)
  end
end
