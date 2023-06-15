(function () {
  "use strict";
  App.CookiesConsent = {
    initialize: function () {
      $(document).on('cookies-eu-acknowledged', function () {
        // The user has acknowledged cookies! If they're logged in, update their preference.
        var current_user_id = $("html").data("current-user-id");
        console.log(current_user_id);
        if (current_user_id) {
          $.ajax({
            url: "/users/" + current_user_id + "/cookies_consent",
            type: "GET"
          });
        }
      });
    }
  };
}).call(this);
