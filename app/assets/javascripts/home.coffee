# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



HALL =
  ready: ->
    $('html, body').scrollTop $(document).height() - $(window).height()
    #$(window).scrollTop($(window).height());
    @mail()
    return
  load: ->
    #this.drawBuilding();
    return
  scroll: ->
  mousewheel: (e) ->
  checkVisible: (el) ->
    if typeof jQuery == 'function' and el instanceof jQuery
      el = el[0]
    rect = el.getBoundingClientRect()
    rect.bottom >= 0 and rect.right >= 0 and rect.top <= (window.innerHeight or document.documentElement.clientHeight) and rect.left <= (window.innerWidth or document.documentElement.clientWidth)
  mail: ->
    $('form').submit (e) ->
      e.preventDefault()
      form = $(this)
      $.ajax
        url: '#'
        data: form.serialize()
        begin: ->
          form.find('input[type=submit]').val 'Sending...'
          return
        success: (response) ->
          if response == 'success'
            form.find('input[type=submit]').val 'Thanks!'
          else
            form.find('input[type=submit]').val response
          return
      return
    return

$(document).ready ->
  $('[data-display-form]').click ->
    $('.quote-overlay').fadeOut(3000)
    $('[data-submit]').html('disabled', '')