Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:index, :new, :create]


  get 'login', to: 'sessions#new', as: :login
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout
  #
  # get '/appearances', to: 'appearances#index', as :appearances
  # get '/appearances/new', to: 'appearances#new', as: :new_appearance
  # post '/apperances', to: 'appearances#create'

end
