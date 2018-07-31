Rails.application.routes.draw do
  get 'users_controller/new'
  get '/', to: 'static_pages#home'

  get '/new', to: 'users_controller#new'
  post '/new', to: 'users_controller#create'

  get '/users/:id', to: 'users_controller#show'

  get "/erreur", to: 'users_controller#erreur'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
