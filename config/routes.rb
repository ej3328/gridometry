Rails.application.routes.draw do
  root 'sites#index'


  get 'sites/index'
  get 'sites/girlyaas'
  get 'sites/vacationhomes'
  get 'sites/bodyblitz'
  get 'sites/fantasyweddingcakes'
  get 'sites/portfolio'
  get 'sites/thoseguyspies'
  get 'sites/ruthiescakes'
  

  
  resources :sites 
  resources :essential, only: [:new, :create]
  resources :standard, only: [:new, :create]
  resources :premium, only: [:new, :create]


end