# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "turbolinks:load", ->
  $("#search_pokemon").on "submit",(e) ->
    e.preventDefault();
    $( "body" ).append( "<div id='wait' style='background:blue;position: fixed;width: 100%;height: 100%;left: 0;top: 0;z-index: 5000;opacity: 0.6;'>
                          <div style='margin-top:50%' class='progress'>
                              <div class='indeterminate'></div>
                          </div>
                          <h5 style='color:white;' class='center-align'>Wait for a few seconds...</h5>
                         </div>" );
    $.ajax(url: "/pokemons/apicall")
      .done () ->
        $('#wait').detach();
        console.log("done");
      .success (html) ->
        console.log("success");
        $("#result").html(jQuery.parseJSON(html)['content']);
