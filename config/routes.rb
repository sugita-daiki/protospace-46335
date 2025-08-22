Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end

  resources :users, only: :show

  get "up" => "rails/health#show", as: :rails_health_check

  
  
end
