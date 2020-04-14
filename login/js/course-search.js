let course_name_length = 30;
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
                tr.append($('<td></td>').text(response.courseData[i]["course_id"]));
                tr.append($('<td></td>').text(response.courseData[i]["course_name"].slice(0,course_name_length)));
                tr.append($('<td></td>').text(response.courseData[i]["credit"]));
                var cn = "btn btn-inverse-success btn-fw";
                /*
                if (response.courseData[i]["in_shopping_cart"] === true) {
                    cn = "btn btn-inverse-success btn-fw";
                }
                */

                tr.append($('<button type="button" class="'+cn+'" id="'+response.courseData[i]["session_id"]+'">Add</button>').click(function () {
                    let id = this.id.toString();
                    let btn = document.getElementById(id);
                    if (btn.classList.contains("btn-inverse-success")) {
                        btn.classList.remove("btn-inverse-success");
                        btn.classList.add("btn-inverse-warning");
                        btn.innerText = "Remove";
                        $.ajax('/addRemoveCourse', {
                            type: 'POST',
                            data: {sessionID: this.id, addCourse: "true"}
                        }).done(function (response) {
                        });
                    }
                    else {
                        btn.classList.remove("btn-inverse-warning");
                        btn.classList.add("btn-inverse-success");
                        btn.innerText = "Add";
                        $.ajax('/addRemoveCourse', {
                            type: 'POST',
                            data: {sessionID: this.id, addCourse: "false"}
                        }).done(function (response) {
                        });
                    }

                }));
                $('#courseSearchBody').append(tr);
            }
        }) ;
    });

    $('#course-name-btn').click(function () {
        let btn = document.getElementById("course-name-btn");
        if (btn.classList.contains("btn-light")) {
            btn.classList.remove('btn-light');
            btn.classList.add('btn-secondary');
            courseSearchResultSort(true, "course_name");
        }
        else {
            btn.classList.remove('btn-secondary');
            btn.classList.add('btn-light');
            courseSearchResultSort(false, "course_name");
        }
    });

    $('#course-id-btn').click(function () {
        let btn = document.getElementById("course-id-btn");
        if (btn.classList.contains("btn-light")) {
            btn.classList.remove('btn-light');
            btn.classList.add('btn-secondary');
            courseSearchResultSort(true, "course_id");
        }
        else {
            btn.classList.remove('btn-secondary');
            btn.classList.add('btn-light');
            courseSearchResultSort(false, "course_id");
        }
    });

    $('#course-credit-btn').click(function () {
        let btn = document.getElementById("course-credit-btn");
        if (btn.classList.contains("btn-light")) {
            btn.classList.remove('btn-light');
            btn.classList.add('btn-secondary');
            courseSearchResultSort(true, "credit");
        }
        else {
            btn.classList.remove('btn-secondary');
            btn.classList.add('btn-light');
            courseSearchResultSort(false, "credit");
        }
    })
});

function courseSearchResultSort(ascendingOrder, attribute) {
    var innerData = [];
    var table = document.getElementById("courseSearchBody");
    for (var i=0;i<table.rows.length;i++) {
        var rowData = {};
        var r = table.rows[i].innerHTML.split("</td>");
        rowData["course_id"] = r[0].slice(4);
        rowData["course_name"] = r[1].slice(4);
        rowData["credit"] = r[2].slice(4);
        rowData["session_id"] = r[3].split("id=")[1].slice(1,5);
        innerData.push(rowData);
    }

    if (ascendingOrder) {
        innerData.sort(function (a, b) {
            return a[attribute].localeCompare(b[attribute]);
        })
    }
    else {
        innerData.sort(function (a, b) {
            return b[attribute].localeCompare(a[attribute]);
        })
    }
    $('#courseSearchBody').empty();

    for (var i=0;i<innerData.length;i++) {
        var tr = $('<tr></tr>');
        tr.append($('<td></td>').text(innerData[i]["course_id"]));
        tr.append($('<td></td>').text(innerData[i]["course_name"]));
        tr.append($('<td></td>').text(innerData[i]["credit"]));
        tr.append($('<button type="button" class="btn btn-inverse-success btn-fw" id="'+innerData[i]["session_id"]+'">Add</button>').click(function () {
            let id = this.id.toString();
            let btn = document.getElementById(id);
            if (btn.classList.contains("btn-inverse-success")) {
                btn.classList.remove("btn-inverse-success");
                btn.classList.add("btn-inverse-warning");
                btn.innerText = "Remove";
            }
            else {
                btn.classList.remove("btn-inverse-warning");
                btn.classList.add("btn-inverse-success");
                btn.innerText = "Add";
            }
        }));
        $('#courseSearchBody').append(tr);
    }
}

function addCourseButtonClick() {
    alert(this.id);
}