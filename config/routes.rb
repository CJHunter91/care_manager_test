Rails.application.routes.draw do

  # residents routes
  root 'residents#index'
  
  get 'residents/new' => 'residents#new'

  get 'residents/:id' => 'residents#show', as: :resident

  post 'residents' => 'residents#create'

  delete 'residents/:id' => 'residents#destroy'

  get 'residents/:id/edit' => 'residents#edit', as: :resident_edit

  put 'residents/:id' => 'residents#update'

  # rooms routes

  get 'rooms' => 'rooms#index'

  get 'rooms/new' => 'rooms#new'

  get 'rooms/:id' => 'rooms#show', as: :room

  post 'rooms' => 'rooms#create'

  delete 'rooms/:id' => 'rooms#destroy'

  get 'rooms/:id/edit' => 'rooms#edit', as: :room_edit

  put 'rooms/:id' => 'rooms#update'
end
