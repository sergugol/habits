App.Router = Backbone.Router.extend({

  initialize: function() {
    this.bind('all', this.displayRoute);
  },

  routes: {
    ''          :   'displayIndex',
    '_=_'       :   'fromFacebook'
  },

  displayRoute: function(route, params) {
    t(route);
  },

  fromFacebook: function() {
    this.navigate('', true);
  },

  displayIndex: function() {
    var indexView = new App.Views.Index();
    indexView.render();
    // $('body').html(indexView.el);
  }
});