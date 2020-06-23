Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
  resources :users
  
  get '/users/new' => "user#new"
  post '/users/new' => "user#create"
  delete '/signout' => "sessions#sign_out"




end
