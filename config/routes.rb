Rails.application.routes.draw do
  get 'security_token/index'
  devise_for :users
  root 'documents#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/:id', to:'users#show', as:'user'

  resources :documents, only:%i(new create index show destroy)
  
end
