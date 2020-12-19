Rails.application.routes.draw do
  devise_for :users
  root 'cards#index'

  resources :cards do
    resources :comments, only: [:create]

    member do
		  post :like
    end

  end

  resources :comments, only: [:edit, :update, :destroy]

end
