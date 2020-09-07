Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
  resources :users
  resources :characters

  get '/signin' => "sessions#new"
  post '/signin' => "sessions#create"
  get '/sessions/home' => "sessions#home"
  delete '/signout' => "sessions#sign_out"

  get '/characters/new' => "characters#new"
  post '/characters/new' => "characters#create"
  delete '/erase' => "characters#erase"

  get '/home/index' => "home#index"

  match '/auth/:provider/callback', to: 'sessions#created', via: [:get, :post]

  get '/profile' => "users#show"

end
