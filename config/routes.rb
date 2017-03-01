Rails.application.routes.draw do
  root 'static_pages#home'
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'

  get 'posts' => 'posts#index', as: :posts
  post 'posts' => 'posts#create'
  get 'posts/new' => 'posts#new', as: :new_post
  get 'posts/:id' => 'posts#show', as: :post
  get "posts/:id/edit" => "posts#edit", as: :edit_post
  patch 'posts/:id' => 'posts#update' 
  delete '/posts/:id' => 'posts#destroy'


  get 'users' => 'users#index'
  get 'users/new' => 'users#new', as: :new_user
  post 'users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  # resources :users
  # resources :posts,          only: [:create, :destroy]
end
