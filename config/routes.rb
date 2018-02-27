Rails.application.routes.draw do

  resources :restaurants
  resources :categories

  root 'restaurants#index'
end
