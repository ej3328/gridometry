Rails.application.routes.draw do
  get 'sites/index'


  root 'sites#index'

  resources :sites
end
