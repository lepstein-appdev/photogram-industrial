Rails.application.routes.draw do
  root to: "photos#index"

  devise_for :users
  #resources :users, only: :show


  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  
get ":username/liked" => "photos#liked", as: :liked_photos
get ":username/feed" => "photos#liked", as: :feed
get ":username/followers" => "photos#liked", as: :followers
get ":username/following" => "photos#liked", as: :following

get ":username" => "users#show", as: :user

end
