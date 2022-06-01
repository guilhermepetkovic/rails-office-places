Rails.application.routes.draw do
  devise_for :users
  root to: 'places#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'places', to: 'places#index'
  get 'places/new', to: 'places#new', as: :new_places
  post 'places', to: 'places#create'
  get 'places/:id', to: 'places#show', as: :show
end
