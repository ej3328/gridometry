Rails.application.routes.draw do
  get 'sites/index'
  get 'sites/new'


  root 'sites#index'

  resources :sites
end
