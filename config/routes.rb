Rails.application.routes.draw do
  root to: "photos#index"

  devise_for :users
  #resources :users, only: :show


  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  
get ":username/liked" => "photos#liked", as: :liked_photos
get ":username/feed" => "users#feed", as: :feed
get ":username/followers" => "users#followers", as: :followers
get ":username/following" => "users#following", as: :following
get ":username/discover" => "users#discover", as: :discover

get ":username" => "users#show", as: :user

end
