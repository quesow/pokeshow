class PokemonsController < ApplicationController

  def index
    @num = (params.has_key?(:id)) ? params[:id].to_i : 1
  end

  def apicall
    require 'open-uri'
    @get    = (params.has_key?(:id)) ? params[:id].to_s : rand(1..721).to_s
    @render = (params.has_key?(:id)) ? '/pokemons/pokeitem' : '/pokemons/pokedata'
    @pokemon = JSON.load(open("http://pokeapi.co/api/v2/pokemon/" + @get))
    respond_to do |format|
      format.html {
        render json: {
          content: (render_to_string partial: @render, layout: false )
        }
      }
      format.js {}
      format.json {}
    end
  end
end
