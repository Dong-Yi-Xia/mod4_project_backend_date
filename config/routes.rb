Rails.application.routes.draw do

    get '/users', to: 'users#index'
    get '/characters', to: 'characters#index'
    get '/appointments', to: 'appointments#index'
    get '/outfits', to: 'outfits#index'
  
end
