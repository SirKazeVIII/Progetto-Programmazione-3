-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 12, 2021 alle 21:02
-- Versione del server: 10.4.13-MariaDB
-- Versione PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `programmazione_3`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `allarme`
--

CREATE TABLE `allarme` (
  `ID_Allarme` int(11) NOT NULL,
  `Data_Inizio` datetime NOT NULL,
  `Data_Fine` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `allarme`
--

INSERT INTO `allarme` (`ID_Allarme`, `Data_Inizio`, `Data_Fine`) VALUES
(1, '2019-08-10 11:50:00', '2020-08-10 10:51:00'),
(2, '2019-08-10 11:50:00', '2020-08-10 10:51:00'),
(3, '2021-02-26 20:31:58', '2021-02-26 20:31:58'),
(4, '2021-02-26 20:32:04', '2021-02-26 20:32:04'),
(5, '2021-02-26 20:32:21', '2021-02-26 20:32:21'),
(6, '2021-02-26 20:32:27', '2021-02-26 20:32:27'),
(7, '2021-02-26 20:32:33', '2021-02-26 20:32:33'),
(8, '2021-02-26 20:32:39', '2021-02-26 20:32:39'),
(9, '2021-02-26 20:41:12', '2021-02-26 20:36:12'),
(10, '2021-02-26 20:41:18', '2021-02-26 20:36:18'),
(11, '2021-02-26 20:41:25', '2021-02-26 20:36:25'),
(12, '2021-02-26 20:41:31', '2021-02-26 20:36:31'),
(13, '2021-02-26 20:41:37', '2021-02-26 20:36:37'),
(14, '2021-02-26 20:32:21', '2021-02-26 20:37:21'),
(15, '2021-02-26 20:32:27', '2021-02-26 20:37:27'),
(16, '2021-02-26 20:32:33', '2021-02-26 20:37:33'),
(17, '2021-02-26 20:32:39', '2021-02-26 20:37:39');

-- --------------------------------------------------------

--
-- Struttura della tabella `sensori_attivabili`
--

CREATE TABLE `sensori_attivabili` (
  `Nome_SA` varchar(50) NOT NULL,
  `Tipo_Consumo_SA` varchar(10) NOT NULL,
  `Consumo_SA` int(11) NOT NULL,
  `Tempo_Attivazione` int(11) NOT NULL,
  `AddOn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `sensori_attivabili`
--

INSERT INTO `sensori_attivabili` (`Nome_SA`, `Tipo_Consumo_SA`, `Consumo_SA`, `Tempo_Attivazione`, `AddOn`) VALUES
('Allarme', 'KWH', 10, 10, ''),
('Luce di Emergenza', 'KWH', 20, 3, ''),
('Sistema Anti Incendio', 'KWH', 22, 5, 'Sirena');

-- --------------------------------------------------------

--
-- Struttura della tabella `sensori_monitoraggio`
--

CREATE TABLE `sensori_monitoraggio` (
  `Nome_SM` varchar(50) NOT NULL,
  `Tipo_Consumo_SM` varchar(10) NOT NULL,
  `Consumo_SM` int(11) NOT NULL,
  `Sensore_Attivato` varchar(50) NOT NULL,
  `AddOn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `sensori_monitoraggio`
--

INSERT INTO `sensori_monitoraggio` (`Nome_SM`, `Tipo_Consumo_SM`, `Consumo_SM`, `Sensore_Attivato`, `AddOn`) VALUES
('Contatore Smart', 'KWH', 12, 'Luce di Emergenza', 'Monitor'),
('Sensore temperatura', 'KWH', 10, 'Sistema Anti Incendio', NULL),
('Serratura Elettronica', 'KWH', 3, 'Allarme', NULL),
('Telecamera', 'KWH', 10, 'Allarme', 'Microfono');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `allarme`
--
ALTER TABLE `allarme`
  ADD PRIMARY KEY (`ID_Allarme`);

--
-- Indici per le tabelle `sensori_attivabili`
--
ALTER TABLE `sensori_attivabili`
  ADD PRIMARY KEY (`Nome_SA`);

--
-- Indici per le tabelle `sensori_monitoraggio`
--
ALTER TABLE `sensori_monitoraggio`
  ADD PRIMARY KEY (`Nome_SM`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `allarme`
--
ALTER TABLE `allarme`
  MODIFY `ID_Allarme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
