/* USER MODULE */
/* USER SIGN OUT FUNCTION */
/* Upon signing out, erase all user information on the website. */
$(document).ready(function() {
    $("#Signout").on('click', function() {
        alert("You've successfully sign out!");
        $.ajax('/ClearInfo', {
            type: 'POST'
        }).done(function(response) {}
        );
        window.location = "../login.html";
      });
    });

/* Display user information on the website (in sidebar and also the navigator). */
document.addEventListener('DOMContentLoaded', function() {
    $.ajax('/userInfo', {
        type: 'POST'
    }).done(function (response) {
        document.getElementById("username").innerText = response.username;
        document.getElementById("user-email").innerText = response.email;
        document.getElementById("profile-name").innerText = response.username;
        document.getElementById("user-sid").innerText = response.sid;
    }) ;
});