Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :players
  resources :statistics, only: [:show,:index,:new,:create,:edit,:update,:destroy]
  resources :teams, only: [:show,:index,:new,:create,:edit,:update, :destroy]
  resources :games, only: [:show,:index,:new,:create,:edit,:update, :destroy]
  resources :comments#, only: [:create, :show, :new]

  get '/analytics', to: 'players#analytics'
  root 'players#home'

end
