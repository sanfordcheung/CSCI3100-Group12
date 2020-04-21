$(document).ready(function() {
    $('#getPlan').click(function () {
        var table = document.getElementById("shoppingCartBody");
        var innerData = [];
        for (var i=0;i<table.rows.length;i++) {
            var rowData = {};
            var r = table.rows[i].innerHTML.split("</td>");
            rowData["course_id"] = r[0].slice(4);
            rowData["session_id"] = r[1].slice(4);
            rowData["credit"] = r[2].slice(4);
            rowData["preference"] = i;
            innerData.push(rowData);
        }

        $.ajax('/generatePlan', {
            type: 'POST',
            data: {courseData: innerData}
        }).done(function (response) {
            alert("generate plan done");
        }) ;

    });
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