Rails.application.routes.draw do
  #resources :products
  get 'product/index'

  get 'product/new'

  post 'product/new', to: 'product#create', as: 'product_create'

  get '/product/:id/edit', to: 'product#edit', as: 'product_edit'

  post '/product/:id/edit', to: 'product#update', as: 'product_update'

  root 'product#index'

  get "*path" => redirect("/")
  post "*path" => redirect("/")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
