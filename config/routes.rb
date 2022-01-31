Rails.application.routes.draw do
  
  

 
  resources :products
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  get '/about_us' => 'about_us#show'
  
  resources :mixtapes

 
end
