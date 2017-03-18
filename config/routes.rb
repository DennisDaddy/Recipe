Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/index'

  get 'comments/show'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  devise_for :users
  root 'posts#index'

  resources :posts do
  	resources :comments
  end
end
