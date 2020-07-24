Rails.application.routes.draw do
  namespace :admin do
    resources :users # p156 now!!!
  end
  root to: 'tasks#index'
  resources :tasks
end
