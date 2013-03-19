Pddm2p::Application.routes.draw do
  root :to => 'categories#index'
  
  resources :products
  resources :categories
  
end
