Rails.application.routes.draw do
  get 'auth/login', to: 'sessions#new', as: 'login'
  get 'auth/logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions, only: [:new, :create, :destroy]

  resources :items
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'items#index'
end
