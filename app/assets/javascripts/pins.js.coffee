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
      console.log(this)
      if $(this).attr('data-filter') == ""
        $("#pins").isotope(filter:'*');
      else
        $('#pins').isotope(filter:"[data-filter*=\""+$(this).attr('data-filter')+"\"]")
    )



    


