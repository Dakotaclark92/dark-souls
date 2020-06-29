Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
  resources :users
  
  get '/users/new' => "users#new"
  post '/users/new' => "users#create"

  get '/sessions/new' => "sessions#new"
  post '/sessions/new' => "sessions#create"
  delete '/signout' => "sessions#sign_out"


end
