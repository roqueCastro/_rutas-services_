-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2019 a las 16:24:14
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rutas_baique`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio`
--

CREATE TABLE `colegio` (
  `id_colegio` int(11) NOT NULL,
  `nombre_administrador` varchar(200) DEFAULT NULL,
  `userr` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `latitud` varchar(100) DEFAULT NULL,
  `longitud` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colegio`
--

INSERT INTO `colegio` (`id_colegio`, `nombre_administrador`, `userr`, `pass`, `telefono`, `latitud`, `longitud`) VALUES
(1, 'La Gaitana', 'gaitana', '1234Asd@', '3215569231', '1.967900', '-75.931293');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

CREATE TABLE `conductor` (
  `id_conductor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `userr` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductor`
--

INSERT INTO `conductor` (`id_conductor`, `nombre`, `apellido`, `telefono`, `direccion`, `userr`, `pass`) VALUES
(4, 'Salome', 'Arben', '3214456789', 'Calle 1 #2-34', 'salo', 'salo'),
(5, 'Duvan Andres', 'Barrera Figurero', '3214456789', 'Vereda Oritoguaz - ELias', 'duvan', 'duvan'),
(6, 'Thiago Alejandro', 'Arboleda Castro', '3214456789', 'Vereda Sicande - Timana', 'pando', 'pando'),
(7, 'Juan ', 'Celina', '3215567324', 'Vereda San Calixto', 'juan', 'juan'),
(9, 'Lorena', 'Castro G', '3215569231', 'vereda Sicande', 'lore', 'lore');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `coor`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `coor` (
`coordenada_id` int(11)
,`id_resutado` int(11)
,`ruta_name` varchar(200)
,`lat` varchar(100)
,`lng` varchar(45)
,`conductor_name` varchar(201)
,`col_latitud` varchar(100)
,`col_longitud` varchar(100)
,`col_telefono` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordenadas`
--

CREATE TABLE `coordenadas` (
  `id_coordenada` int(11) NOT NULL,
  `latitud` varchar(100) NOT NULL,
  `longitud` varchar(45) NOT NULL,
  `f_registro` datetime DEFAULT current_timestamp(),
  `id_resu_ruta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coordenadas`
--

INSERT INTO `coordenadas` (`id_coordenada`, `latitud`, `longitud`, `f_registro`, `id_resu_ruta`) VALUES
(1, '37.421998333333335', '-122.08400000000002', '2019-11-07 13:41:01', 3),
(2, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:02:51', 3),
(3, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:03:21', 3),
(4, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:03:51', 3),
(5, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:04:21', 1),
(6, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:04:51', 1),
(7, '1.957075', '-75.919394', '2019-11-07 14:05:21', 3),
(8, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:05:51', 1),
(9, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:06:21', 1),
(10, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:06:51', 1),
(11, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:07:21', 1),
(12, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:18:11', 1),
(13, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:18:41', 1),
(14, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:19:11', 1),
(15, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:19:41', 1),
(16, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:20:11', 1),
(17, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:21:51', 1),
(18, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:22:21', 1),
(19, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:33:46', 1),
(20, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:34:16', 1),
(21, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:34:46', 1),
(22, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:36:46', 1),
(23, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:37:16', 1),
(24, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:37:46', 1),
(25, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:38:16', 1),
(26, '37.421998333333335', '-122.08400000000002', '2019-11-07 14:38:46', 1),
(27, '2.015968', '-75.907807', '2019-11-07 14:39:16', 1),
(28, '1.9540366666666666', '-75.915925', '2019-11-09 15:37:15', 1),
(29, '1.9540366666666666', '-75.915925', '2019-11-09 15:37:45', 1),
(30, '1.9540366666666666', '-75.915925', '2019-11-09 15:38:15', 1),
(31, '1.9877009', '-75.9203755', '2019-11-09 15:42:12', 5),
(32, '1.95378', '-75.91599833333333', '2019-11-09 15:42:42', 5),
(33, '1.95378', '-75.91599833333333', '2019-11-09 15:43:12', 5),
(34, '1.95297', '-75.91553166666667', '2019-11-09 15:43:42', 5),
(35, '1.9523333333333333', '-75.91554', '2019-11-09 15:44:12', 5),
(36, '37.421998333333335', '-122.08400000000002', '2019-11-09 16:18:07', 5),
(37, '37.421998333333335', '-122.08400000000002', '2019-11-09 16:18:37', 5),
(38, '37.421998333333335', '-122.08400000000002', '2019-11-09 16:19:07', 5),
(39, '37.421998333333335', '-122.08400000000002', '2019-11-09 16:19:37', 5),
(40, '37.421998333333335', '-122.08400000000002', '2019-11-09 16:20:07', 5),
(41, '37.421998333333335', '-122.08400000000002', '2019-11-09 16:20:37', 5),
(42, '37.421998333333335', '-122.08400000000002', '2019-11-09 16:21:07', 5),
(43, '37.421998333333335', '-122.08400000000002', '2019-11-09 16:21:37', 5),
(44, '37.421998333333335', '-122.08400000000002', '2019-11-09 16:22:07', 5),
(45, '37.421998333333335', '-122.08400000000002', '2019-11-09 16:22:37', 5),
(46, '37.421998333333335', '-122.08400000000002', '2019-11-09 16:23:07', 5),
(47, '37.421998333333335', '-122.08400000000002', '2019-11-09 16:23:37', 5),
(48, '1.9877009', '-75.9203755', '2019-11-09 16:37:30', 5),
(49, '1.9877009', '-75.9203755', '2019-11-09 16:38:00', 5),
(50, '1.9877009', '-75.9203755', '2019-11-09 16:38:46', 5),
(51, '1.9877009', '-75.9203755', '2019-11-09 16:39:16', 5),
(52, '1.9877009', '-75.9203755', '2019-11-09 16:39:48', 5),
(53, '1.9877009', '-75.9203755', '2019-11-09 16:40:18', 5),
(54, '1.9877009', '-75.9203755', '2019-11-09 16:40:47', 5),
(55, '1.9536683333333333', '-75.91550666666667', '2019-11-10 14:11:06', 5),
(56, '1.9539383333333333', '-75.91599166666667', '2019-11-10 14:11:36', 5),
(57, '1.9539383333333333', '-75.91599166666667', '2019-11-10 14:12:06', 5),
(58, '37.421998333333335', '-122.08400000000002', '2019-11-10 14:35:06', 5),
(59, '37.421998333333335', '-122.08400000000002', '2019-11-10 14:35:36', 5),
(60, '37.421998333333335', '-122.08400000000002', '2019-11-10 14:52:41', 5),
(61, '37.421998333333335', '-122.08400000000002', '2019-11-10 14:53:11', 5),
(62, '1.9537066666666667', '-75.91664666666667', '2019-11-10 15:01:35', 5),
(63, '1.9538333333333333', '-75.915935', '2019-11-10 15:02:05', 5),
(64, '37.421998333333335', '-122.08400000000002', '2019-11-11 10:38:56', 5),
(65, '37.421998333333335', '-122.08400000000002', '2019-11-11 10:39:26', 5),
(66, '37.421998333333335', '-122.08400000000002', '2019-11-11 11:42:03', 5),
(67, '37.421998333333335', '-122.08400000000002', '2019-11-11 11:42:33', 5),
(68, '37.421998333333335', '-122.08400000000002', '2019-11-11 11:44:18', 5),
(69, '37.421998333333335', '-122.08400000000002', '2019-11-11 11:49:30', 5),
(70, '37.421998333333335', '-122.08400000000002', '2019-11-11 11:50:00', 5),
(71, '37.421998333333335', '-122.08400000000002', '2019-11-11 11:50:30', 5),
(72, '37.421998333333335', '-122.08400000000002', '2019-11-11 11:51:00', 5),
(73, '37.421998333333335', '-122.08400000000002', '2019-11-11 11:51:59', 5),
(74, '37.421998333333335', '-122.08400000000002', '2019-11-11 11:52:29', 5),
(75, '37.421998333333335', '-122.08400000000002', '2019-11-11 11:52:59', 5),
(76, '37.421998333333335', '-122.08400000000002', '2019-11-11 11:53:29', 5),
(77, '1.9919797', '-75.9162356', '2019-11-11 15:35:33', 5),
(78, '1.9919797', '-75.9162356', '2019-11-11 15:36:03', 5),
(79, '1.9835638', '-75.9229161', '2019-11-12 11:52:41', 5),
(80, '1.9835638', '-75.9229161', '2019-11-12 11:53:11', 5),
(81, '1.9835638', '-75.9229161', '2019-11-12 11:53:48', 6),
(82, '1.9835638', '-75.9229161', '2019-11-12 11:54:11', 6);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `login`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `login` (
`ruta` int(11)
,`userr` varchar(200)
,`pass` varchar(100)
,`id` int(11)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultadoruta`
--

CREATE TABLE `resultadoruta` (
  `id_resu_ruta` int(11) NOT NULL,
  `fecha_inicio` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_final` datetime DEFAULT NULL,
  `pasajeros_finales_ruta` varchar(100) DEFAULT NULL,
  `estado_ruta` int(11) NOT NULL DEFAULT 0,
  `id_ruta` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultadoruta`
--

INSERT INTO `resultadoruta` (`id_resu_ruta`, `fecha_inicio`, `fecha_final`, `pasajeros_finales_ruta`, `estado_ruta`, `id_ruta`) VALUES
(1, '2019-11-07 12:37:56', '0000-00-00 00:00:00', '12', 0, 11),
(3, '2019-11-08 11:08:43', '0000-00-00 00:00:00', '13', 0, 15),
(5, '2019-11-09 15:41:46', '2019-11-12 05:52:54', '5', 1, 17),
(6, '2019-11-12 11:53:19', NULL, NULL, 0, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `id_ruta` int(11) NOT NULL,
  `nombre_ruta` varchar(200) NOT NULL,
  `id_colegio` int(11) NOT NULL,
  `id_conductor` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`id_ruta`, `nombre_ruta`, `id_colegio`, `id_conductor`, `fecha_creacion`) VALUES
(11, 'La Gaitana - Sicande', 1, 6, '2019-11-05 17:04:52'),
(12, 'La Gaitana - Quinche', 1, 7, '2019-11-05 17:05:13'),
(15, 'La Gaitana - San Marcos', 1, 5, '2019-11-05 17:45:13'),
(17, 'La Gaitana - Camenzo', 1, 9, '2019-11-09 15:41:24');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `rutas_activas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `rutas_activas` (
`id` int(11)
,`ruta` varchar(200)
,`conductor_name` varchar(201)
,`conductor_id` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `rutas_sub_cole`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `rutas_sub_cole` (
`id_ruta` int(11)
,`id_resu_ruta` int(11)
,`nombre_ruta` varchar(200)
,`estado_ruta` int(11)
,`fecha_inicio` datetime
,`fecha_final` datetime
,`pasajeros_finales_ruta` varchar(100)
,`name_conductor` varchar(201)
,`telefono_conductor` varchar(100)
,`id_coordenada` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `rutas_view`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `rutas_view` (
`resu_ruta_id` int(11)
,`ruta_name` varchar(200)
,`conductor_name` varchar(201)
,`inicio_fecha` datetime
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `varada`
--

CREATE TABLE `varada` (
  `id_varada` int(11) NOT NULL,
  `latitud` float NOT NULL,
  `longitud` float NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `id_resu_ruta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura para la vista `coor`
--
DROP TABLE IF EXISTS `coor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `coor`  AS  select `coo`.`id_coordenada` AS `coordenada_id`,`coo`.`id_resu_ruta` AS `id_resutado`,`rut`.`nombre_ruta` AS `ruta_name`,`coo`.`latitud` AS `lat`,`coo`.`longitud` AS `lng`,concat(`con`.`nombre`,' ',`con`.`apellido`) AS `conductor_name`,`col`.`latitud` AS `col_latitud`,`col`.`longitud` AS `col_longitud`,`col`.`telefono` AS `col_telefono` from ((((`ruta` `rut` join `conductor` `con` on(`con`.`id_conductor` = `rut`.`id_conductor`)) join `colegio` `col` on(`col`.`id_colegio` = `rut`.`id_colegio`)) join `resultadoruta` `res` on(`res`.`id_ruta` = `rut`.`id_ruta`)) join `coordenadas` `coo` on(`coo`.`id_resu_ruta` = `res`.`id_resu_ruta`)) where `res`.`estado_ruta` = 0 order by `coo`.`id_coordenada` desc ;

-- --------------------------------------------------------

--
-- Estructura para la vista `login`
--
DROP TABLE IF EXISTS `login`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `login`  AS  select `rut`.`id_ruta` AS `ruta`,`con`.`userr` AS `userr`,`con`.`pass` AS `pass`,`con`.`id_conductor` AS `id` from ((`ruta` `rut` join `conductor` `con` on(`con`.`id_conductor` = `rut`.`id_conductor`)) join `colegio` `col` on(`col`.`id_colegio` = `rut`.`id_colegio`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `rutas_activas`
--
DROP TABLE IF EXISTS `rutas_activas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rutas_activas`  AS  select `rut`.`id_ruta` AS `id`,`rut`.`nombre_ruta` AS `ruta`,concat(`con`.`nombre`,' ',`con`.`apellido`) AS `conductor_name`,`con`.`id_conductor` AS `conductor_id` from ((`ruta` `rut` join `conductor` `con` on(`con`.`id_conductor` = `rut`.`id_conductor`)) join `colegio` `col` on(`col`.`id_colegio` = `rut`.`id_colegio`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `rutas_sub_cole`
--
DROP TABLE IF EXISTS `rutas_sub_cole`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rutas_sub_cole`  AS  select `rut`.`id_ruta` AS `id_ruta`,`res`.`id_resu_ruta` AS `id_resu_ruta`,`rut`.`nombre_ruta` AS `nombre_ruta`,`res`.`estado_ruta` AS `estado_ruta`,`res`.`fecha_inicio` AS `fecha_inicio`,`res`.`fecha_final` AS `fecha_final`,`res`.`pasajeros_finales_ruta` AS `pasajeros_finales_ruta`,concat(`con`.`nombre`,' ',`con`.`apellido`) AS `name_conductor`,`con`.`telefono` AS `telefono_conductor`,`coo`.`id_coordenada` AS `id_coordenada` from (((`ruta` `rut` join `resultadoruta` `res` on(`res`.`id_ruta` = `rut`.`id_ruta`)) join `coordenadas` `coo` on(`coo`.`id_resu_ruta` = `res`.`id_resu_ruta`)) join `conductor` `con` on(`con`.`id_conductor` = `rut`.`id_conductor`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `rutas_view`
--
DROP TABLE IF EXISTS `rutas_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rutas_view`  AS  select `res`.`id_resu_ruta` AS `resu_ruta_id`,`rut`.`nombre_ruta` AS `ruta_name`,concat(`con`.`nombre`,' ',`con`.`apellido`) AS `conductor_name`,`res`.`fecha_inicio` AS `inicio_fecha` from ((((`ruta` `rut` join `conductor` `con` on(`con`.`id_conductor` = `rut`.`id_conductor`)) join `colegio` `col` on(`col`.`id_colegio` = `rut`.`id_colegio`)) join `resultadoruta` `res` on(`res`.`id_ruta` = `rut`.`id_ruta`)) join `coordenadas` `coo` on(`coo`.`id_resu_ruta` = `res`.`id_resu_ruta`)) where `res`.`estado_ruta` = 0 group by `rut`.`id_ruta` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colegio`
--
ALTER TABLE `colegio`
  ADD PRIMARY KEY (`id_colegio`);

--
-- Indices de la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`id_conductor`);

--
-- Indices de la tabla `coordenadas`
--
ALTER TABLE `coordenadas`
  ADD PRIMARY KEY (`id_coordenada`);

--
-- Indices de la tabla `resultadoruta`
--
ALTER TABLE `resultadoruta`
  ADD PRIMARY KEY (`id_resu_ruta`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id_ruta`);

--
-- Indices de la tabla `varada`
--
ALTER TABLE `varada`
  ADD PRIMARY KEY (`id_varada`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colegio`
--
ALTER TABLE `colegio`
  MODIFY `id_colegio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `conductor`
--
ALTER TABLE `conductor`
  MODIFY `id_conductor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `coordenadas`
--
ALTER TABLE `coordenadas`
  MODIFY `id_coordenada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `resultadoruta`
--
ALTER TABLE `resultadoruta`
  MODIFY `id_resu_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `id_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `varada`
--
ALTER TABLE `varada`
  MODIFY `id_varada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
