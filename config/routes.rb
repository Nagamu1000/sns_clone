Rails.application.routes.draw do
  get 'users/index'
  get "/signup" => "users#new"
  post "users/create" => "users#create"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  post "users/:id/destroy" => "users#destroy"
  get "users/:id/likes" => "users#likes"

  get "login" => "users#login_form"
  post "login" => "users#login"
  get "logout" => "users#logout"

  get 'posts/index'
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id" => "posts#show"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "likes/:post_id/create" => "likes#create"
  get "likes/:post_id/destroy" => "likes#destroy"

  get '/' => "home#top"
  get "about" => "home#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
