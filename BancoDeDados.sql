-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.10-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para financeiro
CREATE DATABASE IF NOT EXISTS `financeiro` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `financeiro`;


-- Copiando estrutura para tabela financeiro.contas
CREATE TABLE IF NOT EXISTS `contas` (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(50) DEFAULT '0',
  `Nome` varchar(50) DEFAULT '0',
  `Senha` varchar(50) DEFAULT '0',
  `Saldo` double DEFAULT '0',
  `Negativ` double DEFAULT '0',
  PRIMARY KEY (`CID`),
  UNIQUE KEY `CID` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela financeiro.contas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contas` DISABLE KEYS */;
INSERT INTO `contas` (`CID`, `Usuario`, `Nome`, `Senha`, `Saldo`, `Negativ`) VALUES
	(1, 'User', 'Joao', 'senha', 0, 0);
/*!40000 ALTER TABLE `contas` ENABLE KEYS */;


-- Copiando estrutura para tabela financeiro.saldo
CREATE TABLE IF NOT EXISTS `saldo` (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `SNome` varchar(50) DEFAULT NULL,
  `Descricao` text,
  `Tipo` varchar(50) DEFAULT NULL,
  `ValorPos` double DEFAULT NULL,
  `ValorNeg` double DEFAULT NULL,
  `Ativo` int(11) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  UNIQUE KEY `SID` (`SID`),
  UNIQUE KEY `SNome` (`SNome`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela financeiro.saldo: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `saldo` DISABLE KEYS */;
INSERT INTO `saldo` (`SID`, `SNome`, `Descricao`, `Tipo`, `ValorPos`, `ValorNeg`, `Ativo`) VALUES
	(1, 'Teste1', '', 'Salario', 1000, NULL, 0),
	(2, 'Teste2', '', 'Recompensa', 500, NULL, 0),
	(4, 'Conta de Luz', '', 'Conta de Luz', NULL, 56, 0);
/*!40000 ALTER TABLE `saldo` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
