-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-03-2020 a las 00:56:12
-- Versión del servidor: 10.3.22-MariaDB-0+deb10u1
-- Versión de PHP: 7.3.14-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datos`
--
CREATE DATABASE IF NOT EXISTS `datos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `datos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clima`
--

CREATE TABLE `clima` (
  `id` text NOT NULL,
  `firma` text NOT NULL,
  `latitud` text NOT NULL,
  `longitud` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `variable` int(11) NOT NULL,
  `valor` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clima`
--

INSERT INTO `clima` (`id`, `firma`, `latitud`, `longitud`, `fecha`, `hora`, `variable`, `valor`) VALUES
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721794', '-101.185793', '2020-03-26', '17:00:02', 2, '22'),
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721801', '-101.18583', '2020-03-26', '17:01:02', 2, '22'),
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721785', '-101.185803', '2020-03-26', '17:02:02', 2, '22'),
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721794', '-101.185796', '2020-03-26', '17:03:02', 2, '22'),
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721786', '-101.185767', '2020-03-26', '17:04:02', 2, '22'),
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721793', '-101.185764', '2020-03-26', '17:05:02', 2, '22'),
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721794', '-101.185845', '2020-03-26', '17:06:02', 2, '22'),
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721792', '-101.185834', '2020-03-26', '17:07:02', 2, '22'),
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721785', '-101.185803', '2020-03-26', '17:08:02', 2, '22'),
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721787', '-101.185802', '2020-03-26', '17:09:02', 2, '22'),
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721787', '-101.185835', '2020-03-26', '17:10:02', 2, '22'),
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721803', '-101.185777', '2020-03-26', '17:11:03', 2, '22'),
('temperatura_01', 'c1d9632a87841466802786c74cef3596', '19.721796', '-101.185827', '2020-03-26', '17:12:03', 2, '22'),
('temperatura_01', '459a3e2cec391a05309ce6eb8bcb6cbe', '19.721791', '-101.18581', '2020-03-26', '22:43:13', 2, '22'),
('temperatura_01', '459a3e2cec391a05309ce6eb8bcb6cbe', '19.721797', '-101.185767', '2020-03-26', '22:44:13', 2, '22'),
('temperatura_01', '459a3e2cec391a05309ce6eb8bcb6cbe', '19.721785', '-101.185852', '2020-03-26', '22:45:13', 2, '22'),
('temperatura_01', '459a3e2cec391a05309ce6eb8bcb6cbe', '19.721789', '-101.185834', '2020-03-26', '22:46:13', 2, '22'),
('temperatura_01', '459a3e2cec391a05309ce6eb8bcb6cbe', '19.721785', '-101.185796', '2020-03-26', '22:47:13', 2, '22'),
('temperatura_01', '459a3e2cec391a05309ce6eb8bcb6cbe', '19.721802', '-101.185783', '2020-03-26', '22:48:13', 2, '22'),
('temperatura_01', '459a3e2cec391a05309ce6eb8bcb6cbe', '19.7218', '-101.185825', '2020-03-26', '22:49:13', 2, '22'),
('temperatura_01', '459a3e2cec391a05309ce6eb8bcb6cbe', '19.721794', '-101.185773', '2020-03-26', '22:50:13', 2, '22'),
('temperatura_01', 'ca5782c096582c2377ba75df10ce92ee', '19.721787', '-101.1858', '2020-03-26', '23:08:39', 2, '22'),
('temperatura_01', '68a1c7045858d4130c324ad03164ab69', '19.721793', '-101.185798', '2020-03-26', '23:28:45', 2, '22');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
