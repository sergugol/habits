class App.Router extends Backbone.Router

  initialize: ->
    @bind('all', @displayRoute)
    @indexView = new App.Views.Index()
    @indexView.render()

  routes:
    ''          :   'dashboard'
    'guidelines':   'guidelines'
    'habits'    :   'habits'
    'learning'  :   'learning'
    '_=_'       :   'fromFacebook'

  displayRoute: (route, params) ->
    t(route)

  fromFacebook: ->
    @navigate('dashboard', true)

  dashboard: ->

  guidelines: ->
    
  habits: ->

  learning: ->
