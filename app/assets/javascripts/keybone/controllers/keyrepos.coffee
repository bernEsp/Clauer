class window.KeyRepos extends Backbone.Router
  routes: {
      "keyrepos/:id":             "edit",
      "":                         "index",
      "new":                     "newkeyrepo"
  },

  edit: (id) ->
    key = new Keyrepo({ id: id })
    key.fetch({
      success: (model, resp) ->
        new Form({ model: key})
      ,
      error: () ->
        new Error({ message: 'Could not find that key.' })
        window.location.hash = '#'  
    }) 
  ,
  index: () ->
    $.getJSON('/keyrepos', (data) ->
      if data
        keys = _.map(data, (key) -> new Keyrepo(key) )
        new Index({ keys: keys })
      else
        new Error({ message: "Error loading documents." })
    )  
  ,       
  newkeyrepo: () -> 
    new Form({ model: new Keyrepo() })    