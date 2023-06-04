Rails.application.routes.draw do
  resources :movies
  resources :customers
  root "movies#index"
end
