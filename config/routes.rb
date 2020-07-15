Rails.application.routes.draw do
  resources :store_cars
  resources :cars
  resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
