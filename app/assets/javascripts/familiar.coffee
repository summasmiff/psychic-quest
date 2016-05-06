$ ->
  $('.catchphrase[data-url]').each ->
    container = this
    $.getJSON this.getAttribute('data-url'), (response) ->
      if response.catchphrase && response.catchphrase.length > 0
        container.innerHTML = response.catchphrase
        container.closest('.container').style.display = 'inline-block'
