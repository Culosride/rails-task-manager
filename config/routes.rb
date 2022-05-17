Rails.application.routes.draw do
  root to: 'tasks#index'
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  get "tasks/:id", to: "tasks#show", as: :task
end
