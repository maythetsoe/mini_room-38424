Rails.application.routes.draw do
  get 'mini_rooms/index'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  get 'users/index', to: 'users#index'
  root 'mini_rooms#index'
  # root 'donations#index'
  # get 'donations/index', to: 'donations#index'
  resources :mini_rooms, only: [:new, :index, :create, :edit, :show, :update, :destroy] 
  resources :donations, only: [:new, :index, :create]

  # resources :users, only: :show
  
end
