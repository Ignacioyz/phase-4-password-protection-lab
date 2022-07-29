Rails.application.routes.draw do
  # line 4 is the user's request, and then the server's response 
  # then in the controller we define how the response performs "" relates to action in controller
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"

  resources :sessions, only: [:delete] 
  resources :users 
end
