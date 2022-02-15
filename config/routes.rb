Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # List all tasks
  get 'tasks', to: 'tasks#index'

  # Add a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # Show details of task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Edit a task (mark as completed / update title & details)
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # remove/ delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
