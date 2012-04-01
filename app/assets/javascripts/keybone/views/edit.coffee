class window.Form extends Backbone.View
  events: {
    "submit form": "save"
  },

  initialize: () ->
    @render()
  ,
  
  save: () -> 
    self = @;
    msg = if @model.isNew() then 'Successfully created!' else "Saved!"
  
    @model.save({ name: this.$('[name=name]').val(), key: this.$('[name=key]').val() }, {
        success:  (model, resp) ->
          new Notice({ message: msg })
          self.model = model
          self.render()
          self.delegateEvents()
          Backbone.history.navigate('keyrepos/' + model.id) 
        ,
        error: () ->
          new Error();
    });
    false; 
  , 
  render: () ->
    out = '<form>'
    out += "<label for='name'>Nmae</label>"
    out += "<input name='name' type='text' />"

    out += "<label for='key'>Key</label>"
    out += "<textarea name='key'>" + (this.model.escape('key') || '') + "</textarea>"

    submitText = if this.model.isNew() then 'Create' else 'Save'

    out += "<button>" + submitText + "</button>"
    out += "</form>"

    $(@el).html(out)
    $('#app').html(@el)
      
    this.$('[name=name]').val(@model.get('name')) 