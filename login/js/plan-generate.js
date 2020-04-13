$(document).ready(function() {
    $('#sidEnter').click(function () {
        var word = document.getElementById("sidInput").value;
        $.ajax('/shoppingCart', {
            type: 'POST',
            data: {keyword: word}
        }).done(function (response) {
            $('#shoppingCartBody').empty();
            for (var i=0;i<response.courseData.length;i++) {
                var tr = $('<tr></tr>');
                for (var str in response.courseData[i]) {
                    var td = $('<td></td>').text(response.courseData[i][str]);
                    tr.append(td);
                }
                $('#shoppingCartBody').append(tr);
            }
        }) ;

    })
});

$( function() {
    $( "#shoppingCartBody" ).sortable();
    $( "#shoppingCartBody" ).disableSelection();
} );

document.addEventListener('DOMContentLoaded', function() {
    $.ajax('/userInfo', {
        type: 'POST'
    }).done(function (response) {
        document.getElementById("username").innerText = response.username;
        document.getElementById("user-email").innerText = response.email;
        document.getElementById("profile-name").innerText = response.username;
        document.getElementById("user-sid").innerText = response.sid;
    }) ;

    var word = 0;
    $.ajax('/shoppingCart', {
        type: 'POST',
        data: {keyword: word}
    }).done(function (response) {
        $('#shoppingCartBody').empty();
        for (var i=0;i<response.courseData.length;i++) {
            var tr = $('<tr></tr>');
            for (var str in response.courseData[i]) {
                var td = $('<td></td>').text(response.courseData[i][str]);
                tr.append(td);
            }
            $('#shoppingCartBody').append(tr);
        }
    }) ;
});