Rails.application.routes.draw do
  resources :contacts
  resources :profiles
  resources :posts
  get 'sessions/new'
  resources :favorites, only: [ :index, :create, :destroy]
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
