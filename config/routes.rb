Rails.application.routes.draw do
  get 'songs/new'

  get 'songs/create'

  get 'songs/edit'

  get 'songs/update'

  get 'songs/destroy'

  get 'songs/index'

  get 'songs/show'

  get 'genres/new'

  get 'genres/create'

  get 'genres/edit'

  get 'genres/update'

  get 'genres/destroy'

  get 'genres/index'

  get 'genres/show'

  get 'artists/create'

  get 'artists/update'

  get 'artists/show'

  # get '/songs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs, :artists, :genres, only: [:create, :show, :update, :new, :edit, :index]
end
