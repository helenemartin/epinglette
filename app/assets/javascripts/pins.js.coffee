# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(document).ready ->  
    $('.pagination').hide() 
    $('#pins').imagesLoaded().always ->
      $('#pins').isotope(
        itemSelector: '.box'
        isFitWidth: true)

    $(".button").on("click", ->
      if $(this).attr('data-filter') == ""
        $("#pins").isotope(filter:'*');
      else
        $('#pins').isotope(filter:"[data-filter*=\""+$(this).attr('data-filter')+"\"]")
    )

    if $('#pins').size() > 0
      $(window).on 'scroll', ->
        more_pins_url = $('.pagination .next a').attr('href')
        if more_pins_url != undefined && $(window).scrollTop() > $(document).height() - $(window).height() - 60
          $('.pagination').text("Fetching more pins...")
          $('.pagination').show()
          console.log(more_pins_url)
          $.getScript(more_pins_url)
        return
      return


    


