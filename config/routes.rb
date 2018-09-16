Rails.application.routes.draw do
  get 'sites/index'
  get 'sites/new'
  get 'sites/lashdolls'


  root 'sites#index'

  resources :sites

  get 'charges/standard'
  get 'charges/premium'

  resources :charges, only: [:new, :create]
end
