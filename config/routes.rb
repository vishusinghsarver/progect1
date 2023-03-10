Rails.application.routes.draw do
  devise_for :users
  get 'tasks/all'
  patch 'tasks/all'
  post 'tasks/show'
  delete 'tasks/id'
  delete 'tasks/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "tasks#index" 
  resources :tasks
  # g"tasks/id"
  #efines the root path route ("/")
  # root "articles#index"
end
