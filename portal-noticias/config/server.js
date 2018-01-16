var express = require('express'),
	consign = require('consign'),
	app 	= express(),
	bodyParser = require('body-parser'),
	expressValidator = require('express-validator');

	app.set('view engine','ejs');
	app.set('views','./app/views');

	app.use(express.static('./app/public'));
	app.use(bodyParser.urlencoded({extended:true}));
	app.use(expressValidator());

consign().include('app/routes')
	.then('config/dbConexao.js')
	.then('app/models')
	.then('app/controllers')
	.into(app);

module.exports = app;
