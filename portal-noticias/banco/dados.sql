-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.21-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando dados para a tabela portal_noticias.noticias: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
REPLACE INTO `noticias` (`id_noticia`, `titulo`, `noticia`, `data_criacao`, `resumo`, `autor`, `data_noticia`) VALUES
	(1, 'Titulo da noticia', 'conteudo da noticia', '2018-01-12 22:25:55', NULL, NULL, NULL),
	(2, 'outra noticia', 'conteudo da outra noticia', '2018-01-12 22:48:33', NULL, NULL, NULL),
	(3, 'Nova noticia via model insert', 'Essa noticia foi inserida pelo modelNoticias na function insertNoticia.', '2018-01-13 12:52:02', NULL, NULL, NULL),
	(4, 'Nova noticia redirect', 'conteúdo no noticia redirect', '2018-01-13 13:02:32', NULL, NULL, NULL),
	(5, 'Implementando classe js', 'Conteudo: utilizando classes js', '2018-01-13 13:20:42', NULL, NULL, NULL),
	(6, 'Refactoring modelnoticia', 'conteudo da refact noticia', '2018-01-13 13:26:15', NULL, NULL, NULL),
	(7, 'New noticia DAO', 'Conteudo da noticia DAO', '2018-01-13 13:34:21', NULL, NULL, NULL),
	(8, 'titulo da noticia insert ddd', 'conteudo da noticia', '2018-01-13 13:57:23', 'resumo', 'nome do autor', '2018-01-13'),
	(9, '', '', '2018-01-13 17:25:57', '', '', '0000-00-00'),
	(10, '', '', '2018-01-13 17:36:20', '', '', '0000-00-00'),
	(11, 'titulos', ' noticiaaaaa', '2018-01-13 18:15:40', 'resumooodd', 'autorrr', '2018-01-13'),
	(12, 'Titulo com controllers', 'agora implementamos o controllers ao projeto', '2018-01-13 18:39:10', 'Usando controllers', 'beto', '2018-01-13'),
	(13, 'Titulooooooo teste - Novo formulario', '          Utilizando novo formulario', '2018-01-13 20:19:48', 'resumooooooooo', 'nome do autor', '2018-01-13'),
	(14, 'Teste 2018', ' Noticia 201888888', '2018-01-14 00:00:57', 'resumooo 201888888', 'Eu mesmo', '2018-01-14'),
	(15, 'New noticiaaa', ' Ser um bom desenvolvedor é dificil, porém com esforço tudo é possível.', '2018-01-14 00:57:49', 'Boa notica sempre chega', 'Beto', '2018-01-14'),
	(16, 'hfghfghfgh', 'hfghfghfghfghfghfghfghfhfhgfhfghfghf', '2018-01-14 03:16:09', 'hfghfhfghfghfghf', 'hfghfghfghfghfgh', '2018-01-14'),
	(17, '123145646546', 'Noticia Noticia Noticia Noticia Noticia Noticia Noticia Noticia Noticia Noticia Noticia NoticiaNoticiaNoticia', '2018-01-14 22:58:59', 'adasfdsafdsfsdf sdf sdf sdf sdf s', 'Beto', '2018-01-14');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
