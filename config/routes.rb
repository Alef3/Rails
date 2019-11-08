Rails.application.routes.draw do
  resources :albums
  resources :artists
  resources :tracks
  root 'artists#index'
end
