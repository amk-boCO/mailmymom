(function(window, $) {

  var app = {};

  app.init = function() {
    console.log('hello world');
  };

  window.app = app;

  $(document).ready(app.init);

})(this, jQuery);
