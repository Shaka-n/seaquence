Rails.application.routes.draw do
  root 'login#index'  
  resources :locations
  resources :markers, only: [:new, :create, :edit, :update]
  resources :users
  resources :follows
  resources :reports
end
 