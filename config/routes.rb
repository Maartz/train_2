Rails.application.routes.draw do
  resources :rounds
  root to: "home#index"
  get 'home/index'
  resources :stations

end
