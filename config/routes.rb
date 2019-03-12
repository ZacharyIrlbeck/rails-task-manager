Rails.application.routes.draw do
  resources :tasks
  # get 'tasks', to: 'tasks#index'
  # get 'tasks/new', to: 'tasks#new'
  # post 'tasks', to: 'tasks#create'
  get 'tasks/:id/toggle_done', to: 'tasks#toggle_done'
  # get 'tasks/:id/edit', to: 'tasks#edit'
  # get 'tasks/:id', to: 'tasks#show', as: 'task'
  # patch 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#delete'
end
