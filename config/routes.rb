Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "categorys#index"
  resources :categorys, only: [:show, :index, :new, :create] do
    resources :transactions, only: [:new, :create]
  end
end
