class window.Index extends Backbone.View
  template: JST['keybone/templates/documents']   
  initialize: () ->
    @render()
    
  render: () ->
    $(@el).html(@template({ collection: @collection }))  
    $('#app').html(@el)

