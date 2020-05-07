Rails.application.routes.draw do
  # root 'login#index'  
  resources :markers, only: [:new, :create, :edit, :update]
  resources :users
  resources :follows
  resources :locations do 
    resources :reports 
  end 

end
