# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(document).ready ->  
    $('#pins').imagesLoaded().always ->
      $('#pins').isotope(
        
        itemSelector: '.box'
        isFitWidth: true)

    $(".button").on("click", ->
      $('#pins').isotope(
        filter:"[data-category*='"+$(this).attr('data-filter')+"']"
      )
    )


      



