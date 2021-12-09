Rails.application.routes.draw do
  resources :carts, only: [:index, :create] do
    collection do
      match 'new_cart_user', via: [:get,:post]
    end
  end

  root 'carts#index'
end
