/* USER MODULE */
/* USER REGISTRATION FUNCTION */
/*
   When user click on sign up button, a POST request is sent to backend.
   The backend (in login.js) checks whether all input information is valid.
*/
$(document).ready(function() {

    $('#SignUpEnter').click(function () {
	    var sid = document.getElementById("SID").value;
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
        var confirm = document.getElementById("confirm_password").value;
        var name = document.getElementById("name").value;
        var check = document.getElementById("check").checked;
	$.ajax('/register', {
            type: 'POST',
            data: {sid:sid, email:email, password:password, confirm_password:confirm, name:name, check:check}
        }).done(function (response) {
            alert(response);
        $.ajax('/registerRedirect', {
            type: 'POST'
        }).done(function (response) {
        });
            
});
});
});