Rails.application.routes.draw do

resources :urls

  root 'urls#new'

  post 'urls/create'

  get '/:id' => 'urls#show'

  get '/:short' => 'urls#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
