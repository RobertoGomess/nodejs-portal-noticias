module.exports.noticias = function (app,req,res) {
	var dbConexao = app.config.dbConexao(); 
	var noticiasModel = new app.app.models.NoticiasDAO(dbConexao);

	noticiasModel.getNoticias(function(error,result){
		res.render('noticias/noticias',{noticias : result});
	});
}

module.exports.noticia = function (app,req,res) {

	var dbConexao = app.config.dbConexao(); 
	var noticiasModel = new app.app.models.NoticiasDAO(dbConexao);

	var id_noticia = req.query;

	if (id_noticia == null) {
		res.render('noticias/noticia',{noticia : null });
		return;
	}

	noticiasModel.getNoticia(id_noticia,function(error,result){

		res.render('noticias/noticia',{noticia : result});
		
	});
	
}