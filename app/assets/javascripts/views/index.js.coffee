class App.Views.Index extends Backbone.View

  template: JST['index']

  el: 'body'

  events: {}

  initialize: ->

  display: (view) =>
    $('#main-container', @el).html(view.el)

  render: =>
    $(@el).html(@template())
    @