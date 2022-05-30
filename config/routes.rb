Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'places', to: 'places#index'
  get 'places/new', to: 'places#new', as: :new_places
  post 'places', to: 'places#create'
end
