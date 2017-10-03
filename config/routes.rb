Rails.application.routes.draw do
  root 'residents#index'

  get 'residents/show'

  get 'residents/create'

  get 'residents/new'

  get 'residents/destroy'

  get 'residents/edit'

  get 'residents/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
