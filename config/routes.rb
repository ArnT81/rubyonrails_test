Rails.application.routes.draw do
  resources :users
  resources :cats
  
  root 'home#index'
  get 'about' => 'about#index'
  get 'users' => 'users#index'
  
  # USERS
  get 'sign_up' => 'registration#new'
  post 'sign_up' => 'registration#create'

  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  
  delete 'logout' => 'sessions#destroy'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
