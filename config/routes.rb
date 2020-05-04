Rails.application.routes.draw do
  resources :reviews
  resources :promotions
  resources :brands
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'brands#index', as: 'store'
  post '/reviews/:id/edit', to: 'reviews#update'
  namespace :admin_user do
    root to: 'brands#index'
  end
end
