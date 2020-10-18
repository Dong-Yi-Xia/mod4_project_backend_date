Rails.application.routes.draw do

    # get '/characters', to: 'characters#index'
    resources :characters
  
end
