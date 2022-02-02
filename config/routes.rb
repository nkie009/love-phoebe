Rails.application.routes.draw do
  
  
  post '/cart' => 'cart#add_qty', as: 'add_qty'
  post '/cart/update_qty/:product_id'  => 'cart#update_qty', as: 'update_cart_qty'
  
  post '/cart/add/:product_id' => 'cart#add', as: 'add_item'
  
  delete '/cart/destroy/:product_id'  => 'cart#destroy', as: 'delete_line_item'

  resources :cart, except: [:create]

  root to: 'home#show'
  
  resources :products
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy, :index]


 


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  get '/about_us' => 'about_us#show'
  get '/contact' => 'contact#show'

 
end
