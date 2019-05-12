-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.39-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para proj_ratings
CREATE DATABASE IF NOT EXISTS `proj_ratings` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `proj_ratings`;

-- Copiando estrutura para tabela proj_ratings.filmes
CREATE TABLE IF NOT EXISTS `filmes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `media` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela proj_ratings.filmes: ~0 rows (aproximadamente)
DELETE FROM `filmes`;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` (`id`, `titulo`, `media`) VALUES
	(1, 'Madruagada dos Mortos (2004)', 5);
INSERT INTO `filmes` (`id`, `titulo`, `media`) VALUES
	(2, 'Matrix', 4.5);
INSERT INTO `filmes` (`id`, `titulo`, `media`) VALUES
	(3, 'O Poderoso Chefão', 2.5);
INSERT INTO `filmes` (`id`, `titulo`, `media`) VALUES
	(4, 'John Wick', 4.66667);
/*!40000 ALTER TABLE `filmes` ENABLE KEYS */;

-- Copiando estrutura para tabela proj_ratings.votos
CREATE TABLE IF NOT EXISTS `votos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkfil` int(11) NOT NULL,
  `nota` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela proj_ratings.votos: ~0 rows (aproximadamente)
DELETE FROM `votos`;
/*!40000 ALTER TABLE `votos` DISABLE KEYS */;
INSERT INTO `votos` (`id`, `fkfil`, `nota`) VALUES
	(1, 1, 5);
INSERT INTO `votos` (`id`, `fkfil`, `nota`) VALUES
	(2, 2, 5);
INSERT INTO `votos` (`id`, `fkfil`, `nota`) VALUES
	(3, 3, 3);
INSERT INTO `votos` (`id`, `fkfil`, `nota`) VALUES
	(4, 4, 5);
INSERT INTO `votos` (`id`, `fkfil`, `nota`) VALUES
	(5, 1, 5);
INSERT INTO `votos` (`id`, `fkfil`, `nota`) VALUES
	(6, 2, 4);
INSERT INTO `votos` (`id`, `fkfil`, `nota`) VALUES
	(7, 3, 2);
INSERT INTO `votos` (`id`, `fkfil`, `nota`) VALUES
	(8, 4, 4);
INSERT INTO `votos` (`id`, `fkfil`, `nota`) VALUES
	(9, 4, 5);
/*!40000 ALTER TABLE `votos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
