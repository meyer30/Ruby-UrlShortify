Rails.application.routes.draw do
  get '/decode', to: 'decode#show'
  post '/encode', to: 'encode#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
