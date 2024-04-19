Rails.application.routes.draw do
  devise_for :users
  
  resources :patients
  
  get 'doctors/patients', to: 'doctors#patients'
  get 'doctors/chart', to: 'doctors#chart'
  
  root 'patients#index'
end
