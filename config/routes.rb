# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'events#index'

  get 'invite', to: 'attendances#invite'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  post 'attend', to: 'attendances#create'

  resources :users
  resources :sessions, only: %i[new create destroy]
  resources :events
  resources :attendances
end
