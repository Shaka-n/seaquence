Rails.application.routes.draw do
  root 'locations#index'  
  resources :locations
  resources :markers, only: [:new, :create, :edit, :update]
  resources :users
  resources :follows
  resources :reports
end
