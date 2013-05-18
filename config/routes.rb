Pddm2p::Application.routes.draw do
  resources :participants
  resources :sessions,      only: [:new, :create, :destroy]
  resources :commercials
  resources :branches

  
  resources :categories do 
    resources :products
  end 
  
  match '/register',  to: 'participants#receive_android'
  
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  
  root :to => 'sessions#new' #'categories#index'
end
