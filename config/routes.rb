Rails.application.routes.draw do

  resources :restaurants do
    resources :reviews
  end
  resources :categories
  resources :locations

  root 'locations#index'
end
