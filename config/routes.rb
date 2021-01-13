Rails.application.routes.draw do
  devise_for :users
  root to: 'tasks#index'

  resources :tasks do 
    resources :comments, only: [:new, :create]
  end
  resources :comments, only: [:destroy]
  patch "change_task_status", to: "tasks#change_task_status"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
