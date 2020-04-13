
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

$(document).ready(function() {
    $('#courseSearchEnter').click(function () {
        var word = document.getElementById("courseSearchInput").value;
        $.ajax('/courseSearch', {
            type: 'POST',
            data: {keyword: word}
        }).done(function (response) {
            $('#courseSearchBody').empty();
            for (var i=0;i<response.courseData.length;i++) {
                var tr = $('<tr></tr>');
                for (var str in response.courseData[i]) {
                    var td = $('<td></td>').text(response.courseData[i][str]);
                    tr.append(td);
                }
                $('#courseSearchBody').append(tr);
            }
        }) ;

    })
});
