Rails.application.routes.draw do
  # root 'login#index'  
  resources :locations
  resources :markers, only: [:new, :create, :edit, :update]
  resources :users
  resources :follows, only: [:new, :create, :destroy]
  resources :reports
end
