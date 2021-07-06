Rails.application.routes.draw do
  devise_for :users
  root 'totals#index'
  resources :users, only: [:edit, :update]
  resources :totals, only: [:index, :create, :new]
end
