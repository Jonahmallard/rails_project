Rails.application.routes.draw do

  get '/', to: "welcomes#index"

  get '/signup', to: "drivers#new"

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"

  delete '/logout', to: "sessions#destroy"

  resources :drivers, only: [:new, :create, :show]
  resources :races

  get '/auth/:provider/callback', to: "sessions#omniauth"

  resources :cars, only: [:new, :create, :show, :index] do
    resources :races
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
