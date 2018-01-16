
module.exports.formulario_inclusao_noticia = function(app,req,res) {
	var get   = req.query;
	var erros;
	var noticia;
	
	if( get.error!=null){
		erros = JSON.parse(get.error);
		noticia = JSON.parse(get.noticia);
		res.render('admin/form_add_noticia',{noticia:noticia,validacao:erros});
		return;
	}
	res.render('admin/form_add_noticia',{validacao:'',noticia:''});
}

module.exports.salvar_noticias = function(app,req,res) {

	var noticia = req.body;
		
		req.assert('titulo','Título é obrigatório').notEmpty();
		req.assert('resumo','Resumo é obrigatório').notEmpty();
		req.assert('resumo','Resumo deve conter entre 10 e 100 caracteres.').len(10,100);
		req.assert('autor','Autor é obrigatório').notEmpty();
		req.assert('data_noticia','Data da noticia é obrigatório').notEmpty();
		
		req.assert('noticia','Noticia é obrigatória').notEmpty();

		var erros = req.validationErrors();

		if(erros && noticia!=null){
			res.render('admin/form_add_noticia',{noticia:noticia,validacao:erros});
			
			return;
		}


		var dbConexao = app.config.dbConexao();
		var noticiasDAO = new app.app.models.NoticiasDAO(dbConexao);
		
		noticiasDAO.insertNoticia(noticia,function (error,retorno) {
				if(error){
					res.send('Ops !!! Ocorreu um erro: ' + erro);
				}else{
					res.redirect('/noticias');	
				}
				

		});
		
	
}