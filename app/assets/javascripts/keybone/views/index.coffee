class window.Index extends Backbone.View
  initialize: () ->
    @keys = @options.keys
    @render()
    
  render: () ->
    if  @keys.length > 0
      out =  "<h3><a href='#new'>Create New</a></h3><ul>"
      _.each(@keys, (key) ->
        out += "<li><a href='#keyrepos/" + key.id + "'>" + key.escape('name') + "</a></li>" 
      )
      out += "</ul>"
    else
      out = "<h3>No documents! <a href='#new'>Create one</a></h3>"
    $(@el).html(out)
    $('#app').html(@el)

