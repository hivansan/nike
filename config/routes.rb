Pddm2p::Application.routes.draw do
  resources :sessions,      only: [:new, :create, :destroy]
  resources :commercials
  resources :branches

  
  resources :categories do 
    resources :products
  end 
  
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  
  root :to => 'sessions#new' #'categories#index'
end
