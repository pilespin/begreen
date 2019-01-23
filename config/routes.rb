Rails.application.routes.draw do
  resources :prestataires
  resources :restaurants
  devise_for :users
  resources :articles

  # get 'articles/index'
  root 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
