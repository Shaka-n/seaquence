Rails.application.routes.draw do
  # root 'login#index'  
  resources :markers, only: [:new, :create, :edit, :update]
  resources :users
  resources :follows
  resources :locations do 
    resources :reports 
  end 

  patch "/sessions/reset", to: "sessions#reset_counter", as: "reset_session"
  delete "/sessions/logout", to: "sessions#destroy", as: "log_out_session"

  get "/sessions/login", to: "sessions#new", as: "new_login"
  post "/sessions/login", to: "sessions#create"
  
end
