Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  
  resources :patients

  root  'doctors#patients'

  get 'doctors/patients', to: 'doctors#patients', as: 'doctors_patients'
  get 'doctors/chart', to: 'doctors#chart', as: 'doctors_chart'
end
