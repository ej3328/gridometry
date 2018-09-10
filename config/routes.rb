Rails.application.routes.draw do
  get 'sites/index'
  get 'sites/new'
  get 'sites/lashdolls'


  root 'sites#index'

  resources :sites
end
