Rails.application.routes.draw do
  root 'welcome#index'
  get '/users/new' => 'users#new', as: 'signup'
  post '/users/new' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'
  patch '/users/:id' => 'users#update'
  get '/signin' => 'sessions#new', as: 'login'
  post '/signin' => 'sessions#create'
  delete '/users/:id' => 'sessions#destroy'

end
