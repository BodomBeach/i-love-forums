Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  get 'users/new', to: 'users#new', as: 'new'
  post 'users/new', to: 'users#create', as: 'users'
  get 'users/error', to: 'users#error', as: 'error'
  get 'users/:name', to: 'users#show', as: 'show'
end
