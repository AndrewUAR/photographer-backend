Rails.application.routes.draw do
  resources :reviews
  resources :photo_sessions
  resources :categories
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :users, only: [:show, :update]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
end
