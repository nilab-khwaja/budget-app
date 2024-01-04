Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "category#index"
  resources :categorys do
    resources :transactions
  end
end
