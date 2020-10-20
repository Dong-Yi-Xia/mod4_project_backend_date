Rails.application.routes.draw do

    get '/users', to: 'users#index'
    get '/characters', to: 'characters#index'
    get '/appointments', to: 'appointments#index'
    get '/outfits', to: 'outfits#index'
  
    patch '/characters/:id', to: 'characters#update'
    post '/appointments', to: 'appointments#create'


    post "/users/login", to: "users#login"
    post "/users", to: "users#create"
    # get "/users/:id", to: "users#show"
    get "/users/keep_logged_in", to: "users#keep_logged_in"

end
