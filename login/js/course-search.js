/* COURSE SEARCH MODULE */

src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"

let course_name_length = 50;
let schedule_length = 1000;

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
        COURSE SEARCH FUNCTION
        AND
        COURSE SEARCH FILTER
     When user enters some keyword and clicks on the search button, a search procedure is carried out.
     This involves 6 steps:
     1. search for all courses whose information (course name, location, lecturer, course description, etc)
        matches the keyword
     2. for each course, check if it has been enrolled previously
     3. for each course, check if it is already in shopping cart
     4. for each course, check if it requires any pre-requisite course
     5. if some filter is checked by user, apply this filter to search result
     6. display the search result and fold some information (which will unfold if user wants to see these detailed stuff)
     */
    $('#courseSearchEnter').click(function () {

        var word = document.getElementById("courseSearchInput").value;
        $.ajax('/courseSearch', {
            type: 'POST',
            data: {keyword: word}
        }).done(function (re) {
            $.ajax('/isEnrolled', {
                type: 'POST',
                data: {courseData: re.courseData}
            }).done(function(re1) {
                $.ajax('/inShoppingCart', {
                    type: 'POST',
                    data: {courseData: re1}
                }).done(function(re2) {
                    $.ajax('/needPrerequisite', {
                        type: 'POST',
                        data: {courseData: re2}
                    }).done(function (response) {
                        $('#courseSearchBody').empty();


                        /* see if any filter is checked by user */
                        var is_enrolled_filter_on = $('#enrolled-filter').is(':checked');
                        var is_shopping_cart_filter_on = $('#shopping-cart-filter').is(':checked');
                        var is_prerequisite_filter_on = $('#prerequisite-filter').is(':checked');
                        for (var i=0;i<response.length;i++) {
                            console.log(response[i]["need_prerequisite"]);
                            if(is_enrolled_filter_on == true && response[i]["is_enrolled"] === 'true')
                                continue;
                            if(is_shopping_cart_filter_on == true && response[i]["in_shopping_cart"] === 'true')
                                continue;
                            if(is_prerequisite_filter_on == true && response[i]["need_prerequisite"] === 'true')
                                continue;
                            /* When user click on each row, it expands to reveal more course information or
                            * collapse to hide the detail.
                            * */
                            var tr = $('<tr class = "mainRow"></tr>').click(function(){
                                $(this).next('div.information').slideToggle(400);
                            });

                            tr.append($('<td></td>').text(response[i]["course_id"]));
                            tr.append($('<td></td>').text(response[i]["course_name"].slice(0, course_name_length)));
                            tr.append($('<td></td>').text(response[i]["credit"]));
                            var cn = "btn btn-inverse-success btn-fw";
                            var innertxt = "Add";

                            /* If the course is not in shopping cart, display the green "Add" button.
                               Otherwise, display the orange "Remove" button.
                            */
                            if (response[i]["in_shopping_cart"] === "true") {
                                cn = "btn btn-inverse-warning btn-fw";
                                innertxt = "Remove";
                            }

                            $('#courseSearchBody').append(tr);

                            /* detailed course information */
                            var info = $('<div class = "information" style = "float: left;"></div>');
                            info.hide();
                            info.append('<h6 style = "font-weight: bold;">Detailed Information</h6>');
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Session No.: </span>'+response[i]["session_id"].slice(0, course_name_length)));
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Lecturer: </span>'+response[i]["lecturer"].slice(0, course_name_length)));
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Department: </span>'+response[i]["department"].slice(0, course_name_length)));
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Venues: </span>'+'(1)'+response[i]["venue_1"].slice(0, course_name_length)+' (2)'+ response[i]["venue_2"].slice(0, course_name_length)+' (3)'+response[i]["venue_3"].slice(0, course_name_length)));
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Session start time: </span>'+'(1)'+response[i]["session_start_time_1"].slice(0, course_name_length)+' (2)'+ response[i]["session_start_time_2"].slice(0, course_name_length)+' (3)'+response[i]["session_start_time_3"].slice(0, course_name_length)));
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Session end time: </span>'+'(1)'+response[i]["session_end_time_1"].slice(0, course_name_length)+' (2)'+ response[i]["session_end_time_2"].slice(0, course_name_length)+' (3)'+response[i]["session_end_time_3"].slice(0, course_name_length)));
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Quota: </span>'+response[i]["quota"].slice(0, course_name_length)));
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Vacancy: </span>'+response[i]["vacancy"].slice(0, course_name_length)));
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Evaluation: </span>'+response[i]["evaluation"].slice(0, course_name_length)));
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Popularity: </span>'+response[i]["popularity"].slice(0, course_name_length)));
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Successfully register rate: </span>'+response[i]["func"].slice(0, course_name_length)));
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Comment: </span>'+response[i]["comment"].slice(0, schedule_length)));
                            info.append($('<p></p>').html('<span style = "font-weight: bold;">Schedule: </span>'+response[i]["schedule"].slice(0, schedule_length)));
                            $('#courseSearchBody').append(info);

                            var btns = $('<div class = "buttons"></div>');

                            /* Append a "Add" button to each course */
                            if (innertxt === "Add") {
                                btns.append($('<button type="button" class="' + cn + '" id="' + response[i]["session_id"] + '" style = "float: left;">Add</button>').click(function () {
                                    let id = this.id.toString();
                                    let btn = document.getElementById(id);
                                    if (btn.classList.contains("btn-inverse-success")) {
                                        btn.classList.remove("btn-inverse-success");
                                        btn.classList.add("btn-inverse-warning");
                                        btn.innerText = "Remove";
                                        /* When user clicks on "Add" button, add the course to shopping cart. */
                                        $.ajax('/addRemoveCourse', {
                                            type: 'POST',
                                            data: {sessionID: this.id, addCourse: "true"}
                                        }).done(function (response) {
                                        });
                                    } else {
                                        /* When user clicks on "Remove" button, remove the course from shopping cart. */
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
                            }
                            else {
                                /* Append a "Remove" button to each course */
                                btns.append($('<button type="button" class="' + cn + '" id="' + response[i]["session_id"] + '" style = "float: left;">Remove</button>').click(function () {
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
                                    } else {
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
                            }

                            $('#courseSearchBody').append(btns);

                        }

                    });

                }) ;
            });
        });
    });

    /* COURSE RANKING FUNCTION */
    /* rank by vacancy */
    $('#vacancy-btn').click(function () {
        let btn = document.getElementById("vacancy-btn");
        if (btn.classList.contains("btn-light")) {
            btn.classList.remove('btn-light');
            btn.classList.add('btn-secondary');
            courseSearchResultSort(true, "vacancy");
        }
        else {
            btn.classList.remove('btn-secondary');
            btn.classList.add('btn-light');
            courseSearchResultSort(false, "vacancy");
        }
    });

    /* rank by evaluation */
    $('#evaluation-btn').click(function () {
        let btn = document.getElementById("evaluation-btn");
        if (btn.classList.contains("btn-light")) {
            btn.classList.remove('btn-light');
            btn.classList.add('btn-secondary');
            courseSearchResultSort(true, "evaluation");
        }
        else {
            btn.classList.remove('btn-secondary');
            btn.classList.add('btn-light');
            courseSearchResultSort(false, "evaluation");
        }
    });

    /* rank by popularity */
    $('#popularity-btn').click(function () {
        let btn = document.getElementById("popularity-btn");
        if (btn.classList.contains("btn-light")) {
            btn.classList.remove('btn-light');
            btn.classList.add('btn-secondary');
            courseSearchResultSort(true, "popularity");
        }
        else {
            btn.classList.remove('btn-secondary');
            btn.classList.add('btn-light');
            courseSearchResultSort(false, "popularity");
        }
    });


    /* rank by successful regisration rate */
    $('#rate-btn').click(function () {
        let btn = document.getElementById("rate-btn");
        if (btn.classList.contains("btn-light")) {
            btn.classList.remove('btn-light');
            btn.classList.add('btn-secondary');
            courseSearchResultSort(true, "func");
        }
        else {
            btn.classList.remove('btn-secondary');
            btn.classList.add('btn-light');
            courseSearchResultSort(false, "func");
        }
    });

    /* sort by course name */
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

    /* sort by course id*/
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

    /* sort by credit */
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
    });


});


/* COURSE SORTING FUNCTION */
/* sort the course search result by some attribute */
function courseSearchResultSort(ascendingOrder, attribute) {
    /* Before sorting, store all information in the result table in a data structure @code innerData */
    var innerData = [];
    var table = document.getElementById("courseSearchBody");
    for (var i=0;i<table.rows.length;i++) {
        var rowData = {};
        var r = table.rows[i].innerHTML.split("</td>");
        rowData["course_id"] = r[0].slice(4);
        rowData["course_name"] = r[1].slice(4);
        rowData["credit"] = r[2].slice(4);
        rowData["session_id"] = $(table.rows[i]).nextUntil('tr.mainRow').get(1).innerHTML.split("id=")[1].slice(1,5);
        rowData["lecturer"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[1].split("</span>")[1];
        rowData["department"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[2].split("</span>")[1];
        rowData["venues"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[3].split("</span>")[1];
        rowData["session_start_time"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[4].split("</span>")[1];
        rowData["session_end_time"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[5].split("</span>")[1];
        rowData["quota"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[6].split("</span>")[1];
        rowData["vacancy"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[7].split("</span>")[1];
        rowData["evaluation"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[8].split("</span>")[1];
        rowData["popularity"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[9].split("</span>")[1];
        rowData["func"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[10].split("</span>")[1];
        rowData["comment"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[11].split("</span>")[1];
        rowData["schedule"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[12].split("</span>")[1];
        if (document.getElementById(rowData["session_id"]).innerText === "Add") {
            rowData["in_shopping_cart"] = "false";
        }
        else {
            rowData["in_shopping_cart"] = "true";
        }
        innerData.push(rowData);
    }

    /* sort course data */
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

    /* empty the result table */
    $('#courseSearchBody').empty();

    /* insert sorted course data into result table */
    for (var i=0;i<innerData.length;i++) {
        var tr = $('<tr class = "mainRow"></tr>').click(function(){
            $(this).next('div.information').slideToggle(400);
        });

        tr.append($('<td></td>').text(innerData[i]["course_id"]));
        tr.append($('<td></td>').text(innerData[i]["course_name"].slice(0, course_name_length)));
        tr.append($('<td></td>').text(innerData[i]["credit"]));
        var cn = "btn btn-inverse-success btn-fw";
        var innertxt = "Add";

        if (innerData[i]["in_shopping_cart"] === "true") {
            cn = "btn btn-inverse-warning btn-fw";
            innertxt = "Remove";
        }

        /* these information are hidden unless user clicks on a row to expand it */
        $('#courseSearchBody').append(tr);
        var info = $('<div class = "information" style = "float: left;"></div>');
        info.hide();
        info.append('<h6 style = "font-weight: bold;">Detailed Information</h6>');
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Session No.: </span>'+innerData[i]["session_id"].slice(0, course_name_length)));
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Lecturer: </span>'+innerData[i]["lecturer"].slice(0, course_name_length)));
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Department: </span>'+innerData[i]["department"].slice(0, course_name_length)));
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Venues: </span>'+innerData[i]["venues"].slice(0, course_name_length)));
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Session start time: </span>'+innerData[i]["session_start_time"].slice(0, course_name_length)));
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Session end time: </span>'+innerData[i]["session_end_time"].slice(0, course_name_length)));
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Quota: </span>'+innerData[i]["quota"].slice(0, course_name_length)));
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Vacancy: </span>'+innerData[i]["vacancy"].slice(0, course_name_length)));
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Evaluation: </span>'+innerData[i]["evaluation"].slice(0, course_name_length)));
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Popularity: </span>'+innerData[i]["popularity"].slice(0, course_name_length)));
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Successfully Register rate: </span>'+innerData[i]["func"].slice(0, course_name_length)));
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Comment: </span>'+innerData[i]["comment"].slice(0, schedule_length)));
        info.append($('<p></p>').html('<span style = "font-weight: bold;">Schedule: </span>'+innerData[i]["schedule"].slice(0, schedule_length)));
        $('#courseSearchBody').append(info);

        var btns = $('<div class = "buttons"></div>');

        if (innertxt === "Add") {
            btns.append($('<button type="button" class="' + cn + '" id="' + innerData[i]["session_id"] + '" style = "float: left;">Add</button>').click(function () {
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
                } else {
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
        }
        else {
            btns.append($('<button type="button" class="' + cn + '" id="' + innerData[i]["session_id"] + '" style = "float: left;">Remove</button>').click(function () {
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
                } else {
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
        }

        $('#courseSearchBody').append(btns);

    }
}


