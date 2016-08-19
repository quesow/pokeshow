# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "turbolinks:load", ->
  console.log('button clicked');
  $("#search_pokemon").on "click", ->
    $.ajax(url: "http://pokeapi.co/api/v2/pokemon/1").done (html) ->
      console.log(html);
      $("#result").html(html);
      console.log('egueriwey');
