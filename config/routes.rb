Rails.application.routes.draw do
  get 'sessions/new'
  namespace :admin do
    resources :users # p156 now!!!
  end
  root to: 'tasks#index'
  resources :tasks
end
