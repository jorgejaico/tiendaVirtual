-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-04-2016 a las 08:26:54
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adm_id` int(10) NOT NULL,
  `adm_nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `adm_apellidos` varchar(100) COLLATE utf8_bin NOT NULL,
  `adm_pass` varchar(30) COLLATE utf8_bin NOT NULL,
  `adm_mail` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_factura`
--

CREATE TABLE IF NOT EXISTS `tbl_factura` (
  `fact_id` int(10) NOT NULL,
  `usu_id` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `importe` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_lineafact`
--

CREATE TABLE IF NOT EXISTS `tbl_lineafact` (
  `lineaFact_id` int(10) NOT NULL,
  `prod_id` int(10) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `fact_id` int(10) NOT NULL,
  `totalLineaFact` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto`
--

CREATE TABLE IF NOT EXISTS `tbl_producto` (
  `prod_id` int(10) NOT NULL,
  `prod_nombre` int(50) NOT NULL,
  `prod_descrip` varchar(100) COLLATE utf8_bin NOT NULL,
  `prod_img` varchar(100) COLLATE utf8_bin NOT NULL,
  `prod_precio` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE IF NOT EXISTS `tbl_usuario` (
  `usu_id` int(10) NOT NULL,
  `usu_nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `usu_apellidos` varchar(100) COLLATE utf8_bin NOT NULL,
  `usu_nif` varchar(9) COLLATE utf8_bin NOT NULL,
  `usu_dire` varchar(50) COLLATE utf8_bin NOT NULL,
  `usu_mail` varchar(50) COLLATE utf8_bin NOT NULL,
  `usu_pass` varchar(30) COLLATE utf8_bin NOT NULL,
  `usu_fechanac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indices de la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  ADD PRIMARY KEY (`fact_id`);

--
-- Indices de la tabla `tbl_lineafact`
--
ALTER TABLE `tbl_lineafact`
  ADD PRIMARY KEY (`lineaFact_id`);

--
-- Indices de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adm_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  MODIFY `fact_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_lineafact`
--
ALTER TABLE `tbl_lineafact`
  MODIFY `lineaFact_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  MODIFY `prod_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `usu_id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
