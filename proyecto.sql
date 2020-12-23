-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-12-2020 a las 16:20:15
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequence`
--

CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`) VALUES
(1, 'ESTEFANIA'),
(2, 'QUERALT'),
(3, 'JOAN'),
(4, 'JOAN'),
(5, 'MARC'),
(6, 'JOSEP'),
(7, 'ESTHER'),
(8, 'LAURA'),
(9, 'RAQUEL'),
(10, 'JOAN'),
(11, 'MARIA ISABEL'),
(12, 'ADRIÀ'),
(13, 'GERARD'),
(14, 'ELIOT'),
(15, 'JORDI'),
(16, 'LLUÍS'),
(17, 'LAURA'),
(18, 'JORDI'),
(19, 'DOUNYA'),
(20, 'JULIO'),
(21, 'ANDREU'),
(22, 'RAMON'),
(23, 'DAVID'),
(24, 'ARAN'),
(25, 'GEMMA'),
(26, 'IVAN'),
(27, 'DAVID'),
(28, 'XAVIER'),
(29, 'MARIO'),
(30, 'JESUS'),
(31, 'GEMMA'),
(32, 'SILVIA'),
(33, 'ALBERT'),
(34, 'MARIA'),
(35, 'BERTA'),
(36, 'BERTA'),
(37, 'MIREIA'),
(38, 'GEMMA'),
(39, 'MARIA ISABEL'),
(40, 'TONI'),
(41, 'ALEJANDRO'),
(42, 'JOAN MARTÍ'),
(43, 'INGRID'),
(44, 'OLIVER'),
(45, 'SANDRA'),
(46, 'JORDI'),
(47, 'MARC'),
(48, 'JORDINA');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
