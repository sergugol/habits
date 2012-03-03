class App.Views.Index extends Backbone.View

  template: JST['index']

  el: 'body'

  events: {}

  initialize: ->

  render: =>
    $(@el).html(@template({}))
    @