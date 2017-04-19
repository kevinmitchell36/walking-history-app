Rails.application.routes.draw do
  
  get '/locations' => 'locations#index'
  get '/locations/new' => 'locations#new'
  post '/locations/' => 'locations#create'
  get '/locations/:id' => 'locations#show'
  post '/locations/:id/edit' => 'locations#edit'
  patch '/locations/:id' => 'locations#update'
  delete '/locations/:id' => 'locations#destroy'

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"





end
