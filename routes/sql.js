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
	console.log(req.query.val);
	if(req.query.val) {
		console.log("hava val");
		var qq = "UPDATE seats.work SET seats = " + req.query.val + "  WHERE place =" + req.query.name;
		console.log(qq);
		var ans;
		connection.query(qq, function(err, rows, fields) {
			if(err) throw err;
			//ans = new String(rows[0].seats);
			//console.log('The solution is: ', ans);
			res.send("succerss");

		});
	} else {
		//var qq=["a","b"].join('');
		var qq = "SELECT `seats` FROM seats.`work` where place=" + req.query.name;
		console.log(qq);
		var ans;
		connection.query(qq, function(err, rows, fields) {
			if(err) throw err;
			ans = new String(rows[0].seats);
			console.log('The solution is: ', ans);
			res.send(ans);

		});
	}
	connection.end();

});

module.exports = router;