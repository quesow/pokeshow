class PokemonsController < ApplicationController
  def index
  end

  def search
  end

  def apicall
    require 'open-uri'
    @pokemon = JSON.load(open("http://pokeapi.co/api/v2/pokemon/" + rand(1..151).to_s))
    respond_to do |format|
      format.html {
        render json: {
          content: (render_to_string partial: '/pokemons/pokedata', layout: false )
        }
      }
      format.js {}
      format.json {}
    end
  end
end
