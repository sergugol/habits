class App.Views.Recipes extends Backbone.View

  template: JST['recipes']

  events:
    'click #add-new-recipe' :   'addNewRecipe'

  initialize: ->
    @recipes = App.data.currentUser.recipes
    @recipes.on('add', @appendRecipe)

  addNewRecipe: (event) =>
    @recipes.create({body: $('#new-recipe', @el).val()})
    false

  appendRecipe: (recipe) =>
    t(recipe)

  render: =>
    $(@el).html(@template())
    @