Rails.application.routes.draw do
  resources :movies do
    member do
      post 'rent'
      post 'return'
    end
  end
  root "movies#index"
end
