// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require_self 
//= require jquery
//= require jquery_ujs
//= require backbone/json2
//= require backbone/underscore
//= require backbone/backbone
//= require_tree . 
//= require keybone/models/keyrepo 
//= require keybone/collections/keys     
//= require keybone/controllers/keyrepos
//= require keybone/views/edit
//= require keybone/views/index 
 
var App = {
  Views: {},
  Controllers: {},
  Models: {},
  init: function(){
    App.Controllers.Keyrepos = new KeyRepos();
    Backbone.history.start();
  }
};