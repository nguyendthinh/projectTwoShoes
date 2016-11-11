Rails.application.routes.draw do
  root 'brands#index'

  resources :brands
  resources :sneakers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
