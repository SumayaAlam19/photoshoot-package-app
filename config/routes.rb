Rails.application.routes.draw do
  resources :packages

  root to: 'packages#index'
end

