Rails.application.routes.draw do
  #resources :products
  get 'product/index'

  get 'product/new'

  post 'product/create'

  get '/product/:id/edit', to: 'product#edit', as: 'product_edit'

  post '/product/:id/update', to: 'product#update', as: 'product_update'

  root 'product#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
