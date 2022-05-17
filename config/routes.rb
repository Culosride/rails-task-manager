Rails.application.routes.draw do
  get "/", to: "tasks#index", as: :tasks
  get "tasks/new", to: "tasks#new"
  get "tasks/:id", to: "tasks#show", as: :task
  post "tasks", to: "tasks#create"
end
