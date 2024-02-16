Rails.application.routes.draw do
  #get 'articles/create'
  #get 'articles/show'
  #get 'articles/update'
  #get 'articles/delete'
  #root "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles
end
