
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `abonne` (
  `idab` int(11) NOT NULL,
  `nomab` varchar(100) NOT NULL,
  PRIMARY KEY (`idab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `abonne` (`idab`, `nomab`) VALUES
(1, 'sawsen jbali'),

CREATE TABLE IF NOT EXISTS `livre` (
  `idlivre` int(11) NOT NULL,
  `titre` varchar(90) NOT NULL,
  `autheur` varchar(50) DEFAULT NULL,
  `disponible` varchar(10) NOT NULL,
  `idabonne` int(11) DEFAULT NULL,
  PRIMARY KEY (`idlivre`),
  KEY `fk1` (`idabonne`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `livre` (`idlivre`, `titre`, `autheur`, `disponible`, `idabonne`) VALUES
(1, 'game of throwns', NULL, 'OUI', NULL),

CREATE TABLE IF NOT EXISTS `pret` (
`idlivre` int(11)
,`titre` varchar(90)
,`nomab` varchar(100)
);
DROP TABLE IF EXISTS `pret`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pret` AS select `livre`.`idlivre` AS `idlivre`,`livre`.`titre` AS `titre`,`abonne`.`nomab` AS `nomab` from (`livre` join `abonne` on((`livre`.`idabonne` = `abonne`.`idab`))) where (`livre`.`disponible` = 'NON');
ALTER TABLE `livre`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`idabonne`) REFERENCES `abonne` (`idab`);

