Rails.application.routes.draw do
  get 'recipes/index'

	resources :recipes
	root 'recipes#index'
end
    