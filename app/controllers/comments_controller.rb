class CommentsController < ApplicationController
  def create
    @card = Card.find(params[:card_id])

    @comment = Comment.new(comment_params)
    @comment.card = @cards

    if @comment.save
      redirect_to "/"
    else
      #render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:conetent)
  end
end
