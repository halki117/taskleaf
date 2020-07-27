Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'session#create'

  namespace :admin do
    resources :users # p156 now!!!
  end
  root to: 'tasks#index'
  resources :tasks
end
