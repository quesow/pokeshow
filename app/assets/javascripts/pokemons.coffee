# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "turbolinks:load", ->
  $("#search_pokemon").on "submit",(e) ->
    e.preventDefault();
    console.log('button clicked');
    $.ajax(url: "/pokemons/apicall").done (html) ->
      $("#result").html(jQuery.parseJSON(html)['content']);
