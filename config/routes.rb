Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "cars#index"

  resources :cars, only: [:index, :show] do
    resources :reviews, only: [:create]
    # Use a singular resource since each car can be favourited only once.
    resource :favourite, only: [:create, :destroy]
  end

  # A separate index view to list all favourites (i.e., the user's garage)
  resources :favourites, only: [:index]
end
