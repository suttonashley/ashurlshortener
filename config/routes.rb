Rails.application.routes.draw do

resources :urls

  root 'urls#new'

  post 'urls/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
