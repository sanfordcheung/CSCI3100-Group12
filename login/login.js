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

var connection = mysql.createConnection({
	host     : 'localhost',
	user     : 'root',
	password : '',
	database : 'cusisdb'
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
    connection.query('SELECT * FROM course_info', [], function(error, results, fields) {
        if (results.length > 0) {
            for (var i=0;i<results.length;i++) {
                for (var str in results[i]) {
                    if (!!results[i][str] && results[i][str].toString().toUpperCase().includes(word.toUpperCase())) {
                        var dt = {};
                        dt["course_id"] = results[i].course_id;
                        dt["course_name"] = results[i].course_name;
                        dt["credit"] = results[i].credit;
                        dt["department"] = results[i].department;
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
    connection.query('SELECT course_id, course_name, session_time_1, session_time_2, session_time_3' +
        ' FROM session_info NATURAL JOIN shopping_cart NATURAL JOIN course_info' +
        ' WHERE (session_info.session_id=shopping_cart.session_id and shopping_cart.sid=?)', [sid], function(error, results, fields) {
        if (results.length > 0) {
            for (var i=0;i<results.length;i++) {
                var dt = {};
                dt["course_id"] = results[i].course_id;
                dt["course_name"] = results[i].course_name;
                dt["session_time_1"] = results[i].session_time_1;
                dt["session_time_2"] = results[i].session_time_2;
                dt["session_time_3"] = results[i].session_time_3;
                res.courseData.push(dt);
            }
            console.log(res);
            response.json(res);

        } else {
            response.json(res);
        }

    });

}