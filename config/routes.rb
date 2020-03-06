Rails.application.routes.draw do
  devise_for :users
  resources :packages
  get 'payment' => 'packages#payment'

  root to: 'packages#index'
end

