Rails.application.routes.draw do

  get '/signup', to: "drivers#new"

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"

  delete '/logout', to: "sessions#destroy"

  get '/', to: "welcomes#index"

  resources :drivers
  resources :races

  resources :cars do
    resources :races
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
