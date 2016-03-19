Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  get '/pokemon/new', to:'pokemons#new'
  post 'pokemons', to: 'pokemons#create'  
  patch '/capture', to: 'pokemons#capture', as: 'capture'
  patch '/damage', to: 'pokemons#damage', as: 'damage'  
end
