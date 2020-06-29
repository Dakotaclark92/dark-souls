Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
  resources :users
  
  get '/users/new' => "users#new"
  post '/users/new' => "users#create"

  get '/signin' => "sessions#new"
  post '/signin' => "sessions#create"
  get '/sessions/home' => "sessions#home"
  delete '/signout' => "sessions#sign_out"

  get '/characters/new' => "characters#new"
  post '/characters/new' => "characters#create"

  get '/home/index' => "home#index"



end
