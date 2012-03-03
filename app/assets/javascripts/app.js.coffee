window.App =
  Router: null
  Collections: {}
  Models: {}
  Views: {}
  config: {}
  data: {}

  init: (data) ->
    @data.currentUser = new App.Models.User(data.currentUser)
    @data.currentUser.recipes = new App.Collections.Recipes(data.recipes)

window.t = (arg) ->
  console.log(arg)