Rails.application.routes.draw do
  root to: 'books#index'
  resources :books
  resources :users
  resources :rentals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
