Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'
  resources :users, only: [:index, :new]
  post '/users', to: 'users#create'
  get '/thanks', to: 'users#thanks'
end
