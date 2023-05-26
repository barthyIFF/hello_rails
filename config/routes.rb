Rails.application.routes.draw do
  devise_for :adms
  resources :atividades
  #get 'users/index'
  #get 'users/show'
  #get 'users/new'
  #get 'users/edit'  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'about' => 'pages#about'
  get 'index' => 'pages#index'
  get 'newUser' => 'pages#newUser'
  root to: 'pages#about'
  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
  resources :users
end
