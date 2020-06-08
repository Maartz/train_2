Rails.application.routes.draw do
  devise_for :users
  resources :schedules
  resources :rounds
  root to: "home#index"
  get 'home/index'
  resources :stations
  resources :rounds_trackings

end
