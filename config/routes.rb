Rails.application.routes.draw do

  root to: "welcome#index"

  get 'about' => 'welcome#about'

  devise_for :users
  resources :users
  resources :schedules
  resources :workers, only: [:new, :create]
end
