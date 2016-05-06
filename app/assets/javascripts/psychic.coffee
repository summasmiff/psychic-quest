$ ->
  $('.cast-spell').click ->
    button = this
    url = button.getAttribute('data-url')
    container = $('#spell-results')
    $('#angry-response').hide()
    if container.is(':visible')
      container.fadeOut()
      $('#angry-response').fadeIn()
      button.setAttribute('disabled', 'disabled')
      return
    $.getJSON url, (response) ->
      $('#result').text(response.spell)
      container.fadeIn()

  $('.see-future').click ->
    button = this
    url = button.getAttribute('data-url')
    container = $('#prediction')
    $('#angry-response').hide()
    on_success = (response) ->
      $('#prediction-result').text(response.prediction)
      container.fadeIn()
    on_error = ->
      container.fadeOut()
      $('#angry-response').fadeIn()
      button.setAttribute('disabled', 'disabled')
    $.getJSON(url).success(on_success).error(on_error)
