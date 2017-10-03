Rails.application.routes.draw do
  root 'residents#index'
  
  get 'residents/new' => 'residents#new'

  get 'residents/:id' => 'residents#show', as: :resident

  post 'residents' => 'residents#create'

  get 'residents/destroy'

  get 'residents/edit'

  get 'residents/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
