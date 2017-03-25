Rails.application.routes.draw do
  get 'schedules/index'

  get 'schedules/show'

  get 'schedules/new'

  get 'schedules/create'

  get 'schedules/edit'

  get 'schedules/update'

  get 'schedules/destroy'

  root to: "welcome#index"

  get 'welcome/about'
  get 'welcome/index'

  devise_for :users
  resources :users

  resources :workers, only: [:new, :create]
end
