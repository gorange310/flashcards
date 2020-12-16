Rails.application.routes.draw do
  root 'cards#index'

  resources :cards do
    resources :comments, only: [:create]
  end

  resources :comments, only: [:edit, :update, :destroy]

end
