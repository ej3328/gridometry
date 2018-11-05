Rails.application.routes.draw do
  root 'sites#index'


  get 'sites/index'
  get 'sites/cherylstylesv1'
  get 'sites/cherylstylesv2'


  resources :sites
  resources :essential, only: [:new, :create]
  resources :standard, only: [:new, :create]
  resources :premium, only: [:new, :create]


end
