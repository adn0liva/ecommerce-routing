Rails.application.routes.draw do
  resources :carts, only: [:index, :create] do
    collection do
      post 'new_cart_user' 
    end
  end
end
