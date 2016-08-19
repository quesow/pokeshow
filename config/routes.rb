Rails.application.routes.draw do
  get 'pokemons/index'

  get 'pokemons/show'

  root 'pokemons#index'
end
