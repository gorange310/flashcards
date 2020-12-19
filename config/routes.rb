Rails.application.routes.draw do
  devise_for :users
  root 'cards#index'

  resources :cards do
    resources :comments, only: [:create]
  end

  resources :comments, only: [:edit, :update, :destroy]

end
