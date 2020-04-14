var mysql = require('mysql');
var express = require('express');
var session = require('express-session');
var bodyParser = require('body-parser');
var path = require('path');
//TODO: debug use only.
global.sid = "0";
global.username = "Jimmy";
global.email = "Jimmy@gmail.com";
global.loggedin = false;
global.inShoppingCart = false;

var connection = mysql.createConnection({
	host     : 'localhost',
	user     : 'root',
	password : '',
	database : 'cusisdbBeta'
});

var app = express();

app.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));
app.use(bodyParser.urlencoded({extended : true}));
app.use(bodyParser.json());
app.use(express.static(__dirname + '/'));

app.get('/', function(request, response) {
	response.sendFile(path.join(__dirname + '/login.html'));
});

app.post('/auth', loginAuthenticate);

app.listen(3000);


function loginAuthenticate(request, response) {
    var sid = request.body.sid;
    var password = request.body.password;
    if (sid && password) {
        connection.query('SELECT * FROM user WHERE sid = ? AND password = ?', [sid, password], function(error, results, fields) {
            if (results.length > 0) {
                global.loggedin = true;
                global.sid = sid;
                global.email = results[0].email;
                global.username = results[0].name;
                response.redirect('/pages/index.html');
            } else {
                response.send('Incorrect Username and/or Password!');
            }
            response.end();
        });
    } else {
        response.send('Please enter Username and Password!');
        response.end();
    }
}

/* user info */
app.post('/userInfo', userInfo);

function userInfo(request, response) {
    if (global.loggedin) {
        var res = {};
        res["username"] = global.username;
        res["email"] = global.email;
        res["sid"] = global.sid;
        response.json(res);
    }
}

/* course search */
app.post('/courseSearch', courseSearch);

function courseSearch(request, response) {
    var word = request.body.keyword;
    var res = {courseData:[]};
    connection.query('select course_id, course_name, credit, department, course_session_list.session_id, lecturer, venue_1, venue_2, venue_3 ' +
        'from course_info natural join course_session_list left join session_info ' +
        'on course_session_list.session_id=session_info.session_id', [], function(error, results, fields) {
        if (results.length > 0) {
            for (var i=0;i<results.length;i++) {
                for (var str in results[i]) {
                    if (!!results[i][str] && results[i][str].toString().toUpperCase().includes(word.toUpperCase())) {
                        var dt = {};
                        dt["course_id"] = results[i].course_id;
                        dt["course_name"] = results[i].course_name;
                        dt["credit"] = results[i].credit;
                        dt["department"] = results[i].department;
                        dt["session_id"] = results[i].session_id;
                        //dt["in_shopping_cart"] = false;
                        /*
                        connection.query('select session_id from shopping_cart where session_id=? and sid=?', [results[i].session_id, global.sid], function (error, result, field) {
                            if (result.length > 0) {
                                //TODO: reflect in dt["in_shopping_cart"]
                            }
                        });

                         */
                        res.courseData.push(dt);
                        break;
                    }
                }
            }

            response.json(res);
        } else {

        }

    });
}

/* Add/Remove course to/from shopping cart */
app.post("/addRemoveCourse", addRemoveCourse);
function addRemoveCourse(request, response) {
    if (request.body.addCourse === "true") {

        connection.query("select course_id, session_info.session_id " +
            "from course_info natural join course_session_list left join session_info " +
            "on course_session_list.session_id=session_info.session_id " +
            "where session_info.session_id=?", [request.body.sessionID], function (error, results, fields) {
            if (results.length > 0) {
                response["course_id"] = results[0].course_id;
                response["session_id"] = results[0].session_id;
                // TODO: support tutorial selection
                response["tutorial_id"] = "0000";
                response["sid"] = global.sid;
                connection.query("insert into shopping_cart values (?, ?, ?, ?)", [response["course_id"], response["session_id"], response["tutorial_id"], response["sid"]], function (err, re, fields) {
                });
            }

        });

    }
    else {
        response["session_id"] = request.body.sessionID;
        connection.query("delete from shopping_cart where session_id=?", [response["session_id"]], function (err, re, fields) {
        });

    }

}

/* get shopping cart */
app.post('/shoppingCart', getShoppingCart);

function getShoppingCart(request, response) {
    //var sid = request.body.keyword;
    var sid = global.sid;

    var res = {courseData:[]};
    connection.query('SELECT * FROM shopping_cart WHERE sid = ?', [sid], function(error, results, fields) {
        if (results.length > 0) {
            for (var i=0;i<results.length;i++) {
                var dt = {};
                dt["course_id"] = results[i].course_id;
                dt["session_id"] = results[i].session_id;
                dt["tutorial_id"] = results[i].tutorial_id;
                res.courseData.push(dt);
            }
            response.json(res);
        } else {
            response.json(res);
        }

    });
}

/* get timetable */
app.post('/timeTable', getTimeTable);

function getTimeTable(request, response) {
    var sid = global.sid;
    var res = {courseData:[]};
    connection.query('SELECT course_info.course_id, course_name, session_start_time_1, session_start_time_2, session_start_time_3, session_end_time_1, session_end_time_2, session_end_time_3' +
        ' FROM session_info NATURAL JOIN shopping_cart NATURAL JOIN course_session_list LEFT JOIN course_info ON course_info.course_id=course_session_list.course_id' +
        ' WHERE (shopping_cart.sid=?) GROUP BY course_id', [sid], function(error, results, fields) {
        if (results.length > 0) {
            for (var i=0;i<results.length;i++) {
                var dt = {};
                dt["course_id"] = results[i].course_id;
                dt["course_name"] = results[i].course_name;
                dt["session_start_time_1"] = results[i].session_start_time_1;
                dt["session_start_time_2"] = results[i].session_start_time_2;
                dt["session_start_time_3"] = results[i].session_start_time_3;
                dt["session_end_time_1"] = results[i].session_end_time_1;
                dt["session_end_time_2"] = results[i].session_end_time_2;
                dt["session_end_time_3"] = results[i].session_end_time_3;
                res.courseData.push(dt);
            }
            response.json(res);
        } else {
            response.json(res);
        }
    });

}