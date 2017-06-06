Rails.application.routes.draw do
  # get 'rangers/index'

  # get 'rangers/show'

  # get 'rangers/new'

  # get 'rangers/edit'

  get 'home/index'

  get 'home/about'

  root 'home#index'

  # get 'parks/index'

  # get 'parks/new'

  # get 'parks/edit'

  # get 'parks/show'

  # post 'parks/create'

  # put 'parks/update'

  # delete 'parks/destroy'

  resources :parks

  resources :rangers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
