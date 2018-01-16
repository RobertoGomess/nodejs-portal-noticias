module.exports.index = function (app,req,res) {
	
	var conexao = app.config.dbConexao();
	var noticiasDAO = new app.app.models.NoticiasDAO(conexao); 

	noticiasDAO.getUltimasNoticias(function (error,resultado) {
		res.render('home',{noticias:resultado});
	});
	
	
}