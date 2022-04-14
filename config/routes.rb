Rails.application.routes.draw do
  root to: "photos#index"
  
  devise_for :users
  resources :users, only: :show


  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
 # root to: "home#index"

 get "/:username" => "users#show"

end
