Rails.application.routes.draw do
  devise_for :users
  resources :packages
  resources :dashboard, only: [:index] 
  resources :bookings

  root to: 'packages#index'
end

