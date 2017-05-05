Rails.application.routes.draw do
  root 'welcome#index'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'

end
