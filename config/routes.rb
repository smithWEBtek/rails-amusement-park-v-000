Rails.application.routes.draw do
  root "static_pages#home"
  get "/signin", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
	delete "/signout", to: "sessions#destroy"
	
  post "/rides/create", to: "rides#create"
  resources :attractions
  resources :users
end