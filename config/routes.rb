Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'products#index'
  resources :products
  
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'cart', to: 'pages#cart'
end
