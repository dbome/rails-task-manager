Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Create
  get 'tasks/new', to: 'task#new'
  post 'tasks', to: 'task#create'

  # Read
  get 'tasks', to: 'task#index'
  get 'tasks/:id', to: 'task#show', as: :task

  # Delete
  delete 'tasks/:id', to: 'task#destroy'

  # Update
  get 'tasks/:id/edit', to: 'task#edit', as: :task_edit
  patch 'tasks/:id', to: 'task#update'

end
