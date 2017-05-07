Rails.application.routes.draw do
  


  get '/events' => 'events#index'
  get '/events/calculated' => 'events#calculated'
  get '/events/:id' => 'events#show'
  get '/events/:id/edit' => 'events#edit'
  patch "/events/:id" => "events#update"

  namespace :api do
    namespace :v1 do
      get 'locations' => 'locations#index'
      get 'locations/:id' => 'locations#show'
      patch 'locations' => 'locations#update'

      get 'events' => 'events#index'
      get 'events/:id' => 'events#show'
    end
  end

  get '/' => 'locations#index'
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

  patch "/location_users/:id" => "location_users#update"

end
