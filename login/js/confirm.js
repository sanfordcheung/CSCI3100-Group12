$(document).ready(function() {

    $('#ConfirmEnter').click(function () {
        var code = document.getElementById("code").value;
        $.ajax('/confirm', {
            type: 'POST',
            data: {code:code}
        }).done(function (response) {
            alert(response);
        });
    });
});