Rails.application.routes.draw do
  devise_for :users
  resources :schedules
  resources :rounds do
    post "/save_round", to: "rounds#round_payload"
  end
  root to: "home#index"
  get 'home/index'
  resources :stations

end
