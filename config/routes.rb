Rails.application.routes.draw do
  root to: 'product#index'
  get '/categories', to: 'category#index', as: 'categories'
  resources :product
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
