Rails.application.routes.draw do
  root to: "coffees#index"
  resources :coffees
  resources :categories, only: [:index, :show]

end
