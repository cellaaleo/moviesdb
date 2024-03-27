Rails.application.routes.draw do
  root "genres#index"
  
  get 'movies/index'
  get 'directors/index'
  get "/genres", to: "genres#index"
end
