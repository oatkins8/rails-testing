Rails.application.routes.draw do
  root to: "products#index"
  get 'products/index'
  devise_for :users
  resources :products, only: [:index, :show, :new, :create] # remember only to include the routes you need

  # And remove the generated route `products/index`
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
