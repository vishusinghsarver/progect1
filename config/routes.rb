Rails.application.routes.draw do
  devise_for :users
  get 'tasks/all'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "tasks#index" 
  resources :tasks
  #get "tasks/create"
  # Defines the root path route ("/")
  # root "articles#index"
end
