Rails.application.routes.draw do

  # residents routes
  root 'residents#index'
  
  get 'residents/new' => 'residents#new'

  get 'residents/:id' => 'residents#show', as: :resident

  post 'residents' => 'residents#create'

  delete 'residents/:id' => 'residents#destroy'

  get 'residents/:id/edit' => 'residents#edit'

  put 'residents/:id' => 'residents#update'

  # rooms routes

  get 'rooms' => 'rooms#index'

  get 'rooms/show'

  get 'rooms/create'

  get 'rooms/new'

  get 'rooms/destroy'

  get 'rooms/edit'

  get 'rooms/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
