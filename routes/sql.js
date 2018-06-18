var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get(/\w*/, function(req, res, next) {
	var mysql = require('mysql');
	var connection = mysql.createConnection({
		host: 'localhost',
		user: 'root',
		password: '123456'
	});

	connection.connect();
	if (req.query.name)
	{
	//var qq=["a","b"].join('');
	var qq = "SELECT `seats` FROM movie.data where performance='" + req.query.name+"'";
	console.log(qq);
	var ans;
	connection.query(qq, function(err, rows, fields) {
		if(err) throw err;
		ans = new String(rows[0].seats);
		console.log('The solution is: ', ans);
		res.send(ans);

	});
	}
	else
	{
		var qq = "SELECT val from movie.moviename where name like'%"+req.query.moviename+"%'";
		console.log(qq);
		var ans="";
		connection.query(qq, function(err, rows, fields) {
		if(err) throw err;
		for (var row of rows)
		ans+=row.val+',';
		ans=ans.substr(0,ans.length-1)
		console.log('The solution is: ', ans);
		res.send(ans);
	});
	}
	connection.end();

});
router.put(/\w*/, function(req, res, next) {
	var mysql = require('mysql');
	var connection = mysql.createConnection({
		host: 'localhost',
		user: 'root',
		password: '123456'
	});
	connection.connect();
	//console.log(req);
	console.log(req.body.name);
	console.log(req.body.val);
	var qq = "UPDATE movie.data SET seats = " + req.body.val + "  WHERE performance ='" + req.body.name+"'";
	console.log(qq);
	connection.query(qq, function(err, rows, fields) {
		if(err) throw err;
		

	});
	res.send("success")
	connection.end();
});
module.exports = router;