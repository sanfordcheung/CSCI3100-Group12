/*
    This file contains the entry point of the App, processes GET/POST request, and queries the database.
 */

/* Include some packages. */
var mysql = require('mysql');
var express = require('express');
var session = require('express-session');
var bodyParser = require('body-parser');
var path = require('path');

/* Global variables and constants used in this file. Variables are initialized with some dummy values. */
global.sid = "0";
global.username = "Jimmy";
global.email = "Jimmy@gmail.com";
global.loggedin = false;
global.inShoppingCart = false;
global.code = "12345678";
global.confirm = "0";
global.time_convert = 1000;
global.max_credits_per_term = 19;
global.course_plan_next_index = 0;

/* Connect to database. */
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
app.use(bodyParser.json({ limit: '50mb' }));
app.use(bodyParser.urlencoded({ limit: '50mb', extended: true, parameterLimit: 50000 }));
app.use(express.static(__dirname + '/'));
app.use(express.urlencoded({limit: "50mb", extended: true, parameterLimit:50000}));
app.use(express.json({limit: '50mb', extended: true}));

/* USER MODULE */
/* The entry point is the login page. On this page, users can go to Sign Up or Sign In. */
app.get('/', function(request, response) {
	response.sendFile(path.join(__dirname + '/login.html'));
});

/* Clear user information after signing out. */
app.post('/ClearInfo', ClearInfo);
function ClearInfo(request,response){
    global.sid = "0";
    global.username = "Jimmy";
    global.email = "Jimmy@gmail.com";
    global.loggedin = false;
    global.inShoppingCart = false;
    global.code = "12345678";
    global.confirm = "0";
    global.time_convert = 1000;
    global.max_credits_per_term = 19;
    global.course_plan_default_index = 0;
    response.send('Clear now');
    response.end();
} 

/*
   USER LOGIN FUNCTION
   User click on LOGIN button and send a POST request. Function loginAuthenticate checks
   whether the sid and password matches the user information in the database.
 */
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
                global.course_plan_next_index = parseInt(results[0].plan_index);
                response.redirect('/pages/course-search.html');
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
/*
    USER REGISTRATION FUNCTION
    Steps for registration:
    1. register with sid, password, email and a username
    2. enter the confirmation code
*/
app.post('/register', register);
app.post('/pages/registerRedirect', registerRedirect);
function registerRedirect(request, response) {
    if(global.confirm == "1"){
        global.confirm = "0";
        response.sendFile(path.join(__dirname + '/pages/confirm.html'));
    } else {}
}

function register(request, response) {
	var sid = request.body.sid;
 	var password = request.body.password;
	var confirm_password = request.body.confirm_password;
	var email = request.body.email;
	var name = request.body.name;
	var check = request.body.check;
	if(sid && password && confirm_password && email && name && check)
	{
		if(check == "false"){
			response.send('Please agree to our terms.');
		} else {
		if(sid.length != 10){
			response.send('Invalid SID');
			} else {
		if(password.length < 6){
			response.send("The length of password should be more than or equal to 6");
		} else {
		if(password != confirm_password){
			response.send('The two passwords are inconsistent!');
		} else {
		connection.query('SELECT * FROM user WHERE sid = ? OR email = ?', [sid, email], function(error, results, fields) {
            	if (results.length > 0) {
              	 response.send('This SID/e-mail already has an account!');
          	  } else {
                response.send("Valid information, now turn to confirmation page.");
                global.confirm = "1";
                 const nodemailer = require('nodemailer');
                 const ejs = require('ejs');
                 const fs  = require('fs');
                 const path = require('path');
                 const random = require('string-random');
                 global.code = random(8);
                 global.sid = sid;
                 global.email = email;
                 global.name = name;
                 global.password = password;
                 var code = global.code;
                 connection.query('DELETE FROM confirm WHERE code = ?', [code], function(error, results, fields){});
                 connection.query('DELETE FROM confirm WHERE email = ?', [email], function(error, results, fields){});
                 connection.query('INSERT INTO confirm (code,email) VALUES (?,?)', [code, email], function(error, results, fields){});
                let transporter = nodemailer.createTransport({
                host: 'smtp.gmail.com',
                service: 'gmail',
                port: 465,
                secureConnection: true,
                auth: {
                    user: 'k1155124427@gmail.com',
                    pass: 'qscqhexswvybjoix',
                }
                });

                let mailOptions = {
                from: '"Charles-Kuang" <k1155124427@gmail.com>', // sender address
                to: email, // list of receivers
                subject: 'Register Confirmation', // Subject line
                text: 'Your active code is: '+code, // plain text body
                //html: fs.createReadStream(path.resolve(__dirname, 'confirm.html'))
                };

                // send mail with defined transport object
                transporter.sendMail(mailOptions, (error, info) => {
                if (error) {
                    return console.log(error);
                }
                console.log('Message sent: %s', email);
                // Message sent: <04ec7731-cc68-1ef6-303c-61b0f796b78f@qq.com>
                });
                }
         	   response.end();
      	  });
	}}}}}
}

/*
    CONFIRM FUNCTION
    When the user enters the correct confirmation code, he/she will be
    redirected to the login page.
*/

app.post('/confirm',confirm);
app.post('/confirmRedirect', confirmRedirect);
function confirmRedirect(request, response) {
    if(global.confirm == "1")
    {
        global.confirm = "0";
        response.sendFile(path.join(__dirname + '/login.html'));
        console.log(__dirname);
    } else { }
}

function confirm(request,response){
    var input_code = request.body.code;
    if(input_code == global.code){
        global.confirm = "1";
        /* update database by inserting newly registered user information into user table. */
        connection.query('INSERT INTO user (sid,password,name,email) VALUES (?,?,?,?)',[global.sid,global.password,global.name,global.email], function(error, results, fields){});
        response.send("Registration successed! Turn to the login page now.");
        response.end();
    } else {
        response.send("Incorrect code! Please check again.");
    }
}

/*
    user info
    Send user information to frontend.
    Local database will also be updated
*/
app.post('/userInfo', userInfo);

function userInfo(request, response) {
    if (global.loggedin) {
        var res = {};
        res["username"] = global.username;
        res["email"] = global.email;
        res["sid"] = global.sid;
        response.json(res);
        connection.query(
        'update session_info NATURAL JOIN shopping_cart  SET popularity = popularity + 1 WHERE session_info.session_id = shopping_cart.session_id AND sid = 1155000001;'+
        'update session_info NATURAL JOIN shopping_cart  SET popularity = popularity + 1 WHERE session_info.session_id = shopping_cart.session_id AND sid = 1155124427;'+
        'update session_info NATURAL JOIN shopping_cart  SET popularity = popularity + 1 WHERE session_info.session_id = shopping_cart.session_id AND sid = 1155148372'
        ,[],function(error, results, fields){});
        connection.query(
        'update session_info set session_start_time_1 = date_add(session_start_time_1, interval ABS(datediff(session_start_time_1, NOW())) DIV 7 week) WHERE datediff(session_start_time_1, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0;'+
        'update session_info set session_start_time_2 = date_add(session_start_time_2, interval ABS(datediff(session_start_time_2, NOW())) DIV 7 week) WHERE datediff(session_start_time_2, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0;'+
        'update session_info set session_start_time_3 = date_add(session_start_time_3, interval ABS(datediff(session_start_time_3, NOW())) DIV 7 week) WHERE datediff(session_start_time_3, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0;'+
        'update session_info set session_end_time_1 = date_add(session_end_time_1, interval ABS(datediff(session_end_time_1, NOW())) DIV 7 week) WHERE datediff(session_end_time_1, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0;'+
        'update session_info set session_end_time_2 = date_add(session_end_time_2, interval ABS(datediff(session_end_time_2, NOW())) DIV 7 week) WHERE datediff(session_end_time_2, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0;'+
        'update session_info set session_end_time_3 = date_add(session_end_time_3, interval ABS(datediff(session_end_time_3, NOW())) DIV 7 week) WHERE datediff(session_end_time_3, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0'
        ,[],function(error, results, fields){});
        connection.query(
        'update course_plan set tutorial_start_time_1 = date_add(tutorial_start_time_1, interval ABS(datediff(tutorial_start_time_1, NOW())) DIV 7 week) WHERE datediff(tutorial_start_time_1, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0;'+
        'update course_plan set tutorial_end_time_1 = date_add(tutorial_end_time_1, interval ABS(datediff(tutorial_end_time_1, NOW())) DIV 7 week) WHERE datediff(tutorial_end_time_1, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0'
        ,[],function(error, results, fields){});
        connection.query(
        'update course_plan set session_start_time_1 = date_add(session_start_time_1, interval ABS(datediff(session_start_time_1, NOW())) DIV 7 week) WHERE datediff(session_start_time_1, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0;'+
        'update course_plan set session_start_time_2 = date_add(session_start_time_2, interval ABS(datediff(session_start_time_2, NOW())) DIV 7 week) WHERE datediff(session_start_time_2, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0;'+
        'update course_plan set session_start_time_3 = date_add(session_start_time_3, interval ABS(datediff(session_start_time_3, NOW())) DIV 7 week) WHERE datediff(session_start_time_3, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0'
        ,[],function(error, results, fields){});
        connection.query(
        'update course_plan set session_end_time_1 = date_add(session_end_time_1, interval ABS(datediff(session_end_time_1, NOW())) DIV 7 week) WHERE datediff(session_end_time_1, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0;'+
        'update course_plan set session_end_time_2 = date_add(session_end_time_2, interval ABS(datediff(session_end_time_2, NOW())) DIV 7 week) WHERE datediff(session_end_time_2, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0;'+
        'update course_plan set session_end_time_3 = date_add(session_end_time_3, interval ABS(datediff(session_end_time_3, NOW())) DIV 7 week) WHERE datediff(session_end_time_3, "2020-08-30 00:00:00") * datediff(NOW(),"2020-08-30 00:00:00") > 0'
        ,[],function(error, results, fields){});
    }
}

/* ADD REMOVE COURSE FUNCTION */
/* Add/Remove course to/from shopping cart */
app.post("/addRemoveCourse", addRemoveCourse);
function addRemoveCourse(request, response) {
    if (!global.loggedin) {
        return;
    }

    if (request.body.addCourse === "true") {
        connection.query("select course_id, session_info.session_id " +
            "from course_info natural join course_session_list left join session_info " +
            "on course_session_list.session_id=session_info.session_id " +
            "where session_info.session_id=?", [request.body.sessionID], function (error, results, fields) {
            if (results.length > 0) {
                response["course_id"] = results[0].course_id;
                response["session_id"] = results[0].session_id;
                response["tutorial_id"] = "0000";
                response["sid"] = global.sid;
                connection.query("insert into shopping_cart values (?, ?, ?, ?)", [response["course_id"], response["session_id"], response["tutorial_id"], response["sid"]], function (err, re, fields){});
                connection.query("UPDATE session_info SET popularity = popularity+1 WHERE session_id = ?", [response["session_id"]], function (err, re, fields) {});
            }
        });

    }
    else {
        response["session_id"] = request.body.sessionID;
        connection.query("delete from shopping_cart where session_id=?", [response["session_id"]], function (err, re, fields) {});
        connection.query("UPDATE session_info SET popularity = popularity-1 WHERE session_id = ?", [response["session_id"]], function (err, re, fields) {});
    }
}

/* VIEW SHOPPING CART FUNCTION */
/* get shopping cart */
app.post('/shoppingCart', getShoppingCart);

function getShoppingCart(request, response) {
    if (!global.loggedin) {
        return;
    }

    var sid = global.sid;
    
    var res = {courseData:[]};
    connection.query('select * from course_info natural join shopping_cart where sid=?', [sid], function(error, results, fields) {
        if (results.length > 0) {
            for (var i=0;i<results.length;i++) {
                var dt = {};
                dt["course_id"] = results[i].course_id;
                dt["session_id"] = results[i].session_id;
                dt["credit"] = results[i].credit;
                res.courseData.push(dt);
            }
            response.json(res);
        } else {
            response.json(res);
        }

    });
}

/* VIEW TIMETABLE FUNCTION */
/* get timetable */
app.post('/timeTable', getTimeTable);

function getTimeTable(request, response) {
    if (!global.loggedin) {
        return;
    }

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


/* COURSE SEARCH MODULE */
/*
    COURSE SEARCH FUNCTION
    Send course search result to the frontend.
*/
app.post('/courseSearch', courseSearch);

function courseSearch(request, response) {
    if (!global.loggedin) {
        return;
    }

    var word = request.body.keyword;
    var res = {courseData:[]};
    connection.query('select course_id, course_name, credit, department, course_session_list.session_id, lecturer, venue_1, venue_2, venue_3, session_start_time_1, ' +
        'session_start_time_2, session_start_time_3, session_end_time_1, session_end_time_2, session_end_time_3, quota, vacancy, evaluation, popularity, schedule, session_info.comment ' +
        'from course_info natural join course_session_list left join session_info ' +
        'on course_session_list.session_id=session_info.session_id', [],
        function(error, results, fields) {
        if (results.length > 0) {
            for (var i=0;i<results.length;i++) {
                for (var str in results[i]) {
                    if (!!results[i][str] && results[i][str].toString().toUpperCase().includes(word.toUpperCase())) {
                        var dt = new Object();
                        var popularity;
                        dt["course_id"] = results[i].course_id;
                        dt["course_name"] = results[i].course_name;
                        dt["credit"] = results[i].credit;
                        dt["department"] = results[i].department;
                        dt["session_id"] = results[i].session_id;
			            dt["lecturer"] = results[i].lecturer;
			            dt["venue_1"] = results[i].venue_1;
			            dt["venue_2"] = results[i].venue_2;
                        dt["venue_3"] = results[i].venue_3;
                        dt["session_start_time_1"] = results[i].session_start_time_1;
                        dt["session_start_time_2"] = results[i].session_start_time_2;
                        dt["session_start_time_3"] = results[i].session_start_time_3;
                        dt["session_end_time_1"] = results[i].session_end_time_1;
                        dt["session_end_time_2"] = results[i].session_end_time_2;
                        dt["session_end_time_3"] = results[i].session_end_time_3;
                        dt["quota"] = results[i].quota;
			            dt["vacancy"] = results[i].vacancy;
                        dt["evaluation"] = results[i].evaluation;
                        dt["popularity"] = results[i].popularity;
                        popularity = (results[i].popularity * 5 + 30).toFixed(2);
                        if(popularity * 0.9 > results[i].vacancy && results[i].vacancy != null){
                            dt['func'] = (results[i].vacancy/(popularity*0.9)).toFixed(2);
                        } else {
                            var number;
                            if(dt['vacancy'] > 0){
                                number = 1;
                                dt['func'] = number.toFixed(2);
                            } else {
                                number = 1;
                                dt['func'] = number.toFixed(2);
                            }
                        }
						dt["comment"] = results[i].comment;
                        dt["schedule"] = results[i].schedule;

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

/* FILTER */
/* check if search result courses are in shopping cart */
app.post("/inShoppingCart", inShoppingCart);
function inShoppingCart(request, response) {
    if (!global.loggedin) {
        return;
    }

    var res = request.body.courseData;
    for (var i=0;i<res.length;i++) {
        res[i]["in_shopping_cart"] = "false";
    }
    connection.query("select session_id from shopping_cart where sid=?", [global.sid], function (error, results, fields) {

        if (results.length > 0) {
            for (var i=0;i<results.length;i++) {
                for (var j=0;j<res.length;j++) {
                    if (results[i].session_id === res[j]["session_id"]) {
                        res[j]["in_shopping_cart"] = "true";
                        break;
                    }
                }
            }
        }
        response.json(res);

    });
}

/* FILTER */
/* check if search result courses are enrolled or passed */
app.post("/isEnrolled", isEnrolled);
function isEnrolled(request, response){
    var res = request.body.courseData;
    for (var i=0; i<res.length;i++){
        res[i]["is_enrolled"] = "false";
    }
    connection.query("select course_id from course_history where sid=?", [global.sid], function(error, results, fields) {
        if (results.length > 0) {
            for (var i=0;i<results.length;i++) {
                for (var j=0;j<res.length;j++) {
                    if (results[i].course_id === res[j]["course_id"]) {
                        res[j]["is_enrolled"] = "true";
                        break;
                    }
                }
            }
        }
        response.json(res);
    });
}

/* FILTER */
/* check if search result courses need prerequisite */
app.post("/needPrerequisite", needPrerequisite);
function needPrerequisite(request, response){
    var res = request.body.courseData;
    for (var i=0; i<res.length;i++){
        res[i]["need_prerequisite"] = "false";
    }
    connection.query("select * from prerequisite_list", function(error, results, fields) {
        if (results.length > 0) {
            for (var i=0;i<results.length;i++) {
                for (var j=0;j<res.length;j++) {
                    if (results[i].course_id === res[j]["course_id"]) {
                        res[j]["need_prerequisite"] = "true";
                        break;
                    }
                }
            }
        }
    });
    connection.query("select course_history.course_id as course_id, prerequisite_list.course_id as fulfilling, prerequisite_list.group from course_history left join prerequisite_list on course_history.course_id = prerequisite_list.prerequisite_id where sid=?", [global.sid], function(error, results, fields) {
        if (results.length > 0) {
            for (var i=0;i<results.length;i++) {
                for (var j=0;j<res.length;j++) {
                    if (results[i].fulfilling === res[j]["course_id"]) {
                        res[j]["need_prerequisite"] = "false";
                        break;
                    }
                }
            }
        }
        response.json(res);
    });
}

/* PLAN GENERATION MODULE */
app.post('/coursePlan', getCoursePlanTimeTable);
function getCoursePlanTimeTable (request, response) {
    if (!global.loggedin) {
        return;
    }

    var ret = {courseData: []};
    connection.query("select * from course_plan where sid=? and plan_index=?", [global.sid, global.course_plan_next_index-1], function (err, res, f) {
        ret["courseData"] = JSON.parse(JSON.stringify(res));
        response.json(ret);
    })
}

/* generate plan */
app.post('/generatePlan', generatePlan);
function generatePlan (request, response) {
    if (!global.loggedin) {
        return;
    }

    /*
    coursedData: array of [course_id, session_id, preference]
     */
    var res = request.body.courseData;
    var ret = [];
    for (var i=0;i<res.length;i++) {
        res[i]["tutorial_info"] = [];
    }

    connection.query('select session_id, session_start_time_1, session_start_time_2, session_start_time_3, session_end_time_1, session_end_time_2, session_end_time_3, session_tutorial_list.tutorial_id, tutorial_start_time_1, tutorial_end_time_1 ' +
        'from session_info natural join session_tutorial_list left join tutorial_info on tutorial_info.tutorial_id=session_tutorial_list.tutorial_id ', [], function(error, results, fields) {
        if (results.length > 0) {
            for (var i=0;i<results.length;i++) {
                for (var j=0;j<res.length;j++) {
                    if (res[j]["session_id"] === results[i].session_id) {
                        /*
                        this part information can be overwritten if one session has many tutorial options
                         */
                        if (results[i].session_start_time_1 === null) {
                            res[j]["session_start_time_1"] = 0
                        }
                        else {
                            res[j]["session_start_time_1"] = results[i].session_start_time_1.getTime() / global.time_convert;
                        }

                        if (results[i].session_start_time_2 === null) {
                            res[j]["session_start_time_2"] = 0
                        }
                        else {
                            res[j]["session_start_time_2"] = results[i].session_start_time_2.getTime() / global.global.time_convert;
                        }

                        if (results[i].session_start_time_3 === null) {
                            res[j]["session_start_time_3"] = 0
                        }
                        else {
                            res[j]["session_start_time_3"] = results[i].session_start_time_3.getTime() / global.global.time_convert;
                        }

                        if (results[i].session_end_time_1 === null) {
                            res[j]["session_end_time_1"] = 0
                        }
                        else {
                            res[j]["session_end_time_1"] = results[i].session_end_time_1.getTime() / global.global.time_convert;
                        }

                        if (results[i].session_end_time_2 === null) {
                            res[j]["session_end_time_2"] = 0
                        }
                        else {
                            res[j]["session_end_time_2"] = results[i].session_end_time_2.getTime() / global.global.time_convert;
                        }

                        if (results[i].session_end_time_3 === null) {
                            res[j]["session_end_time_3"] = 0
                        }
                        else {
                            res[j]["session_end_time_3"] = results[i].session_end_time_3.getTime() / global.global.time_convert;
                        }



                        /*
                        unique to tutorial
                         */
                        var tut = {};
                        tut["tutorial_id"] = results[i].tutorial_id;
                        tut["tutorial_start_time_1"] = results[i].tutorial_start_time_1.getTime() / global.global.time_convert;
                        tut["tutorial_end_time_1"] = results[i].tutorial_end_time_1.getTime() / global.global.time_convert;
                        tut["is_valid"] = "true";
                        res[j]["tutorial_info"].push(tut);
                    }
                }
            }

            /*
            generate plan
             */
            var total_credits = 0;
            for(var i=0;i<res.length;i++) {
                if (total_credits > global.max_credits_per_term) {
                    break;
                }
                var conflict = "false";
                for (var j=0;j<ret.length;j++) {
                    /*
                    check session time conflict
                    */
                    if (res[i]["session_start_time_1"] !== 0) {
                        if (ret[j]["session_start_time_1"] !== 0 && !(res[i]["session_start_time_1"] >= ret[j]["session_end_time_1"] || res[i]["session_end_time_1"] <= ret[j]["session_start_time_1"])) {
                            conflict = "true";
                            break;
                        }
                        if (ret[j]["session_start_time_2"] !== 0 && !(res[i]["session_start_time_1"] >= ret[j]["session_end_time_2"] || res[i]["session_end_time_1"] <= ret[j]["session_start_time_2"])) {
                            conflict = "true";
                            break;
                        }
                        if (ret[j]["session_start_time_3"] !== 0 && !(res[i]["session_start_time_1"] >= ret[j]["session_end_time_3"] || res[i]["session_end_time_1"] <= ret[j]["session_start_time_3"])) {
                            conflict = "true";
                            break;
                        }
                    }

                    if (res[i]["session_start_time_2"] !== 0) {
                        if (ret[j]["session_start_time_1"] !== 0 && !(res[i]["session_start_time_2"] >= ret[j]["session_end_time_1"] || res[i]["session_end_time_2"] <= ret[j]["session_start_time_1"])) {
                            conflict = "true";
                            break;
                        }
                        if (ret[j]["session_start_time_2"] !== 0 && !(res[i]["session_start_time_2"] >= ret[j]["session_end_time_2"] || res[i]["session_end_time_2"] <= ret[j]["session_start_time_2"])) {
                            conflict = "true";
                            break;
                        }
                        if (ret[j]["session_start_time_3"] !== 0 && !(res[i]["session_start_time_2"] >= ret[j]["session_end_time_3"] || res[i]["session_end_time_2"] <= ret[j]["session_start_time_3"])) {
                            conflict = "true";
                            break;
                        }
                    }

                    if (res[i]["session_start_time_3"] !== 0) {
                        if (ret[j]["session_start_time_1"] !== 0 && !(res[i]["session_start_time_3"] >= ret[j]["session_end_time_1"] || res[i]["session_end_time_3"] <= ret[j]["session_start_time_1"])) {
                            conflict = "true";
                            break;
                        }
                        if (ret[j]["session_start_time_2"] !== 0 && !(res[i]["session_start_time_3"] >= ret[j]["session_end_time_2"] || res[i]["session_end_time_3"] <= ret[j]["session_start_time_2"])) {
                            conflict = "true";
                            break;
                        }
                        if (ret[j]["session_start_time_3"] !== 0 && !(res[i]["session_start_time_3"] >= ret[j]["session_end_time_3"] || res[i]["session_end_time_3"] <= ret[j]["session_start_time_3"])) {
                            conflict = "true";
                            break;
                        }
                    }

                    /*
                    check tutorial time conflict
                     */
                    var tmp = "true";
                    for (var k=0;k<res[i]["tutorial_info"].length;k++) {
                        if (res[i]["tutorial_info"][k]["is_valid"] === "true" && !(res[i]["tutorial_info"][k]["tutorial_end_time_1"] <= ret[j]["tutorial_info"]["tutorial_start_time_1"] || res[i]["tutorial_info"][k]["tutorial_start_time_1"] >= ret[j]["tutorial_info"]["tutorial_end_time_1"])) {
                            res[i]["tutorial_info"][k]["is_valid"] = "false";
                        }
                    }
                    for (var k=0;k<res[i]["tutorial_info"].length;k++) {
                        if (res[i]["tutorial_info"][k]["is_valid"] === "true") {
                            tmp = "false";
                            break;
                        }
                    }
                    if (tmp === "true") {
                        conflict = "true";
                        break;
                    }
                }

                if (conflict === "false" && total_credits + parseInt(res[i]["credit"]) <= global.max_credits_per_term) {
                    for (var w=0;w<res[i]["tutorial_info"].length;w++) {
                        if (res[i]["tutorial_info"][w]["is_valid"] === "true") {
                            ret.push(res[i]);
                            ret[ret.length-1]["tutorial_info"] = {tutorial_id: res[i]["tutorial_info"][w]["tutorial_id"], tutorial_start_time_1: res[i]["tutorial_info"][w]["tutorial_start_time_1"], tutorial_end_time_1: res[i]["tutorial_info"][w]["tutorial_end_time_1"]};
                            total_credits += parseInt(res[i]["credit"]);
                        }
                    }

                }

            }

            for(var i=0;i<ret.length;i++) {
                ret[i]["session_start_time_1"] = new Date(ret[i]["session_start_time_1"] * global.time_convert);
                ret[i]["session_start_time_2"] = new Date(ret[i]["session_start_time_2"] * global.time_convert);
                ret[i]["session_start_time_3"] = new Date(ret[i]["session_start_time_3"] * global.time_convert);
                ret[i]["session_end_time_1"] = new Date(ret[i]["session_end_time_1"] * global.time_convert);
                ret[i]["session_end_time_2"] = new Date(ret[i]["session_end_time_2"] * global.time_convert);
                ret[i]["session_end_time_3"] = new Date(ret[i]["session_end_time_3"] * global.time_convert);
                ret[i]["tutorial_info"]["tutorial_start_time_1"] = new Date(ret[i]["tutorial_info"]["tutorial_start_time_1"] * global.time_convert);
                ret[i]["tutorial_info"]["tutorial_end_time_1"] = new Date(ret[i]["tutorial_info"]["tutorial_end_time_1"] * global.time_convert);
            }

            for(var i=0;i<ret.length;i++) {

                connection.query("insert into course_plan values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", [ret[i]["course_id"], ret[i]["session_id"], ret[i]["credit"], ret[i]["preference"],
                    ret[i]["tutorial_info"]["tutorial_id"], ret[i]["tutorial_info"]["tutorial_start_time_1"], ret[i]["tutorial_info"]["tutorial_end_time_1"],
                    ret[i]["session_start_time_1"], ret[i]["session_start_time_2"], ret[i]["session_start_time_3"],
                    ret[i]["session_end_time_1"], ret[i]["session_end_time_2"], ret[i]["session_end_time_3"], global.sid, global.course_plan_next_index]);
            }

            global.course_plan_next_index += 1;
            connection.query("update user set plan_index=? where sid=?",[global.course_plan_next_index, global.sid]);
            response.json(ret);
        } else {
            response.json(ret);
        }
    });

}
