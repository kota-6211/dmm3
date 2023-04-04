Rails.application.routes.draw do
  root to: 'homes#top' 
  devise_for :users
  
  resources :users, only: [:show, :edit]
  resources :post_images, only: [:new, :index, :show, :create, :destroy]
  
  
  get "/about" => "homes#about" , as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
