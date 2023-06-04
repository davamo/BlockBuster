Rails.application.routes.draw do
  resources :movies
  resources :rentals
  resources :customers

  root "movies#index"
end
