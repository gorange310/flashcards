class CardsController < ApplicationController

  before_action :find_card, only: [:show, :edit, :update, :destroy]
  #before_action :find_card, except: [:index, :new, :create]

  def index
    @cards = Card.all
  end

  def show
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      redirect_to "/"
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
    redirect_to "/"
  end

  private
  def card_params
    return params.require(:card).permit(:title, :content)
  end

  def find_card
    @card = Card.find(params["id"])
  end

end
