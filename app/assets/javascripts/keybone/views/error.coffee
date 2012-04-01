class window.Notice extends Backbone.View
  el: $('#error')
  
  initialize: () ->
    @render()
    
  render: () ->
    $(@el).html(@message)
    $('#app').append(@el)