Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"

  resources :books
  resources :users, only: [:show, :edit, :update ,:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/home/about" => "homes#about", as: "about"
  get 'users' => 'users#index'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete '/books' => 'books#destroy'
end