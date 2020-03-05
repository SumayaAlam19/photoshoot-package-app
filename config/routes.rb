Rails.application.routes.draw do
  devise_for :users
  resources :packages

  root to: 'packages#index'
end

