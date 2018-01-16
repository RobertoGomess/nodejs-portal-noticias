function NoticiasDAO(dbConexao) {
	this._dbConexao = dbConexao; 
}

NoticiasDAO.prototype.getNoticias = function(callback){
		this._dbConexao.query('SELECT * FROM noticias ORDER BY data_criacao DESC',callback);
	};

NoticiasDAO.prototype.getNoticia = function(id_noticia,callback){
	var sql = 'SELECT * FROM noticias WHERE id_noticia = '+ id_noticia.news;
	this._dbConexao.query(sql,callback);
}

NoticiasDAO.prototype.insertNoticia = function(noticia,callback){
	this._dbConexao.query(`INSERT INTO noticias set ?`,noticia,callback);
};

NoticiasDAO.prototype.getUltimasNoticias = function(callback) {
	this._dbConexao.query("SELECT * FROM noticias ORDER BY data_criacao DESC limit 5",callback);
};

module.exports = function () {
	return NoticiasDAO;	
};