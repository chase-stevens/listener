Rails.application.routes.draw do
  get 'welcome/index'

  resources :listeners
  
  root 'welcome#index'
end
