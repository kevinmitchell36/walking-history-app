Rails.application.routes.draw do
  


  get '/events' => 'events#index'
  get '/events/calculated' => 'events#calculated'
  get 'events/visited' => 'events#visited'
  get '/events/:id' => 'events#show'
  

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
  get '/locations/reset' => 'locations#reset'
  get '/locations/:id' => 'locations#show'

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  patch "/location_users/:id" => "location_users#update"

end
