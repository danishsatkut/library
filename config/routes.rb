Rails.application.routes.draw do
  root to: "books#index"

  resources :students
  resources :books
  resources :issues, only: [:new, :create, :destroy, :index]
end
