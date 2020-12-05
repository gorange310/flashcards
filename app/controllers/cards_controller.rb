class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    clean_params = params.require(:card).permit(:title, :content)
    @card = Card.new(clean_params)

    if @card.save
      redirect_to "/"
    else
      render :new
      #redirect_to "/cards/new"
    end
  end

  def edit
    @card = Card.find(params["id"])
  end
end
