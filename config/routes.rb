Rails.application.routes.draw do
  resources :profiles
  resources :posts
  get 'sessions/new'
  resources :favorites, only: [:show, :create, :destroy]
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
