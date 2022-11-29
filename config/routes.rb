Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get/activities
  # resources

  get '/activities', to: 'activity#index'

  get '/activities/:id', to: 'activity#show'

  delete '/activities/:id', to: 'activity#delete'
  
end
