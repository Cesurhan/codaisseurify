Rails.application.routes.draw do
  root 'artists#index'

  resources :artists, only: [:index, :show, :create, :destroy] do
    resources :songs, only: [:index, :show, :create, :destroy]
  end
end
