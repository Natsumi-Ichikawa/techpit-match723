Rails.application.routes.draw do
  devise_for :users
  root "top#index"
  # indexを追加する
  resources :users, only: %i(index show)
  resources :reactions, only: %i(create)
  resources :matching, only: %i(index)
end