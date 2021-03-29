Rails.application.routes.draw do
  resources :maps
  resources :words
  resources :coordinates
  resources :users 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/login', to: 'auth#login'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'

  get '/common', to: 'words#common'
  post '/savemap', to: 'maps#create'

  get '/languages', to: 'languages#index'
  get '/languages/:id', to: 'languages#show'

  get '/locations', to: 'locations#index'
  get '/locations/:id', to: 'locations#show'


end  