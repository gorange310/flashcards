Rails.application.routes.draw do
  resources :cards
  root 'cards#index'
  # get "/cards/new", to: "cards#new"
  # get "/cards", to: "cards#index"

end
