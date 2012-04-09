window.App =
  Router: null
  Collections: {}
  Models: {}
  Views: {}
  config: {}
  data: {}

  init: (data) ->
    @data.currentUser = new App.Models.User(data.currentUser)
  window.t = (arg) ->
  console.log(arg)