Rails.application.routes.draw do
  get 'artists/create'

  get 'artists/update'

  get 'artists/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs, :artists, :genres, only: [:create, :show, :update, :new]
end
