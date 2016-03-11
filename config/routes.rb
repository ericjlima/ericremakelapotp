Rails.application.routes.draw do
  resources :posts
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  get 'page/index'
  get 'portfolio', to: 'portfolio#index', as: 'portfolio'
  root 'page#index'
end
