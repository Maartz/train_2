Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  devise_scope :user do
    authenticated do
      root to: 'rounds#index'
    end

    unauthenticated do
      root to: 'devise/sessions#new', as: 'unauthenticated_path'
    end
  end
 
  resources :schedules
  resources :rounds
  resources :stations
  resources :rounds_trackings
end
