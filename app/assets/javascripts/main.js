(function(window, $) {

  var app = {};

  app.init = function() {
    app.delegateEvents();
    console.log('hello world');
  };

  app.showUserForm = function(e){
    return false;
  };

  app.serializeTemplate = function($template) {
    var template = "";
    $.each($template.find('*'), function(i, obj) {
      var $obj = $(obj);
      template+=$obj.is('span') ? $obj.text() : "#{"+$obj.attr('name')+"}";
    });
    return template;
  };

  app.handleFormSubmission = function(e){
    e.preventDefault();
    e.stopPropagation();

    var $this = $(this);
    var data = {
      user: {
        option1: $this.find('input[name="user[option1]"]').val(),
        option2: $this.find('input[name="user[option2]"]').val(),
        option3: $this.find('input[name="user[option3]"]').val(),
        email: $this.find('input[name="user[email]"]').val(),
        nickname: $this.find('input[name="user[nickname]"]').val(),
        moms_email: $this.find('input[name="user[moms_email]"]').val(),
        frequency: $this.find('input[name="user[frequency]"]').val()
      }
    };

    $.ajax({
      url: "/users",
      type: "POST",
      data: data,
      dataType: "json",
      success: function(response){
        $('#thanks').slideDown();

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
