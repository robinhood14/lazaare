Rails.application.routes.draw do

  get 'orders/create'

  get 'orders/delete'

  get 'orders/payment'

  get 'carts/show'

  get 'carts/update'

  get 'carts/delete'

  #get '/index' => 'items#index'

  #get '/user' => 'devise/registrations#edit'

  #get 'items/index'

  #get 'items/show'

  
  devise_for :users

  root 'items#index'

	resources :items
	resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  
end
