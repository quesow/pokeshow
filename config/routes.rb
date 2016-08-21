Rails.application.routes.draw do
  get 'pokemons/index'
  get 'pokemons/index/:id' => 'pokemons#index'
  get 'pokemons/search'
  get 'pokemons/apicall'
  get 'pokemons/apicall/:id' => 'pokemons#apicall'

  root 'pokemons#search'
end
