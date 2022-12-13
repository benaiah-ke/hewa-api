Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  patch '/account-type', to: 'users#update'
  get '/me', to: 'users#show'

  # Defines the root path route ("/")
  # root "articles#index"
end
