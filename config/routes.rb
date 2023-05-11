Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  get 'about' => 'pages#about'  
  get 'index' => 'pages#index'
  root to: 'pages#index'
end
