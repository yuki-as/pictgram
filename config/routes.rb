Rails.application.routes.draw do
  get 'sessions/new'

  get 'pages/help'
  root 'pages#index'
  
  resources :users
  resources :topics do
    resources :comments
  end
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end