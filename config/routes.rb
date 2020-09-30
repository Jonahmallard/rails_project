Rails.application.routes.draw do

  get '/signup', to: "drivers#new"
  get '/', to: "application#welcome"

  resources :drivers
  resources :races

  resources :cars do
    resources :races
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
