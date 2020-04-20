src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"

let course_name_length = 50;
let schedule_length = 1000;

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
        }).done(function (re) {

            $.ajax('/inShoppingCart', {
                type: 'POST',
                data: {courseData: re.courseData}
            }).done(function (response) {
                $('#courseSearchBody').empty();

                for (var i=0;i<response.length;i++) {
                    var tr = $('<tr class = "mainRow"></tr>').click(function(){
						$(this).next('div.information').slideToggle(400);
					});
					
                    tr.append($('<td></td>').text(response[i]["course_id"]));
                    tr.append($('<td></td>').text(response[i]["course_name"].slice(0, course_name_length)));
                    tr.append($('<td></td>').text(response[i]["credit"]));
                    var cn = "btn btn-inverse-success btn-fw";
                    var innertxt = "Add";

                    if (response[i]["in_shopping_cart"] === "true") {
                        cn = "btn btn-inverse-warning btn-fw";
                        innertxt = "Remove";
                    }

					$('#courseSearchBody').append(tr);
					
					var info = $('<div class = "information" style = "float: left;"></div>');
					info.hide();
					info.append('<h6 style = "font-weight: bold;">Detailed Information</h6>');
					info.append($('<p></p>').html('<span style = "font-weight: bold;">Session No.: </span>'+response[i]["session_id"].slice(0, course_name_length)));
					info.append($('<p></p>').html('<span style = "font-weight: bold;">Lecturer: </span>'+response[i]["lecturer"].slice(0, course_name_length)));
					info.append($('<p></p>').html('<span style = "font-weight: bold;">Department: </span>'+response[i]["department"].slice(0, course_name_length)));
					info.append($('<p></p>').html('<span style = "font-weight: bold;">Venues: </span>'+'(1)'+response[i]["venue_1"].slice(0, course_name_length)+' (2)'+ response[i]["venue_2"].slice(0, course_name_length)+' (3)'+response[i]["venue_3"].slice(0, course_name_length)));
					info.append($('<p></p>').html('<span style = "font-weight: bold;">Evaluation: </span>'+response[i]["evaluation"].slice(0, course_name_length)));
					info.append($('<p></p>').html('<span style = "font-weight: bold;">Comment: </span>'+response[i]["comment"].slice(0, schedule_length)));
					info.append($('<p></p>').html('<span style = "font-weight: bold;">Schedule: </span>'+response[i]["schedule"].slice(0, schedule_length)));
					$('#courseSearchBody').append(info);
					
					var btns = $('<div class = "buttons"></div>');

                    if (innertxt === "Add") {
                        btns.append($('<button type="button" class="' + cn + '" id="' + response[i]["session_id"] + '" style = "float: left;">Add</button>').click(function () {
							//tr.nextUntil('tr.mainRow').slideToggle(400);
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
                        btns.append($('<button type="button" class="' + cn + '" id="' + response[i]["session_id"] + '" style = "float: left;">Remove</button>').click(function () {
                            //tr.nextUntil('tr.mainRow').slideToggle(400);
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
    });

	
});



function courseSearchResultSort(ascendingOrder, attribute) {
    var innerData = [];
    var table = document.getElementById("courseSearchBody");
    for (var i=0;i<table.rows.length;i++) {
        var rowData = {};
		//console.log($(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML);
        var r = table.rows[i].innerHTML.split("</td>");
        rowData["course_id"] = r[0].slice(4);
        rowData["course_name"] = r[1].slice(4);
        rowData["credit"] = r[2].slice(4);
        rowData["session_id"] = $(table.rows[i]).nextUntil('tr.mainRow').get(1).innerHTML.split("id=")[1].slice(1,5);
		rowData["lecturer"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[1].split("</span>")[1];
		rowData["department"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[2].split("</span>")[1];
		rowData["venues"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[3].split("</span>")[1];
		rowData["evaluation"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[4].split("</span>")[1];
		rowData["comment"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[5].split("</span>")[1];
		rowData["schedule"] = $(table.rows[i]).nextUntil('tr.mainRow').get(0).innerHTML.split("</p>")[6].split("</span>")[1];
        if (document.getElementById(rowData["session_id"]).innerText === "Add") {
            rowData["in_shopping_cart"] = "false";
        }
        else {
            rowData["in_shopping_cart"] = "true";
        }
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

			$('#courseSearchBody').append(tr);
					
			var info = $('<div class = "information" style = "float: left;"></div>');
			info.hide();
			info.append('<h6 style = "font-weight: bold;">Detailed Information</h6>');
			info.append($('<p></p>').html('<span style = "font-weight: bold;">Session No.: </span>'+innerData[i]["session_id"].slice(0, course_name_length)));
			info.append($('<p></p>').html('<span style = "font-weight: bold;">Lecturer: </span>'+innerData[i]["lecturer"].slice(0, course_name_length)));
			info.append($('<p></p>').html('<span style = "font-weight: bold;">Department: </span>'+innerData[i]["department"].slice(0, course_name_length)));
			info.append($('<p></p>').html('<span style = "font-weight: bold;">Venues: </span>'+innerData[i]["venues"].slice(0, course_name_length)));
			info.append($('<p></p>').html('<span style = "font-weight: bold;">Evaluation: </span>'+innerData[i]["evaluation"].slice(0, course_name_length)));
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
						}
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


