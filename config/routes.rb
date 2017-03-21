Rails.application.routes.draw do
  root 'artists#index'

  resources :artists, only: [:index, :show, :destroy]
  resources :songs, only: [:index, :show, :create, :destroy]
end
