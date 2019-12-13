Rails.application.routes.draw do
  
  resources :songs
   #[:edit, :show, :new, :update, :index, :create]
  get 'songs/show'
  

  resources :genres
  #, only: [:edit, :new, :show, :update, :index, :create]
  get '/genres/show'


  resources :artists
  #, only: [:edit, :new, :show, :update, :index,:create]
  #get '/artists/show'
  get '/artists/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
