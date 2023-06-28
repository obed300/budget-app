Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :groups
  resources :trades
  resources :users
  
  root 'splash#index'
  get '/splash', to: 'splash#index'

  # Define your additional application routes here

  # For example, to define a custom greeting page route:
  # get '/greeting', to: 'custom_pages#hello'
end
