Rails.application.routes.draw do
  root to: "welcome#index"

  get 'welcome/about'
  get 'welcome/index'

  devise_for :users
  resources :users

  resources :workers, only: [:new, :create]
end
