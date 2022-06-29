Rails.application.routes.draw do
  resources :subscribers
  resources :users
  
  resources :admins
  
  root "articles#index"
  
  resources :articles
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #get "/news", to: "articles#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
