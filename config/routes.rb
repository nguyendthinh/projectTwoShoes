Rails.application.routes.draw do
  get 'sneaker/index'

  get 'sneaker/show'

  get 'sneaker/edit'

  get 'sneaker/new'

  root 'brands#index'

  resources :brands
  resources :sneakers
  resources :users
  resource :session
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
