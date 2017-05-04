Rails.application.routes.draw do
  # get '/welcome', to: 'welcome#index', as: '/index'
  root 'welcome#index'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/users' => 'users#show'
  get '/users/:id' => 'users#show'


end
