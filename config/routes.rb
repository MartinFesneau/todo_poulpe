Rails.application.routes.draw do
  get 'tasks/new'
  get 'tasks/create'
  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/edit'
  get 'tasks/update'
  get 'tasks/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
