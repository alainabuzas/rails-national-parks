Rails.application.routes.draw do
  get 'home/index'

  get 'home/about'

  root 'home#index'

  get 'parks/index'

  get 'parks/new'

  get 'parks/edit'

  get 'parks/show'

  # post 'parks/create'

  # put 'parks/update'

  delete 'parks/destroy'

  resources :parks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
