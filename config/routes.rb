Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "test#index"
  get 'test', to: 'test#index'
  get 'longest', to: 'test#longest'

  #get all the posts
  get 'posts', to: 'post#index'
  #get a single post
  get 'posts/:id', to: 'post#show'
  #create a new post
  post 'posts/create', to: 'post#create'
  #update a post
  put 'posts/:id', to: 'post#update'
  #delete a post
  delete 'posts/:id', to: 'post#destroy'

end
