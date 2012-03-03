class App.Router extends Backbone.Router

  initialize: ->
    @bind('all', @displayRoute)
    @indexView = new App.Views.Index()
    @indexView.render()

  routes:
    ''          :   'displayRecipes'
    'recipes'   :   'displayRecipes'
    '_=_'       :   'fromFacebook'

  displayRoute: (route, params) ->
    t(route)

  fromFacebook: ->
    @navigate('recipes', true)

  displayRecipes: ->
    recipesView = new App.Views.Recipes
    recipesView.render()
    @indexView.display(recipesView)
