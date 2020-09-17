-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2020 a las 14:14:02
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `covidddbb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro`
--

CREATE TABLE `centro` (
  `id_centro` int(11) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `nombre_centro` varchar(200) NOT NULL,
  `id_ciudad_fk` int(11) NOT NULL,
  `cant_camas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `centro`
--

INSERT INTO `centro` (`id_centro`, `tipo`, `nombre_centro`, `id_ciudad_fk`, `cant_camas`) VALUES
(1, 'hospital', 'Hospital Santamarina', 1, 20),
(2, 'Sanatorio ', 'Sanatorio Tandil', 1, 12),
(3, 'Clinica', 'Hispano', 3, 11),
(4, 'Hospital', 'Olavarria', 2, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `zona_riesgo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `nombre`, `zona_riesgo`) VALUES
(1, 'Tandil', 1),
(2, 'Olavarria', 1),
(3, 'Tres Arroyos', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupacion_diaria`
--

CREATE TABLE `ocupacion_diaria` (
  `id_ocupacion` int(11) NOT NULL,
  `id_centro_fk` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cant_camas_ocupadas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ocupacion_diaria`
--

INSERT INTO `ocupacion_diaria` (`id_ocupacion`, `id_centro_fk`, `fecha`, `cant_camas_ocupadas`) VALUES
(1, 1, '2020-09-16', 5),
(2, 1, '2020-09-17', 6),
(3, 1, '2020-09-15', 7),
(4, 2, '2020-09-15', 8),
(5, 2, '2020-09-16', 7),
(6, 2, '2020-09-17', 6),
(7, 3, '2020-09-15', 4),
(8, 3, '2020-09-16', 4),
(9, 3, '2020-09-17', 4),
(10, 4, '2020-09-15', 9),
(11, 4, '2020-09-16', 11),
(12, 4, '2020-09-17', 13);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `centro`
--
ALTER TABLE `centro`
  ADD PRIMARY KEY (`id_centro`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `ocupacion_diaria`
--
ALTER TABLE `ocupacion_diaria`
  ADD PRIMARY KEY (`id_ocupacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `centro`
--
ALTER TABLE `centro`
  MODIFY `id_centro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ocupacion_diaria`
--
ALTER TABLE `ocupacion_diaria`
  MODIFY `id_ocupacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
