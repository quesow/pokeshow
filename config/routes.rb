Rails.application.routes.draw do
  get 'pokemons/index'
  get 'pokemons/search'
  get 'pokemons/apicall'

  root 'pokemons#search'
end
