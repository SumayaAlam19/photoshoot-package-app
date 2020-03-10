Rails.application.routes.draw do
  devise_for :users
  resources :packages
  resources :dashboard, only: [:index] 
  get 'payment' => 'packages#payment'

  root to: 'packages#index'
end

