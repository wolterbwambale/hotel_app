Rails.application.routes.draw do
  resources :mealplans
  resources :nationalities
  resources :regions
  resources :room_features
  resources :room_masters
  resources :roomtypes

  get "up" => "rails/health#show", as: :rails_health_check

  root "room_masters#index"
end
