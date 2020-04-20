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
global.code = "12345678";
global.confirm = "0";

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
/* register */
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
                // ·¢ËÍtext»òÕßhtml¸ñÊ½
                text: 'Your active code is: '+code, // plain text body
                //html: fs.createReadStream(path.resolve(__dirname, 'confirm.html')) // Á÷
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

/* confirm */

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
        connection.query('INSERT INTO user (sid,password,name,email) VALUES (?,?,?,?)',[global.sid,global.password,global.name,global.email], function(error, results, fields){});
        response.send("Registration successed! Turn to the login page now.");
        response.end();
    } else {
        response.send("Incorrect code! Please check again.");
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

/* check if search result courses are in shopping cart*/
app.post("/inShoppingCart", inShoppingCart);
function inShoppingCart(request, response) {
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
