-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 27-05-2023 a las 21:09:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_bd_v1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despacho`
--

CREATE TABLE `despacho` (
  `NUM_DESPACHO` int(11) NOT NULL,
  `ID_EMPLEADO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `ID_DIRECC` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `despacho`
--

INSERT INTO `despacho` (`NUM_DESPACHO`, `ID_EMPLEADO`, `FECHA`, `ID_DIRECC`) VALUES
(1, 1001, '2023-05-01', 1),
(2, 1002, '2023-05-02', 2),
(3, 1003, '2023-05-03', 3),
(4, 1004, '2023-05-04', 4),
(5, 1005, '2023-05-05', 5),
(6, 1006, '2023-05-06', 6),
(7, 1007, '2023-05-07', 7),
(8, 1008, '2023-05-08', 8),
(9, 1010, '2023-05-09', 9),
(10, 1010, '2023-05-10', 10),
(11, 1001, '2023-05-11', 1),
(12, 1002, '2023-05-12', 2),
(13, 1020, '2023-05-13', 13),
(14, 1004, '2023-05-14', 4),
(15, 1005, '2023-05-15', 5),
(16, 1001, '2023-05-16', 6),
(17, 1018, '2023-05-17', 17),
(18, 1008, '2023-05-18', 8),
(19, 1009, '2023-05-19', 9),
(20, 1011, '2023-05-20', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `IDDETALLE` int(11) NOT NULL,
  `ID_PEDIDO` int(11) DEFAULT NULL,
  `NUMERO_DESPACHO` int(11) DEFAULT NULL,
  `REFERENCIA_P` int(11) DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`IDDETALLE`, `ID_PEDIDO`, `NUMERO_DESPACHO`, `REFERENCIA_P`, `CANTIDAD`) VALUES
(1, 1, 1, 2, 20),
(2, 1, 1, 3, 10),
(3, 1, 1, 5, 5),
(4, 2, 2, 10, 5),
(5, 2, 2, 11, 15),
(6, 2, 2, 12, 20),
(7, 3, 3, 3, 8),
(8, 3, 3, 14, 20),
(9, 4, 5, 20, 15),
(10, 4, 5, 13, 20),
(11, 5, 6, 9, 15),
(12, 5, 4, 10, 10),
(13, 10, 2, 2, 20),
(14, 11, 8, 11, 20),
(15, 8, 8, 7, 20),
(16, 20, 1, 20, 100),
(17, 9, 10, 12, 20),
(18, 10, 6, 3, 10),
(19, 5, 1, 2, 80),
(20, 11, 1, 2, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `IDDIRECC` int(11) NOT NULL,
  `CEDULA_USUARIO` int(11) DEFAULT NULL,
  `DESCRIPCIONDIRECC` varchar(100) DEFAULT NULL,
  `BARRIO` varchar(30) DEFAULT NULL,
  `CIUDAD` varchar(30) DEFAULT NULL,
  `DEPARTAMENTO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`IDDIRECC`, `CEDULA_USUARIO`, `DESCRIPCIONDIRECC`, `BARRIO`, `CIUDAD`, `DEPARTAMENTO`) VALUES
(1, 100265458, 'Calle 1 #123', 'Barrio Los Pinos', 'Bogotá', 'Cundinamarca'),
(2, 100265458, 'Carrera 2 #456', 'Barrio El Rosal', 'Medellín', 'Antioquia'),
(3, 130265459, 'Avenida 3 #789', 'Barrio San Antonio', 'Cali', 'Valle del Cauca'),
(4, 1002654579, 'Calle 4 #234', 'Barrio El Prado', 'Bucaramanga', 'Santander'),
(5, 500265458, 'Carrera 5 #567', 'Barrio La Quinta', 'Ibagué', 'Tolima'),
(6, 600265458, 'Avenida 6 #890', 'Barrio Los Alamos', 'Manizales', 'Caldas'),
(7, 900265458, 'Calle 7 #345', 'Barrio San Joaquín', 'Pereira', 'Risaralda'),
(8, 800265458, 'Carrera 8 #678', 'Barrio El Bosque', 'Armenia', 'Quindío'),
(9, 900265458, 'Avenida 9 #901', 'Barrio El Recuerdo', 'Pasto', 'Nariño'),
(10, 170265459, 'Calle 10 #234', 'Barrio Los Cerezos', 'Tunja', 'Boyacá'),
(11, 400265458, 'Carrera 11 #567', 'Barrio El Carmen', 'Cúcuta', 'Norte de Santander'),
(12, 190265459, 'Avenida 12 #890', 'Barrio San Francisco', 'Popayán', 'Cauca'),
(13, 130265459, 'Calle 13 #123', 'Barrio La Esperanza', 'Villavicencio', 'Meta'),
(14, 170265459, 'Carrera 14 #456', 'Barrio El Vergel', 'Manizales', 'Caldas'),
(15, 2147483647, 'Avenida 15 #789', 'Barrio Los Álamos', 'Bogotá', 'Cundinamarca'),
(16, 500265458, 'Calle 16 #234', 'Barrio El Poblado', 'Medellín', 'Antioquia'),
(17, 800265458, 'Carrera 17 #567', 'Barrio Santa Rosa', 'Cali', 'Valle del Cauca'),
(18, 100265458, 'Avenida 18 #890', 'Barrio Cabecera', 'Bucaramanga', 'Santander'),
(19, 190265459, 'Calle 19 #123', 'Barrio San Simón', 'Ibagué', 'Tolima'),
(20, 130265459, 'Carrera 20 #456', 'Barrio Las Acacias', 'Bucaramanga', 'Santander');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `IDEMPLEADO` int(11) NOT NULL,
  `NOMBRE_EMPLEADO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`IDEMPLEADO`, `NOMBRE_EMPLEADO`) VALUES
(1001, 'Luisa González'),
(1002, 'Ricardo Sánchez'),
(1003, 'Paula Jiménez'),
(1004, 'Mario Silva'),
(1005, 'Carolina Torres'),
(1006, 'Fernando Vargas'),
(1007, 'Gabriela Morales'),
(1008, 'Felipe Navarro'),
(1009, 'Valeria Rojas'),
(1010, 'Andrés Díaz'),
(1011, 'Daniela Gómez'),
(1012, 'Sebastián Mendoza'),
(1013, 'Camila Ruiz'),
(1014, 'Emilio Castro'),
(1015, 'Isabel Montoya'),
(1016, 'Gustavo Ríos'),
(1017, 'Laura Medina'),
(1018, 'José Navarro'),
(1019, 'Marcela Herrera'),
(1020, 'Alejandro Paredes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea`
--

CREATE TABLE `linea` (
  `IDLINEA` int(11) NOT NULL,
  `DESCRIPCION_LINEA` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `linea`
--

INSERT INTO `linea` (`IDLINEA`, `DESCRIPCION_LINEA`) VALUES
(1, 'Aseo'),
(2, 'Electrodomésticos'),
(3, 'Ropa'),
(4, 'Tecnología'),
(5, 'Alimentos'),
(6, 'Juguetes'),
(7, 'Hogar'),
(8, 'Muebles'),
(9, 'Automóviles'),
(10, 'Deportes'),
(11, 'Belleza'),
(12, 'Libros'),
(13, 'Instrumentos Musicales'),
(14, 'Mascotas'),
(15, 'Joyas'),
(16, 'Arte y Manualidades'),
(17, 'Jardinería'),
(18, 'Salud'),
(19, 'Cine y TV'),
(20, 'Instrumentos Científicos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `IDPEDIDO` int(11) NOT NULL,
  `CEDULA_US` int(11) DEFAULT NULL,
  `FECHA_PEDIDO` date DEFAULT NULL,
  `VALOR_TOTAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`IDPEDIDO`, `CEDULA_US`, `FECHA_PEDIDO`, `VALOR_TOTAL`) VALUES
(1, 100265458, '2023-04-01', 25500),
(2, 100265458, '2023-05-01', 500000),
(3, 130265459, '2022-05-01', 54300),
(4, 1002654579, '2022-06-23', 43000),
(5, 100265458, '2023-04-01', 40000),
(6, 190265459, '2022-10-21', 55000),
(7, 500265458, '2021-06-22', 75000),
(8, 100265458, '2023-08-06', 54000),
(9, 400265458, '2023-05-01', 543210),
(10, 180265459, '2022-09-17', 410000),
(11, 800265458, '2023-10-18', 1250000),
(12, 2147483647, '2021-12-20', 300000),
(13, 130265459, '2022-08-12', 980000),
(14, 190265459, '2023-01-15', 150000),
(15, 100265458, '2022-12-24', 420000),
(16, 600265458, '2023-09-10', 230000),
(17, 900265458, '2023-04-23', 50000),
(18, 500265458, '2023-01-28', 1200000),
(19, 170265459, '2022-02-22', 88000),
(20, 800265458, '2023-10-25', 750000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `REFERENCIA` int(11) NOT NULL,
  `NIT_TIENDA` int(11) DEFAULT NULL,
  `DESCRIPCION` varchar(30) DEFAULT NULL,
  `COSTO_COMPRA` int(11) DEFAULT NULL,
  `PESO` int(11) DEFAULT NULL,
  `PRECIO` int(11) DEFAULT NULL,
  `LINEA_PRODUCTO` int(11) DEFAULT NULL,
  `TIEMPO_GARANTIA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`REFERENCIA`, `NIT_TIENDA`, `DESCRIPCION`, `COSTO_COMPRA`, `PESO`, `PRECIO`, `LINEA_PRODUCTO`, `TIEMPO_GARANTIA`) VALUES
(1, 123456, 'Producto A', 7500, 10, 15000, 1, '6 meses'),
(2, 234567, 'Producto B', 10000, 5, 50000, 2, '12 meses'),
(3, 345678, 'Producto C', 5000, 2, 25000, 3, '3 meses'),
(4, 456789, 'Producto D', 12000, 8, 80000, 4, '18 meses'),
(5, 567890, 'Producto E', 8000, 12, 60000, 5, '24 meses'),
(6, 123456, 'Producto F', 9000, 9, 18000, 6, '6 meses'),
(7, 234567, 'Producto G', 11000, 7, 55000, 7, '12 meses'),
(8, 345678, 'Producto H', 5500, 3, 27500, 8, '3 meses'),
(9, 456789, 'Producto I', 12500, 6, 820000, 9, '18 meses'),
(10, 567890, 'Producto J', 8500, 11, 63000, 10, '24 meses'),
(11, 123456, 'Producto K', 9500, 8, 19000, 10, '6 meses'),
(12, 234567, 'Producto L', 12000, 4, 60000, 12, '12 meses'),
(13, 345678, 'Producto M', 6000, 1, 30000, 13, '3 meses'),
(14, 456789, 'Producto N', 13500, 10, 90000, 14, '18 meses'),
(15, 567890, 'Producto O', 8200, 5, 62000, 15, '24 meses'),
(16, 123456, 'Producto P', 9200, 7, 18400, 11, '6 meses'),
(17, 234567, 'Producto Q', 11500, 2, 57500, 19, '12 meses'),
(18, 345678, 'Producto R', 5800, 6, 29000, 18, '3 meses'),
(19, 456789, 'Producto S', 13000, 9, 86000, 19, '18 meses'),
(20, 567890, 'Producto T', 8900, 3, 67000, 20, '24 meses');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `NIT` int(11) NOT NULL,
  `IDEMP` int(11) DEFAULT NULL,
  `NOMBRE_TIENDA` varchar(30) DEFAULT NULL,
  `DIRECCION_TIENDA` varchar(70) DEFAULT NULL,
  `CORREO_TIENDA` varchar(30) DEFAULT NULL,
  `TELEFONO_TIENDA` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tienda`
--

INSERT INTO `tienda` (`NIT`, `IDEMP`, `NOMBRE_TIENDA`, `DIRECCION_TIENDA`, `CORREO_TIENDA`, `TELEFONO_TIENDA`) VALUES
(123450, 1010, 'Tienda J', 'Calle 12 #345', 'tiendaJ@gmail.com', '912345'),
(123456, 1001, 'Tienda A', 'Calle 1 #123', 'tiendaA@gmail.com', '812345'),
(123459, 1019, 'Tienda S', 'Calle 12 #345', 'tiendaS@gmail.com', '912345'),
(234560, 1020, 'Tienda T', 'Carrera 23 #456', 'tiendaT@gmail.com', '923456'),
(234561, 1011, 'Tienda K', 'Carrera 23 #456', 'tiendaK@gmail.com', '923456'),
(234567, 1002, 'Tienda B', 'Carrera 2 #456', 'tiendaB@gmail.com', '823456'),
(345672, 1012, 'Tienda L', 'Avenida 34 #567', 'tiendaL@gmail.com', '934567'),
(345678, 1003, 'Tienda C', 'Avenida 3 #789', 'tiendaC@gmail.com', '834567'),
(456783, 1013, 'Tienda M', 'Calle 45 #678', 'tiendaM@gmail.com', '945678'),
(456789, 1004, 'Tienda D', 'Calle 4 #234', 'tiendaD@gmail.com', '845678'),
(567890, 1005, 'Tienda E', 'Carrera 5 #567', 'tiendaE@gmail.com', '856789'),
(567894, 1014, 'Tienda N', 'Carrera 56 #789', 'tiendaN@gmail.com', '956789'),
(678901, 1006, 'Tienda F', 'Avenida 6 #890', 'tiendaF@gmail.com', '867890'),
(678905, 1015, 'Tienda O', 'Avenida 67 #890', 'tiendaO@gmail.com', '967890'),
(789012, 1007, 'Tienda G', 'Calle 7 #901', 'tiendaG@gmail.com', '878901'),
(789016, 1016, 'Tienda P', 'Calle 78 #901', 'tiendaP@gmail.com', '978901'),
(890123, 1008, 'Tienda H', 'Carrera 8 #123', 'tiendaH@gmail.com', '889012'),
(890127, 1017, 'Tienda Q', 'Carrera 89 #123', 'tiendaQ@gmail.com', '989012'),
(901234, 1009, 'Tienda I', 'Avenida 9 #234', 'tiendaI@gmail.com', '890123'),
(901238, 1018, 'Tienda R', 'Avenida 90 #234', 'tiendaR@gmail.com', '990123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `CEDULA` int(11) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `CORREO` varchar(30) DEFAULT NULL,
  `CEL` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CEDULA`, `NOMBRE`, `CORREO`, `CEL`) VALUES
(100265458, 'Valentina Silva', 'valentinasilva@gmail.com', '3101234567'),
(120265459, 'Camila Jiménez', 'camilajimenez@gmail.com', '3323456789'),
(130265459, 'José Gómez', 'josegomez@gmail.com', '3434567890'),
(140265459, 'Isabella Vargas', 'isabellavargas@gmail.com', '3545678901'),
(150265459, 'Mateo Castro', 'mateocastro@gmail.com', '3656789012'),
(160265459, 'Lucía Morales', 'luciamorales@gmail.com', '3767890123'),
(170265459, 'Martín Ríos', 'martinrios@gmail.com', '3878901234'),
(180265459, 'Valeria Mendoza', 'valeriamendoza@gmail.com', '3989012345'),
(190265459, 'Javier Montoya', 'javiermontoya@gmail.com', '3090123456'),
(200265459, 'Daniela Castro', 'danielacastro@gmail.com', '3201234567'),
(400265458, 'Ana García', 'anagarcia@gmail.com', '3445678901'),
(500265458, 'Pedro Martínez', 'pedromartinez@gmail.com', '3556789012'),
(600265458, 'Laura Castro', 'lauracastro@gmail.com', '3667890123'),
(700265458, 'Carlos Morales', 'carlosmorales@gmail.com', '3778901234'),
(800265458, 'Sofía Torres', 'sofiatorres@gmail.com', '3889012345'),
(900265458, 'Diego Ramírez', 'diegoramirez@gmail.com', '3990123456'),
(1002654579, 'Juan Pérez', 'juanperez@gmail.com', '3112345678'),
(1102654589, 'Andrés Herrera', 'andresherrera@gmail.com', '3212345678'),
(2002654580, 'María Rodríguez', 'mariarodriguez@gmail.com', '3223456789'),
(2147483647, 'Luis López', 'luislopez@gmail.com', '3334567890');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `despacho`
--
ALTER TABLE `despacho`
  ADD PRIMARY KEY (`NUM_DESPACHO`),
  ADD KEY `ID_DIRECC` (`ID_DIRECC`),
  ADD KEY `despacho_ibfk_1` (`ID_EMPLEADO`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`IDDETALLE`),
  ADD KEY `ID_PEDIDO` (`ID_PEDIDO`),
  ADD KEY `NUMERO_DESPACHO` (`NUMERO_DESPACHO`),
  ADD KEY `REFERENCIA_P` (`REFERENCIA_P`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`IDDIRECC`),
  ADD KEY `CEDULAUS` (`CEDULA_USUARIO`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`IDEMPLEADO`);

--
-- Indices de la tabla `linea`
--
ALTER TABLE `linea`
  ADD PRIMARY KEY (`IDLINEA`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`IDPEDIDO`),
  ADD KEY `CEDULA_US` (`CEDULA_US`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`REFERENCIA`),
  ADD KEY `NIT_TIENDA` (`NIT_TIENDA`),
  ADD KEY `LINEA_PRODUCTO` (`LINEA_PRODUCTO`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`NIT`),
  ADD KEY `IDEMP` (`IDEMP`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CEDULA`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `despacho`
--
ALTER TABLE `despacho`
  ADD CONSTRAINT `despacho_ibfk_1` FOREIGN KEY (`ID_EMPLEADO`) REFERENCES `empleado` (`IDEMPLEADO`),
  ADD CONSTRAINT `despacho_ibfk_2` FOREIGN KEY (`ID_DIRECC`) REFERENCES `direccion` (`IDDIRECC`);

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedido` (`IDPEDIDO`),
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`NUMERO_DESPACHO`) REFERENCES `despacho` (`NUM_DESPACHO`),
  ADD CONSTRAINT `detalle_ibfk_3` FOREIGN KEY (`REFERENCIA_P`) REFERENCES `producto` (`REFERENCIA`);

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `direccion_ibfk_1` FOREIGN KEY (`CEDULA_USUARIO`) REFERENCES `usuario` (`CEDULA`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`CEDULA_US`) REFERENCES `usuario` (`CEDULA`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`NIT_TIENDA`) REFERENCES `tienda` (`NIT`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`LINEA_PRODUCTO`) REFERENCES `linea` (`IDLINEA`);

--
-- Filtros para la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD CONSTRAINT `tienda_ibfk_1` FOREIGN KEY (`IDEMP`) REFERENCES `empleado` (`IDEMPLEADO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
