class App.Views.Recipe extends Backbone.View

  template: JST['recipe']

  events: {}

  initialize: ->

  render: =>
    $(@el).html(@template())
    @