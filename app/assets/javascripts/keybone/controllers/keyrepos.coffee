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
    keys = new Keys({ model: Keyrepo })
    keys.fetch({
      success: () ->
        new Index({ collection: keys })
      ,
      error: () ->
        new Error({ message: "Error loading documents." })     
    })
  ,       
  newkeyrepo: () -> 
    new Form({ model: new Keyrepo() })    