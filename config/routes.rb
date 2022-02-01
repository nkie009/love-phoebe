Rails.application.routes.draw do
  
  root to: 'home#show'
  
  resources :products
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy, :index]
  resources :mixtapes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  get '/about_us' => 'about_us#show'
  get '/contact' => 'contact#show'

 
end
