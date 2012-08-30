(function(window, $) {

  var app = {};

  app.init = function() {
    app.delegateEvents();
    console.log('hello world');
  };

  app.showUserForm = function(e){
    debugger;

    return false;
  };

  app.handleFormSubmission = function(e){
    $.ajax({
      url: "/users",
      type: "POST",
      data: $(this).serialize(),
      dataType: "json",
      success: function(response){
        if ( response.success ) {
debugger;
        } else {
        }
      }
    });

    return false;
  };

  // Delegate events for the page
  app.delegateEvents = function(){
    $(document).on("submit", "#new_user", app.handleFormSubmission);

    $(document).on("click", "#js-show-me", app.showUserForm);

  };

  window.app = app;

  $(document).ready(app.init);

})(this, jQuery);
