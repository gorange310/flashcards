Rails.application.routes.draw do
  root 'cards#index'
  # get "/cards", to: "cards#index"
  get "/cards/new", to: "cards#new"

end
