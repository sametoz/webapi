Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "test#index"
  get 'test', to: 'test#index'
  get 'longest', to: 'test#longest'
  get 'add_row_to_posts_table', to: 'test#add_row_to_posts_table'
end
