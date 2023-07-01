Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users, only: %i[index show new edit] do
    resources :categories do
      resources :trades
    end
  end

  root 'splash#index'
  get '/splash', to: 'splash#index'
end
