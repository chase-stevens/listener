Rails.application.routes.draw do
  root    'welcome#index'
  get     '/signup',  to: 'users#new'
  post    '/signup',  to: 'users#create'
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'


  resources :listeners do
    resources :checkins
  end

  get     '/:uuid', to: 'listeners#check_in'

  resources :users
end
