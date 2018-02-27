Rails.application.routes.draw do

  resources :restaurants
  resources :categories
  resources :locations

  root 'restaurants#index'
end
