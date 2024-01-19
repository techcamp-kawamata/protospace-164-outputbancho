Rails.application.routes.draw do
  root to: "prototypes#index"
    resources :users
    resources :prototypes, only: [:index, :new, :create]
    resources :comments
end
