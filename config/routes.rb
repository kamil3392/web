Rails.application.routes.draw do
  
  resources :projects do
    resources :tickets
  end
  
  resources :projects
  resources :sessions, only:[:new,:create,:destroy]
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  

  get 'page/index'
  root 'page#index'
end
