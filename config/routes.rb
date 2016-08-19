Rails.application.routes.draw do
  get 'pokemons/index'

  get 'pokemons/search'

  root 'pokemons#search'
end
