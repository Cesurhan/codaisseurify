Rails.application.routes.draw do
  root 'artists#index'

  resources :artists
  resources :photos
end
