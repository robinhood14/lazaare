Rails.application.routes.draw do


  get 'carts', to: 'carts#show'


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
