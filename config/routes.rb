Rails.application.routes.draw do
  get 'users/new'
  get 'welcome/index'

  resources :listeners do
    resources :checkins
  end

  root 'welcome#index'
end
