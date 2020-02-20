Rails.application.routes.draw do
  resources :photographer_categories
  resources :reviews
  resources :photo_sessions
  resources :categories, only: [:index, :show]
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :users, only: [:index, :show, :update]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
end
