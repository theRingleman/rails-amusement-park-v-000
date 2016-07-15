Rails.application.routes.draw do
  root "static#home"
  resources :users
  resources :attractions
  resources :rides
  get "/signin" => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/signout' => 'sessions#destroy'
end
