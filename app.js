var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var bodyParser = require('body-parser');
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var sqlRouter=require('./routes/sql');
var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
//sql();
app.use(bodyParser.json());
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'mzc_html')));
app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/sql',sqlRouter);
app.get(/a/, function(req, res) {
  res.send('/a/');
});

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});
/*app.get('/sql',function(req,res,next){
	console.log("sqlsql");
    res.render("01101");
	res.end();
    //next();
});*/
// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
