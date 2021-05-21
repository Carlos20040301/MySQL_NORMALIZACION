-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2021 a las 17:50:50
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_envíos`
--

CREATE TABLE `tbl_envíos` (
  `ID_ENVÍO` int(11) NOT NULL,
  `DESCRIPCIÓN_ENVÍO` varchar(300) NOT NULL,
  `FECHA` date NOT NULL,
  `ID_DIRECCION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_envíos`
--

INSERT INTO `tbl_envíos` (`ID_ENVÍO`, `DESCRIPCIÓN_ENVÍO`, `FECHA`, `ID_DIRECCION`) VALUES
(1, 'Se envia un Shampoo a Colonia Casa Blanca, Bloque 3, Casa2', '2021-05-21', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_envíos`
--
ALTER TABLE `tbl_envíos`
  ADD PRIMARY KEY (`ID_ENVÍO`),
  ADD KEY `FK_DIRECCIONES_ENVIOS` (`ID_DIRECCION`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_envíos`
--
ALTER TABLE `tbl_envíos`
  MODIFY `ID_ENVÍO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_envíos`
--
ALTER TABLE `tbl_envíos`
  ADD CONSTRAINT `FK_ENVIOS_DIRECCIONES` FOREIGN KEY (`ID_DIRECCION`) REFERENCES `tbl_direcciones` (`ID_DIRECCIÓN`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
