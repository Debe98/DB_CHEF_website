SET storage_engine=InnoDB;
SET FOREIGN_KEY_CHECKS=1; 

CREATE DATABASE IF NOT EXISTS TVCHEF;
USE TVCHEF;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `TVCHEF`
--

-- --------------------------------------------------------
-- Creazione Tabelle

 DROP TABLE IF EXISTS Autore;
 DROP TABLE IF EXISTS Opera;
--
-- Struttura della tabella `CHEF`
--

CREATE TABLE IF NOT EXISTS `CHEF` (
  `CodiceFiscaleChef` varchar(20) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Nazione` varchar(20) NOT NULL,
  `età` int(3),
  PRIMARY KEY (`CodiceFiscaleChef`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dati per la tabella `CHEF`
--

INSERT INTO `CHEF` (`CodiceFiscaleChef`, `Nome`, `Cognome`, `Nazione`, `età`) VALUES
('DBRLCU98T28L219Y', 'Luca', 'Debernardi', 'Italia', 19),
('FHHBJF67G68V786U', 'Carlo', 'Cracco', 'Italia', 56),
('MBVBVV83J56S235F', 'Giggi', 'Turtelli', 'Cambogia', 45),
('GDY67R6TF8686FF6', 'Artonso', 'Duddi', 'Filippine', 98),
('TRDFTYGGYTFTGYGG', 'Pippo', 'Baudo', 'Italia', 182),
('TRDFTYGGYTFTGYGG', 'Arpinto', 'Zuzzu', 'Niger');

-- --------------------------------------------------------

--
-- Struttura della tabella `hotel`
--

CREATE TABLE IF NOT EXISTS `PROGRAMMATV` (
  `CodProgramma` varchar(3) NOT NULL,
  `Titolo` varchar(20) NOT NULL,
  `CanaleTV` varchar(20) NOT NULL,
  `Editore` varchar(20) NOT NULL,
  PRIMARY KEY (`CodProgramma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `hotel`
--

INSERT INTO `PROGRAMMATV` (`CodH`, `Indirizzo`, `Nome`) VALUES
(1, 'Via Verdi 15', 'Hotel Regio'),
(2, 'Piazza Castello 2', 'Hotel Centrale'),
(3, 'Corso Vittorio 200', 'Hotel Porta Nuova'),
(4, 'Via Lucana 25', 'Hotel I Saraceni'),
(5, 'Via Lecce 12', 'Hotel Stazione'),
(6, 'Corso Stati Uniti 10', 'Hotel Luxor'),
(7, 'Via Molise 15', 'Hotel Aurora'),
(8, 'Corso Montevecchio 62', 'Hotel Montevecchio'),
(9, 'Corso Francia 107', 'Hotel Nobilis');
-- --------------------------------------------------------

--
-- Struttura della tabella `locazione`
--

CREATE TABLE IF NOT EXISTS `locazione` (
  `CAP` int(11) NOT NULL,
  `CodH` int(11) NOT NULL,
  PRIMARY KEY (`CAP`,`CodH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `locazione`
--

INSERT INTO locazione (`CAP`, `CodH`) VALUES
(10129, 1),
(10129, 2),
(10129, 3),
(75100, 4),
(75100, 5),
(10129, 6),
(10150, 7),
(10150, 8),
(10143, 9);
-- --------------------------------------------------------

--
-- Struttura della tabella `stanza`
--

CREATE TABLE IF NOT EXISTS `stanza` (
  `CodH` int(11) NOT NULL,
  `Numero` int(11) NOT NULL,
  `StatoPrenotazione` varchar(20) NOT NULL,
  `Costo` int(11) NOT NULL,
  `Tipologia` varchar(20) NOT NULL,
  PRIMARY KEY (`CodH`,`Numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `stanza`
--

INSERT INTO `stanza` (`CodH`, `Numero`, `StatoPrenotazione`, `Costo`, `Tipologia`) VALUES
(1, 210, 'Libero', 60, 'Singola'),
(1, 212, 'Libero', 65, 'Singola'),
(1, 214, 'Libero', 80, 'Doppia'),
(2, 310, 'Libero', 55, 'Singola'),
(2, 314, 'Libero', 90, 'Doppia'),
(3, 316, 'Libero', 110, 'Doppia'),
(3, 317, 'Libero', 70, 'Singola'),
(4, 210, 'Libero', 35, 'Singola'),
(4, 214, 'Libero', 40, 'Singola'),
(4, 216, 'Occupato', 35, 'Singola'),
(4, 317, 'Libero', 40, 'Doppia'),
(5, 100, 'Libero', 40, 'Doppia'),
(5, 120, 'Libero', 40, 'Doppia'),
(6, 300, 'Libero', 90, 'Singola'),
(6, 305, 'Libero', 130, 'Doppia'),
(7, 243, 'Libero', 50, 'Singola'),
(7, 245, 'Libero', 55, 'Singola'),
(8, 102, 'Libero', 60, 'Singola'),
(8, 103, 'Libero', 70, 'Doppia'),
(9, 306, 'Libero', 100, 'Doppia'),
(8, 307, 'Libero', 120, 'Doppia');

DADADAD CHECK (Qta IS NOT NULL and Qta>0)
