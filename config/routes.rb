Rails.application.routes.draw do
  root to: "prototypes#index"
    resources :items,only: [:index]
end
