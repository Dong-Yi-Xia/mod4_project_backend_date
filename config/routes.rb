Rails.application.routes.draw do
    
    
    get '/characters', to: 'characters#index'
    patch '/characters/:id', to: 'characters#update'
    
    
    get '/appointments', to: 'appointments#index'
    post '/appointments', to: 'appointments#create'
    delete '/appointments/:id', to: 'appointments#destroy'
    
    
    get '/outfits', to: 'outfits#index'
    post '/outfits', to: 'outfits#create'
    delete '/outfits/:id', to: 'outfits#destroy'
    
    
    get '/users', to: 'users#index'    
    get "/users/:id", to: "users#show"
    post "/users/login", to: "users#login"
    post "/users", to: "users#create"
    get "/users/keep_logged_in", to: "users#keep_logged_in"

end
