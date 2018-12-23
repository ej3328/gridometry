Rails.application.routes.draw do
  root 'sites#index'


  get 'sites/index'
  get 'sites/lashdolls'


  resources :sites, only: [:index, :new]
  resources :essential, only: [:new, :create]
  resources :standard, only: [:new, :create]
  resources :premium, only: [:new, :create]


end