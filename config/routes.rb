Rails.application.routes.draw do
  root 'welcome#index'

  get  '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'
  get 'welcome/index'

  resources :listeners do
    resources :checkins
  end

  resources :users
end
