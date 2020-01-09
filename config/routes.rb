Rails.application.routes.draw do
  resources :songs, only: [:index, :new, :show, :edit, :update, :create]
  resources :genres, only:[:index, :new, :show, :edit, :update, :create]
  resources :artists, only:[:index, :new, :show, :edit, :update, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
