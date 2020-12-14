Rails.application.routes.draw do
  get 'auth/login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items

  root 'items#index'
end
