Rails.application.routes.draw do
  root 'brands#index'


  resources :brands, only: [:new, :create, :new, :create, :edit, :update, :destroy, :show]
  resources :sneakers, only: [:new, :create, :edit, :update, :destroy, :show]
  resources :users
  resource :session
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
