Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  
  resources :patients
  
  get 'doctors/patients', to: 'doctors#patients'
  get 'doctors/chart', to: 'doctors#chart'
  
  root 'patients#index'
end
