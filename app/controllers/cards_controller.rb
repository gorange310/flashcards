class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def show
    find_card
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
    find_card
  end

  def update
    find_card

    if @card.update(card_params)
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy
    find_card
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
