-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-03-2025 a las 17:20:14
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_empresa_2025`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesor`
--

CREATE TABLE `asesor` (
  `idf_cliente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idf_empleado` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asesor`
--

INSERT INTO `asesor` (`idf_cliente`, `idf_empleado`) VALUES
('12345', '10101'),
('00128', '45565'),
('1131', '45565'),
('76543', '45565');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `nombre_categoria` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombre_sucursal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `presupuesto` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`nombre_categoria`, `nombre_sucursal`, `presupuesto`) VALUES
('Accesorios', 'Guacarí', 33000000.00),
('Camisas', 'Guacarí', 34000000.00),
('Camisetas', 'Viva Sincelejo', 28700000.00),
('Jeans', 'Guacarí', 119000000.00),
('Pantalones', 'Guacarí', 109000000.00),
('Polos', 'Guacarí', 70000000.00),
('Ropa Interior', 'Viva Sincelejo', 79000000.00),
('Vestidos', 'Guacarí', 78000000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombre_cliente` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombre_categoria` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `nombre_categoria`, `estado`) VALUES
('00128', 'Sarai Fuentes Pertuz', 'Polos', 'Activo'),
('1131', 'Pablo Velez Altamiranda', 'Pantalones', 'Activo'),
('12345', 'Maria Paula', 'Vestidos', 'Activo'),
('19991', 'Sofia Beleño Castro', 'Pantalones', 'Activo'),
('2468', 'Juan Jaramillo', 'Camisetas', 'Activo'),
('54321', 'William Alvarez Quiroz', 'Camisetas', 'Activo'),
('55739', 'Sarah Sanchez Voz', 'Vestidos', 'Activo'),
('64567', 'Pedro Suarez', 'Accesorios', 'Activo'),
('76543', 'Ana Maria Del Mar Rios', 'Camisas', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombre_empleado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombre_categoria` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre_empleado`, `nombre_categoria`, `salario`) VALUES
('10101', 'Avelina Alfaro', 'Polos', 3500000.00),
('1102798', 'Carlos Alfaro', 'Vestidos', 2780000.00),
('12121', 'Winner Acosta Lastre', 'Vestidos', 2900000.00),
('15151', 'Maria Castro Feria', 'Polos', 4500000.00),
('18181', 'Amanda Sevilla Lara', 'Ropa Interior', 3500000.00),
('22222', 'Elizabeth Perez Alviz', 'Ropa Interior', 4950000.00),
('32343', 'Camila Villegas Oslo', 'Camisetas', 4600000.00),
('45565', 'Katty Saenz Moron', 'Camisetas', 3750000.00),
('58583', 'Carmen Alma Vega', 'Camisetas', 5620000.00),
('76766', 'Ramiro Rojas PErez', 'Camisas', 3720000.00),
('83821', 'Brenda Osorio Bertel', 'Camisas', 3920000.00),
('98345', 'Amir Salas Martinez', 'Accesorios', 3800000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaproductos`
--

CREATE TABLE `lineaproductos` (
  `id_producto` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sec_id` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `forma_pago` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coleccion` decimal(4,0) NOT NULL,
  `nombre_sucursal` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `numero_sala` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_seccionhe` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_cliente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_producto` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sec_id` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `forma_pago` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coleccion` decimal(4,0) NOT NULL,
  `estado_pedido` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nombre_categoria` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `precio` decimal(50,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `descripcion`, `nombre_categoria`, `precio`) VALUES
('A-2453', 'Jean Mujer Negro Atypical', 'Jeans', 210000),
('C-A033A', 'Bralette Beige Lined Invisible Calvin Klein', 'Ropa Interior', 199920),
('C-A425AT', 'Camisa Raya Clasica Roja', 'Camisas', 44900),
('CA425AT', 'Camisa Chalis Negra Deusero', 'Camisas', 64900),
('LE-580', 'Jean Skinny Fit Indigo Oscuro Lee', 'Jeans', 144990),
('LE044AT', 'Camiseta Azul Navy-Rojo Levi\'s', 'Camisetas', 99900),
('M-104596', 'Vestido Largo Mujer Azul ', 'Vestidos', 70000),
('M-4465', 'Jean Mujer Azul Claro', 'Jeans', 200000),
('M-P700A', 'Body Mujer Negro FI', 'Ropa Interior', 137100),
('M-P700AB', 'Pantalón Hombre Azul Mp', 'Pantalones', 80000),
('MP700AT', 'Camiseta Hombre Blanco Mp', 'Camisetas', 82500),
('R-106601', 'Vestido Corto Mujer Azul Petroleo', 'Vestidos', 82700),
('U-N070AB', 'Pantalon Hombre UNDER ARMOUR PJT RCK', 'Pantalones', 214950),
('V-E016A', 'Pantalón Chad Para Hombre Acabado Soft Negro', 'Pantalones', 389900);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_producto` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_proveedor` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccionhe`
--

CREATE TABLE `seccionhe` (
  `id_seccionhe` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dia` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `inicio_he` time NOT NULL,
  `fin_he` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seccionhe`
--

INSERT INTO `seccionhe` (`id_seccionhe`, `dia`, `inicio_he`, `fin_he`) VALUES
('A', 'F', '08:00:00', '08:50:00'),
('A', 'M', '08:00:00', '08:50:00'),
('A', 'W', '08:00:00', '08:50:00'),
('B', 'F', '09:00:00', '09:50:00'),
('B', 'M', '09:00:00', '09:50:00'),
('B', 'W', '09:00:00', '09:50:00'),
('C', 'F', '11:00:00', '11:50:00'),
('C', 'M', '11:00:00', '11:50:00'),
('C', 'W', '11:00:00', '11:50:00'),
('D', 'F', '13:00:00', '13:50:00'),
('D', 'M', '13:00:00', '13:50:00'),
('D', 'W', '13:00:00', '13:50:00'),
('E', 'R', '10:30:00', '11:45:00'),
('E', 'T', '10:30:00', '11:45:00'),
('F', 'R', '14:30:00', '15:45:00'),
('F', 'T', '14:30:00', '15:45:00'),
('G', 'F', '16:00:00', '16:50:00'),
('G', 'M', '16:00:00', '16:50:00'),
('G', 'W', '16:00:00', '16:50:00'),
('H', 'W', '10:00:00', '12:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `nombre_sucursal` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `numero_sala` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `capacidad` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`nombre_sucursal`, `numero_sala`, `capacidad`) VALUES
('Guacarí', '2', 149),
('Viva Sincelejo', '1', 109);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `rol` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`, `rol`) VALUES
(3, 'root@gmail.com', 'root', 'admin'),
(4, '12345', '12345', 'clientes'),
(6, '19991', '19991', 'clientes'),
(7, '23121', '23121', 'clientes'),
(8, '44553', '44553', 'clientes'),
(9, '45678', '45678', 'clientes'),
(10, '54321', '54321', 'clientes'),
(11, '55739', '55739', 'clientes'),
(13, '76543', '76543', 'clientes'),
(14, '76653', '76653', 'clientes'),
(15, '98765', '98765', 'clientes'),
(16, '98988', '98988', 'clientes'),
(17, '1131', '1131', 'clientes'),
(21, 'dev@gmail.com', '7777', 'admin'),
(22, 'admin@gmail.com', 'admin', 'admin'),
(24, '64567', '64567', 'clientes'),
(26, '2468', '2468', 'clientes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_producto` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sec_id` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `forma_pago` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coleccion` decimal(4,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asesor`
--
ALTER TABLE `asesor`
  ADD PRIMARY KEY (`idf_cliente`),
  ADD KEY `idf_empleado` (`idf_empleado`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`nombre_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `nombre_categoria` (`nombre_categoria`) USING BTREE;

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `dept_name_inst` (`nombre_categoria`);

--
-- Indices de la tabla `lineaproductos`
--
ALTER TABLE `lineaproductos`
  ADD PRIMARY KEY (`id_producto`,`sec_id`,`forma_pago`,`coleccion`),
  ADD KEY `nombre_sucursal` (`nombre_sucursal`,`numero_sala`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_cliente`,`id_producto`,`sec_id`,`forma_pago`,`coleccion`),
  ADD KEY `id_producto` (`id_producto`,`sec_id`,`forma_pago`,`coleccion`) USING BTREE;

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `nombre_categoria` (`nombre_categoria`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_producto`,`id_proveedor`),
  ADD KEY `prereq_id` (`id_proveedor`);

--
-- Indices de la tabla `seccionhe`
--
ALTER TABLE `seccionhe`
  ADD PRIMARY KEY (`id_seccionhe`,`dia`,`inicio_he`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`nombre_sucursal`,`numero_sala`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE;

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`,`id_producto`,`sec_id`,`forma_pago`,`coleccion`),
  ADD KEY `id_producto` (`id_producto`,`sec_id`,`forma_pago`,`coleccion`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asesor`
--
ALTER TABLE `asesor`
  ADD CONSTRAINT `asesor_ibfk_1` FOREIGN KEY (`idf_empleado`) REFERENCES `empleados` (`id_empleado`) ON DELETE SET NULL,
  ADD CONSTRAINT `asesor_ibfk_2` FOREIGN KEY (`idf_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`nombre_categoria`) REFERENCES `categorias` (`nombre_categoria`) ON DELETE SET NULL;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `dept_name_inst` FOREIGN KEY (`nombre_categoria`) REFERENCES `categorias` (`nombre_categoria`) ON DELETE SET NULL;

--
-- Filtros para la tabla `lineaproductos`
--
ALTER TABLE `lineaproductos`
  ADD CONSTRAINT `lineaproductos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE,
  ADD CONSTRAINT `lineaproductos_ibfk_2` FOREIGN KEY (`nombre_sucursal`,`numero_sala`) REFERENCES `sucursales` (`nombre_sucursal`, `numero_sala`) ON DELETE SET NULL;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_producto`,`sec_id`,`forma_pago`,`coleccion`) REFERENCES `lineaproductos` (`id_producto`, `sec_id`, `forma_pago`, `coleccion`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `dept_name` FOREIGN KEY (`nombre_categoria`) REFERENCES `categorias` (`nombre_categoria`) ON DELETE SET NULL;

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE,
  ADD CONSTRAINT `proveedores_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_producto`,`sec_id`,`forma_pago`,`coleccion`) REFERENCES `lineaproductos` (`id_producto`, `sec_id`, `forma_pago`, `coleccion`) ON DELETE CASCADE,
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `empleados` (`id_empleado`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
