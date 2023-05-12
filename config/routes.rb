Rails.application.routes.draw do

  root 'application#index'
  resources :restaurants do
    resources :items
  end
  resources :dishes do
    resources :items, only: [:index]
  end

  resources :items do
    resources :item_restaurants
  end
  


  #get 'restaurants/index'
  #get 'restaurants/show'
  #get 'restaurants/new'
  #get 'restaurants/create'
  #get 'restaurants/edit'
  #get 'restaurants/update'
  #get 'restaurants/destroy'
  #get 'items/index'
  #get 'items/show'
  #get 'items/new'
  #get 'items/create'
  #get 'items/edit'
  #get 'items/update'
  #get 'items/destroy'
  #get 'dishes/index'
  #get 'dishes/show'
  #get 'dishes/new'
  #get 'dishes/create'
  #get 'dishes/edit'
  #get 'dishes/update'
  #get 'dishes/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
