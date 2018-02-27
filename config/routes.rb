Rails.application.routes.draw do

  resources :restaurants
  resources :categories
  resources :locations

  root 'locations#index'
end
