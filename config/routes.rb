Rails.application.routes.draw do
  resources :maps
  resources :words
  resources :coordinates
  resources :users 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#index'

  post '/login', to: 'auth#login'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'

  get '/common', to: 'words#common'
  post '/savemap', to: 'maps#create'

end  