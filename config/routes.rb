Rails.application.routes.draw do
  resources :users, only: [:show, :edit]
  resources :post_images, only: [:new, :index, :show, :create, :destroy]
  devise_for :users
  root to: 'homes#top'
  get "/about" => "homes#about" , as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end