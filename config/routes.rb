Rails.application.routes.draw do
  get 'welcome/index'

  resources :listeners do
    resources :checkins
  end

  root 'welcome#index'
end
