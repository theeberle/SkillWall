Rails.application.routes.draw do
  devise_for :users
  root to: "skills#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :skills, only: [:index]

  resources :skills do
    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :profiles, only: [ :show ]
end
