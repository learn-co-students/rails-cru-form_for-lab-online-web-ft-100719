Rails.application.routes.draw do
  resources :artists, only: [:new, :create, :edit, :update, :show]
  resources :genres, only: [:new, :create, :edit, :update, :show]
  resources :songs, only: [:index, :new, :create, :edit, :update, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
