Rails.application.routes.draw do
  resources :artists
  root 'artists#index'
end
