Rails.application.routes.draw do
  resources :movies, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :rentals
  resources :customers

  root "movies#index"
end
