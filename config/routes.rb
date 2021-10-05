Rails.application.routes.draw do
  devise_for :accounts
  resources :posts
  resources :properties

  #admin routes
  get "/accounts" => 'admin#accounts', as: :accounts

  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/profile/:id" => 'dashboard#profile', as: :profile

  root to: 'public#main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
