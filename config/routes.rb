Rails.application.routes.draw do
  root to: 'books#index'
  resources :books
  resources :rentals

  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  put '/users/:id', to: 'users#update'
  patch '/users/:id', to: 'users#update_in_office'
  delete '/users/:id', to: 'users#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
