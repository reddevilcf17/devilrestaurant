Rails.application.routes.draw do
  get 'comments/create'

  resources :food_items do
  	resources :comments
  end

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'cart', to: 'orders#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'menu', to: 'home#menu'

  get 'contact_us', to: 'home#contact_us'
  get 'search', to: 'home#search'

  get 'checkout', to: 'orders#checkout'
  get 'apply_coupon', to: 'orders#apply_coupon'
  get 'complete_order', to: 'orders#complete_order'

  resources :order_items, only: [:create, :update, :destroy]
end
