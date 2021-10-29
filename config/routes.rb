Rails.application.routes.draw do
  root to: 'public#main'
  scope '/:locale' do
    get 'filter/properties'

    scope '/:locale' do
      get 'contact/contact'
      get 'agencies/thonon'
      get 'agencies/douvaine'
      get 'agencies/sciez'
      get 'information/about'
      devise_for :accounts
      resources :posts
      resources :properties do
        collection do
          get :get_filterd
        end
      end

      get "/blog" => "posts#latest", as: :blog

      #admin routes
      get "/accounts" => 'admin#accounts', as: :accounts

      get "/dashboard" => 'dashboard#index', as: :dashboard
      get "/profile/:id" => 'dashboard#profile', as: :profile

      root to: 'public#main'
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  end
end
