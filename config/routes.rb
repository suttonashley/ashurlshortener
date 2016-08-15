Rails.application.routes.draw do
  get 'urls/new' 

  post 'urls/create' => 'url#create'

  get 'urls/index'

  get 'urls/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
