class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: comment_params[:text], usertest_id: comment_params[:usertest_id], user_id: current_user.id)
    redirect_to "/usertests/#{@comment.usertest.id}" #コメントと結びつく詳細画面へ
  end

  private
  def comment_params
    params.permit(:text, :usertest_id)
  end
end
