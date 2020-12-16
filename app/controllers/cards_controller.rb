class CardsController < ApplicationController

  before_action :set_card, only: [:show, :edit, :update, :destroy]
  #before_action :set_card, except: [:index, :new, :create]

  def index
    @cards = Card.order(id: :desc)
    # @cards = Card.all.order(id: :desc)
  end

  def show
    @comment = Comment.new
    @comments = @card.comments.order(id: :desc)
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      #flash[:notice] = "新增卡片成功"
      redirect_to "/", notice: "新增卡片成功"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @card.update(card_params)
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy
    @card.destroy
    redirect_to "/", notice: "刪除卡片"
  end

  private
  def card_params
    return params.require(:card).permit(:title, :content)
  end

  def set_card
    @card = Card.find(params["id"])
  end

end
