App.Views.Index = Backbone.View.extend({

  template: JST['index'],

  el: 'body',

  events: {},

  initialize: function() {
    _.bindAll(this);
  },

  render: function() {
    $(this.el).html(this.template({}));
    return this;
  }
});