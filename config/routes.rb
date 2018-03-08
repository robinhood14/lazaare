Rails.application.routes.draw do

  root 'items#index'


  get 'carts/:id(.:format)', to: 'carts#show'

  get 'add/:id(.:format)', to: 'carts#update', as: :add_to_cart

  get 'remove/:id(.:format)', to: 'carts#remove', as: :rm_from_cart

  delete 'delete/:id(.:format)', to: 'carts#delete', as: :dl_from_cart


  #get '/index' => 'items#index'

  #get '/user' => 'devise/registrations#edit'

  #get 'items/index'

  #get 'items/show'

get 'orders/payment'

post 'carts/:id(.:format)', to: "orders#payment", as: "paiement" #pour faire fonctionner stripe


devise_for :users



resources :items
resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  
end
