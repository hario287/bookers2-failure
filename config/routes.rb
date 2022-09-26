Rails.application.routes.draw do

  devise_for :users
  root 'homes#top'
  get "/homes/about" => "homes#about", as: "about"
  resources :books, only: [:new, :index, :show, :create, :edit, :update, :destroy] do
  end
  resources :users, only: [:show, :edit, :update]
end