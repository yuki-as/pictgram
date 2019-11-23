Rails.application.routes.draw do
  get 'users/new'
  get 'pages/help'
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'users/new'
  get 'pages/help'
  get 'pages/index'
  root 'pages#index'
  
  resources :users
end