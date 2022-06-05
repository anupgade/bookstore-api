Rails.application.routes.draw do
  root 'static#home'

  # user
  post 'signup', to: 'users#create'

  # authentication
  post 'auth/login', to: 'authentication#authenticate'

  # books
  get 'books', to: 'books#index'
  post 'books', to: 'books#create'
  get 'books/:id', to: 'books#show'
  put 'books/:id', to: 'books#update'
  delete 'books/:id', to: 'books#destroy'
  # resources :books

  # favourites
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  post 'users', to: 'users#create'
  put 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'
end
