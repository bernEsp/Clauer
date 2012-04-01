class window.Keyrepo extends Backbone.Model
  url : () ->
    base = 'keyrepos';
    if this.isNew()
      base
    else
      base + if base.charAt(base.length - 1) == '/' then '' else '/' + @id
