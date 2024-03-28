Rails.application.routes.draw do
  root "home#index"

  #get "/genres",      to: "genres#index"
  #get "/genres/:id",  to: "genres#show"

  #get '/directors',     to: "directors#index"
  #get '/directors/:id', to: "directors#show"

  #get '/movies',      to: "movies#index"
  #get "/movies/:id",  to: "movies#show"
  resources :movies, :directors, :genres
  

end
