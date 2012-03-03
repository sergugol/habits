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
    recipeView = new App.Views.Recipe({model: recipe})
    recipeView.render()
    $('#recipe-container', @el).append(recipeView.el)
    @clearNewRecipe()

  clearNewRecipe: =>
    $('#new-recipe', @el).val('')

  renderRecipes: =>
    @recipes.each((recipe)->
      @appendRecipe(recipe)
    @)

  render: =>
    $(@el).html(@template())
    @renderRecipes()
    @