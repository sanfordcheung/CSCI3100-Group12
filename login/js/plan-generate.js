/* PLAN GENERATE MODULE */

$(document).ready(function() {
    /* Upon signing out, erase all user information on the website. */
    $("#Signout").on('click', function() {
        alert("You've successfully sign out!");
        $.ajax('/ClearInfo', {
            type: 'POST'
        }).done(function(response) {}
        );
        window.location = "../login.html";
      });

    /*
       When user clicks on "Get Plan" button, a POST request is send to backend (login.js).
       It will generate a course plan and give its response to frontend.
       Upon receiving the response, notify the user that plan generation is completed.
    */
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

/* A sortable table for user to sort the courses by preference. */
$( function() {
    $( "#shoppingCartBody" ).sortable();
    $( "#shoppingCartBody" ).disableSelection();
} );

document.addEventListener('DOMContentLoaded', function() {
    /* Display user information on the website (in sidebar and also the navigator). */
    $.ajax('/userInfo', {
        type: 'POST'
    }).done(function (response) {
        document.getElementById("username").innerText = response.username;
        document.getElementById("user-email").innerText = response.email;
        document.getElementById("profile-name").innerText = response.username;
        document.getElementById("user-sid").innerText = response.sid;
    }) ;

    /* Add courses in shopping cart to the table. */
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