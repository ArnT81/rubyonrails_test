Rails.application.routes.draw do
  resources :cats
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #!root is different

  get '/about' => 'about#index'



  # Defines the root path route ("/")
  # root "articles#index"
end
