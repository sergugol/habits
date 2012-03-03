class App.Views.Recipes extends Backbone.View

  template: JST['recipes']

  events: {}

  initialize: ->
    @recipes = App.data.currentUser.recipes

  render: =>
    $(@el).html(@template())
    @