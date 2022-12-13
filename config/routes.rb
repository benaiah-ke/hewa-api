Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  get '/me', to: 'users#show'
  delete '/logout', to: 'sessions#destroy'

  patch '/account-type', to: 'users#update'
  
  post '/emmitters', to: 'emmitters#create'
  patch '/emmiters', to: 'emmitters#update'

  post '/offsetters', to: 'offsetters#create'
  get '/offsetters/:id', to: 'offsetters#show'

  post '/carbon-projects', to: 'carbon_projects#create'
  get '/carbon-projects', to: 'carbon_projects#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
