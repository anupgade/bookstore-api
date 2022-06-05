Rails.application.routes.draw do
  root 'static#home'

  # user
  post 'signup', to: 'users#create'

  # books
  get 'books', to: 'books#index'
  post 'books', to: 'books#create'
  get 'books/:id', to: 'books#show'
  delete 'books/:id', to: 'books#destroy'
  # resources :books

  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  post 'users', to: 'users#create'
  delete 'users/:id', to: 'users#destroy'
end
