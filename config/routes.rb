Rails.application.routes.draw do
  get 'welcome/index'

  resources :snitches
  
  root 'welcome#index'
end
