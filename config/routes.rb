Rails.application.routes.draw do
  get 'ingredients/index'
  get 'ingredients/show'
  get 'ingredients/new'
  get 'ingredients/create'
  get 'ingredients/index'
  get 'ingredients/new'
  get 'ingredients/create'
  get 'quantities/new'
  get 'quantities/create'
  # get 'ingredient/index'
  # get 'ingredient/new'
  # get 'ingredient/create'
  # get 'ingredient/set_ingredient'
  # get 'ingredient/params_ingredient'
  root to: 'recipes#index'
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resources :ingreients, only: [:new, :create]
  end
  resources :quantities, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
