var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get("/mylike", function(req, res, next) {
	var mysql = require('mysql');
	var connection = mysql.createConnection({
		host: 'localhost',
		user: 'root',
		password: '123456'
	});
	connection.connect();
	let qq = "SELECT movieid FROM movie.mylike where account='"+req.query.account+"'";
	console.log(qq);
	var idarr="";
	connection.query(qq, function(err, rows, fields) {
		if(err) throw err;
		if (!rows.length)
		{
			return res.json([]);
		}
		for (var row of rows)
		{
			//console.log("movieid=",row.movieid);
			idarr+="'"+row.movieid+"',";
		}
		idarr=idarr.substr(0,idarr.length-1);
		var ans=[];
		let qq="SELECT * FROM movie.movie_detail where id in("+idarr+")";
		console.log(qq);
		connection.query(qq, function(err, rows, fields) {
		if(err) throw err;
		for (var row of rows)
		{
			var now={};
			now.id=row.id;
			now.name=row.name;
			now.score=row.score;
			now.director=row.director;
			now.actor=row.actor;
			now.comment=row.comment;
			now.ename=row.ename;
			now.mtime=row.mtime;
			now.ctime=row.ctime;
			now.info=row.info;
			now.type=row.type;
			ans.push(now);
		}
		console.log(ans);
		return res.json(ans);
		});
		//return res.json(ans);
	});
	
});
router.get("/detail", function(req, res, next) {
	var mysql = require('mysql');
	var connection = mysql.createConnection({
		host: 'localhost',
		user: 'root',
		password: '123456'
	});
	connection.connect();
	if (!req.query.id)
	{
	var qq = "SELECT * FROM movie.movie_detail";
	console.log(qq);
	var ans=[];
	connection.query(qq, function(err, rows, fields) {
		if(err) throw err;
		for (var row of rows)
		{
			var now={};
			now.id=row.id;
			now.name=row.name;
			now.score=row.score;
			now.director=row.director;
			now.actor=row.actor;
			now.comment=row.comment;
			now.ename=row.ename;
			now.mtime=row.mtime;
			now.ctime=row.ctime;
			now.info=row.info;
			now.type=row.type;
			ans.push(now);
		}
		console.log(ans);
		return res.json(ans);
	});
	}
	else
	{
		var qq = "SELECT * FROM movie.movie_detail where id='"+req.query.id+"'";
		console.log(qq);
		var ans=[];
		connection.query(qq, function(err, rows, fields) {
			if(err) throw err;
			for (var row of rows)
			{
				var now={};
				now.id=row.id;
				now.name=row.name;
				now.score=row.score;
				now.director=row.director;
				now.actor=row.actor;
				now.comment=row.comment;
				now.ename=row.ename;
				now.mtime=row.mtime;
				now.ctime=row.ctime;
				now.info=row.info;
				now.type=row.type;
				ans.push(now);
			}
			console.log(ans);
			return res.json(ans);
		});
	}
});
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
	res.send("success");
	connection.end();
});
router.post("/like", function(req, res, next) {
	var mysql = require('mysql');
	var connection = mysql.createConnection({
		host: 'localhost',
		user: 'root',
		password: '123456'
	});
	connection.connect();
	//console.log(req);
	console.log(req.body.account);
	console.log(req.body.id);
	let qq="select * from movie.mylike where account='"+req.body.account+"' and movieid='"+req.body.id+"'";
	console.log(qq);
	connection.query(qq, function(err, rows, fields) {
		if(err) throw err;
		if (rows.length) res.send("fail");
		let qq = "INSERT INTO movie.mylike (account, movieid) VALUES ('"+req.body.account+"','"+req.body.id+"')";
		console.log(qq);
		connection.query(qq, function(err, rows, fields) {
			if(err) throw err;
			res.send("success");
		});
	});
	
});
module.exports = router;