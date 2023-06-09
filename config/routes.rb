Rails.application.routes.draw do
  resources :movies, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :customers, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :rentals, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  root "movies#index"
end
