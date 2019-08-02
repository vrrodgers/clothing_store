Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'products#index'
  resources :products
  post '/add_to_cart/:product_id' => 'cart#add_to_cart', :as => 'add_to_cart'

  
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'cart', to: 'pages#cart'
end
