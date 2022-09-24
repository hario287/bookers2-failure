Rails.application.routes.draw do
  devise_for :users
root 'homes#top'
get "/homes/about" => "homes#about", as: "about"

  # resources :books, only: [:index, :show, :update, :edit, :create, :destroy]
  # resources :users, only: [:index, :show, :update, :edit]
end
