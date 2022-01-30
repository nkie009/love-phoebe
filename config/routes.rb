Rails.application.routes.draw do
  
  resources :products
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy, :index]


  get '/about_us' => 'about_us#show'
  
  
 
end
