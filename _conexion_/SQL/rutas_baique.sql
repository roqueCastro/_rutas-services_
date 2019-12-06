-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2019 a las 16:51:53
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
(1, 'San Francisco', 'Admin', 'Admin1234', '3215569231', '0.522389', '-76.516710');

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
  `pass` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductor`
--

INSERT INTO `conductor` (`id_conductor`, `nombre`, `apellido`, `telefono`, `direccion`, `userr`, `pass`, `estado`) VALUES
(1, 'Lorena ', 'Castro', '3215546689', 'Garzon', 'lore', 'lore', 0),
(2, 'Duvan', 'andres', '3214456789', 'timana', 'duvan', 'duvan', 0),
(3, 'diego', 'bike', '3133156249', 'carrera 2', 'bike', '1234', 0),
(4, 'roque', 'clar', '3124536895', 'cra', 'roque', '1234', 0),
(5, 'yesika', 'ajajjaaj', '3125669812', 'cara', 'yesi', 'yesi', 0);

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
(1, '1.953818333333333', '-75.91598166666667', '2019-11-15 14:34:37', 1),
(2, '1.9539266666666668', '-75.91615666666667', '2019-11-15 16:51:34', 1),
(3, '1.953885', '-75.91596', '2019-11-16 13:10:28', 2),
(4, '1.953885', '-75.91596166666666', '2019-11-16 13:10:59', 2),
(5, '1.9538683333333333', '-75.915955', '2019-11-16 13:11:28', 2),
(6, '1.9538799999999998', '-75.91595833333334', '2019-11-16 13:11:58', 2),
(7, '1.9539049999999998', '-75.91595833333334', '2019-11-16 13:12:28', 2),
(8, '1.9539266666666668', '-75.91594666666667', '2019-11-16 13:12:58', 2),
(9, '1.9538566666666668', '-75.91595333333333', '2019-11-16 13:13:28', 2),
(10, '1.9538700000000002', '-75.915935', '2019-11-16 13:13:58', 2),
(11, '1.9537150000000003', '-75.91589666666667', '2019-11-16 13:14:28', 2),
(12, '1.9537983333333333', '-75.91597', '2019-11-16 13:15:04', 2),
(13, '1.9538483333333332', '-75.91597833333334', '2019-11-16 13:15:28', 2),
(14, '1.9538599999999997', '-75.91599333333333', '2019-11-16 13:15:58', 2),
(15, '1.9538733333333336', '-75.91599333333333', '2019-11-16 13:16:28', 2),
(16, '1.9538716666666667', '-75.91598166666667', '2019-11-16 13:16:58', 2),
(17, '1.9539666666666666', '-75.91618', '2019-11-16 16:37:08', 2),
(18, '1.9537883333333337', '-75.91604333333333', '2019-11-16 16:37:38', 2),
(19, '1.8922133333333335', '-76.08981833333334', '2019-11-18 08:51:59', 3),
(20, '1.8922133333333335', '-76.08981833333334', '2019-11-18 08:51:56', 3),
(21, '1.8922133333333335', '-76.08981833333334', '2019-11-18 08:52:25', 3),
(22, '1.8922449999999997', '-76.089845', '2019-11-18 08:52:56', 3),
(23, '1.8922783333333333', '-76.08986166666666', '2019-11-18 08:52:59', 3),
(24, '1.8922850000000002', '-76.08989', '2019-11-18 08:53:24', 3),
(25, '1.8924133333333335', '-76.09013', '2019-11-18 09:02:43', 4),
(26, '1.8924300000000003', '-76.09007', '2019-11-18 09:03:13', 4),
(27, '1.8924516666666666', '-76.09002333333333', '2019-11-18 09:15:29', 3),
(28, '1.8923883333333331', '-76.08992833333333', '2019-11-18 09:15:57', 3),
(29, '1.8924599999999998', '-76.08999166666668', '2019-11-18 09:16:27', 3),
(30, '1.892295', '-76.08989', '2019-11-18 11:24:55', 5),
(31, '1.8924716666666668', '-76.08965833333333', '2019-11-18 11:27:42', 6);

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
,`name` varchar(100)
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
(1, '2019-11-15 14:32:12', '2019-11-15 10:51:37', '6', 1, 1),
(2, '2019-11-16 13:09:09', NULL, NULL, 0, 10),
(3, '2019-11-19 08:49:57', '2019-11-19 15:09:06', '12', 1, 11),
(4, '2019-11-18 09:02:17', NULL, NULL, 0, 12),
(5, '2019-11-18 11:22:58', '2019-11-18 05:25:55', '12', 1, 13),
(6, '2019-11-18 11:27:13', NULL, NULL, 0, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `id_ruta` int(11) NOT NULL,
  `nombre_ruta` varchar(200) NOT NULL,
  `id_colegio` int(11) NOT NULL,
  `id_conductor` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp(),
  `estado` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`id_ruta`, `nombre_ruta`, `id_colegio`, `id_conductor`, `fecha_creacion`, `estado`) VALUES
(1, 'La Gaitana - Sicande', 1, 1, '2019-11-15 14:31:20', 1),
(10, 'La Gaitana - Camenzo', 1, 2, '2019-11-16 13:08:08', 1),
(11, 'La Gaitana - yamboro', 1, 3, '2019-11-18 08:49:38', 0),
(12, 'La Gaitana - pitalito', 1, 4, '2019-11-18 09:01:45', 0),
(13, 'La Gaitana - Eden', 1, 5, '2019-11-18 11:22:41', 0),
(14, 'San Fransisco - Toronto', 1, 1, '2019-11-21 18:02:11', 0);

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
,`estado` int(11)
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
,`inicio_fecha` time
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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `login`  AS  select `rut`.`id_ruta` AS `ruta`,`con`.`userr` AS `userr`,`con`.`pass` AS `pass`,`con`.`id_conductor` AS `id`,`con`.`nombre` AS `name` from ((`ruta` `rut` join `conductor` `con` on(`con`.`id_conductor` = `rut`.`id_conductor`)) join `colegio` `col` on(`col`.`id_colegio` = `rut`.`id_colegio`)) where `con`.`estado` = 0 and `rut`.`estado` = 0 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `rutas_activas`
--
DROP TABLE IF EXISTS `rutas_activas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rutas_activas`  AS  select `rut`.`id_ruta` AS `id`,`rut`.`nombre_ruta` AS `ruta`,concat(`con`.`nombre`,' ',`con`.`apellido`) AS `conductor_name`,`con`.`id_conductor` AS `conductor_id`,`rut`.`estado` AS `estado` from ((`ruta` `rut` join `conductor` `con` on(`con`.`id_conductor` = `rut`.`id_conductor`)) join `colegio` `col` on(`col`.`id_colegio` = `rut`.`id_colegio`)) order by `rut`.`estado`,`rut`.`fecha_creacion` desc ;

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rutas_view`  AS  select `res`.`id_resu_ruta` AS `resu_ruta_id`,`rut`.`nombre_ruta` AS `ruta_name`,concat(`con`.`nombre`,' ',`con`.`apellido`) AS `conductor_name`,cast(`res`.`fecha_inicio` as time) AS `inicio_fecha` from ((((`ruta` `rut` join `conductor` `con` on(`con`.`id_conductor` = `rut`.`id_conductor`)) join `colegio` `col` on(`col`.`id_colegio` = `rut`.`id_colegio`)) join `resultadoruta` `res` on(`res`.`id_ruta` = `rut`.`id_ruta`)) join `coordenadas` `coo` on(`coo`.`id_resu_ruta` = `res`.`id_resu_ruta`)) where `res`.`estado_ruta` = 0 group by `rut`.`id_ruta` ;

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
  MODIFY `id_conductor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `coordenadas`
--
ALTER TABLE `coordenadas`
  MODIFY `id_coordenada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `resultadoruta`
--
ALTER TABLE `resultadoruta`
  MODIFY `id_resu_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `id_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `varada`
--
ALTER TABLE `varada`
  MODIFY `id_varada` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
