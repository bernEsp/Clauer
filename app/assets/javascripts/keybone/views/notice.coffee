class window.Notice extends Backbone.View
  el: $('#notice')
  
  initialize: () ->
    @render()
    
  render: () ->
    $(@el).html("Something was wrong")
    $('#app').append(@el)