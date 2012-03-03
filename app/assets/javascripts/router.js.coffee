class App.Router extends Backbone.Router

  initialize: ->
    @bind('all', @displayRoute)

  routes:
    ''          :   'displayIndex'
    '_=_'       :   'fromFacebook'

  displayRoute: (route, params) ->
    t(route)

  fromFacebook: ->
    @navigate('', true)

  displayIndex: ->
    indexView = new App.Views.Index()
    indexView.render()