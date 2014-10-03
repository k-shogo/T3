Rails.application.routes.draw do
  resources :declares

  devise_for :users

  root to: 'home#index'
end
