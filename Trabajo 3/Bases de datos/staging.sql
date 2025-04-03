-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2025 a las 22:19:44
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `staging`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(255) DEFAULT NULL,
  `nombre_contacto` varchar(100) DEFAULT NULL,
  `apellido_contacto` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `linea_direccion1` varchar(255) DEFAULT NULL,
  `linea_direccion2` varchar(255) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(20) DEFAULT NULL,
  `ID_empleado_rep_ventas` int(11) DEFAULT NULL,
  `limite_credito` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_cliente`, `nombre_cliente`, `nombre_contacto`, `apellido_contacto`, `telefono`, `fax`, `linea_direccion1`, `linea_direccion2`, `ciudad`, `region`, `pais`, `codigo_postal`, `ID_empleado_rep_ventas`, `limite_credito`) VALUES
(1, 'GoldFish Garden', 'Daniel', 'G', '5556901745', '5556901746', 'False Street 52 2 A', NULL, 'San Francisco', NULL, 'USA', '24006', 19, 3000.00),
(2, 'Gardening Associates', 'Anne', 'Wright', '5557410345', '5557410346', 'Wall-e Avenue', NULL, 'Miami', 'Miami', 'USA', '24010', 19, 6000.00),
(3, 'Gerudo Valley', 'Link', 'Flaute', '5552323129', '5552323128', 'Oaks Avenue nº22', NULL, 'New York', NULL, 'USA', '85495', 22, 12000.00),
(4, 'Tendo Garden', 'Akane', 'Tendo', '55591233210', '55591233211', 'Null Street nº69', NULL, 'Miami', NULL, 'USA', '696969', 22, 600000.00),
(5, 'Lasas S.A.', 'Antonio', 'Lasas', '34916540145', '34914851312', 'C/Leganes 15', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '28945', 8, 154310.00),
(6, 'Beragua', 'Jose', 'Bermejo', '654987321', '916549872', 'C/pintor segundo', NULL, 'Getafe', 'Madrid', 'Spain', '28942', 11, 20000.00),
(7, 'Club Golf Puerta del Hierro', 'Paco', 'Lopez', '62456810', '919535678', 'C/sinesio delgado', NULL, 'Madrid', 'Madrid', 'Spain', '28930', 11, 40000.00),
(8, 'Naturagua', 'Guillermo', 'Rengifo', '689234750', '916428956', 'C/majadahonda', NULL, 'Boadilla', 'Madrid', 'Spain', '28947', 11, 32000.00),
(9, 'DaraDistribuciones', 'David', 'Serrano', '675598001', '916421756', 'C/azores', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '28946', 11, 50000.00),
(10, 'Madrileña de riegos', 'Jose', 'Tacaño', '655983045', '916689215', 'C/Lagañas', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '28943', 11, 20000.00),
(11, 'Camunas Jardines S.L.', 'Pedro', 'Camunas', '34914873241', '34914871541', 'C/Virgenes 45', 'C/Princesas 2 1ºB', 'San Lorenzo del Escorial', 'Madrid', 'Spain', '28145', 8, 16481.00),
(12, 'Dardena S.A.', 'Juan', 'Rodriguez', '34912453217', '34912484764', 'C/Nueva York 74', NULL, 'Madrid', 'Madrid', 'Spain', '28003', 8, 321000.00),
(13, 'Jardin de Flores', 'Javier', 'Villar', '654865643', '914538776', 'C/ Oña 34', NULL, 'Madrid', 'Madrid', 'Spain', '28950', 30, 40000.00),
(14, 'Flores Marivi', 'Maria', 'Rodriguez', '666555444', '912458657', 'C/Leganes24', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '28945', 5, 1500.00),
(15, 'Flowers, S.A.', 'Beatriz', 'Fernandez', '698754159', '978453216', 'C/Luis Salquillo4', NULL, 'Montornes del valles', 'Barcelona', 'Spain', '24586', 5, 3500.00),
(16, 'Naturajardin', 'Victoria', 'Cruz', '612343529', '916548735', 'Plaza Magallón 15', NULL, 'Madrid', 'Madrid', 'Spain', '28011', 30, 5050.00),
(17, 'Golf S.A.', 'Luis', 'Martinez', '916458762', '912354475', 'C/Estancado', NULL, 'Santa Cruz de Tenerife', 'Islas Canarias', 'Spain', '38297', 12, 30000.00),
(18, 'Americh Golf Management SL', 'Mario', 'Suarez', '964493072', '964493063', 'C/Letardo', NULL, 'Barcelona', 'Cataluña', 'Spain', '12320', 12, 20000.00),
(19, 'Aloha', 'Cristian', 'Rodrigez', '916485852', '914489898', 'C/Roman 3', NULL, 'Canarias', 'Canarias', 'Spain', '35488', 12, 50000.00),
(20, 'El Prat', 'Francisco', 'Camacho', '916882323', '916493211', 'Avenida Tibidabo', NULL, 'Barcelona', 'Cataluña', 'Spain', '12320', 12, 30000.00),
(21, 'Sotogrande', 'Maria', 'Santillana', '915576622', '914825645', 'C/Paseo del Parque', NULL, 'Sotogrande', 'Cadiz', 'Spain', '11310', 12, 60000.00),
(22, 'Vivero Humanes', 'Federico', 'Gomez', '654987690', '916040875', 'C/Miguel Echegaray 54', NULL, 'Humanes', 'Madrid', 'Spain', '28970', 30, 7430.00),
(23, 'Fuenla City', 'Tony', 'Muñoz Mena', '675842139', '915483754', 'C/Callo 52', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '28574', 5, 4500.00),
(24, 'Jardines y Mansiones Cactus SL', 'Eva María', 'Sánchez', '916877445', '914477777', 'Polígono Industrial Maspalomas, Nº52', 'Móstoles', 'Madrid', 'Madrid', 'Spain', '29874', 9, 76000.00),
(25, 'Jardinerías Matías SL', 'Matías', 'San Martín', '916544147', '917897474', 'C/Francisco Arce, Nº44', 'Bustarviejo', 'Madrid', 'Madrid', 'Spain', '37845', 9, 100500.00),
(26, 'Agrojardin', 'Benito', 'Lopez', '675432926', '916549264', 'C/Mar Caspio 43', NULL, 'Getafe', 'Madrid', 'Spain', '28904', 30, 8040.00),
(27, 'Top Campo', 'Joseluis', 'Sanchez', '685746512', '974315924', 'C/Ibiza 32', NULL, 'Humanes', 'Madrid', 'Spain', '28574', 5, 5500.00),
(28, 'Jardineria Sara', 'Sara', 'Marquez', '675124537', '912475843', 'C/Lima 1', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '27584', 5, 7500.00),
(29, 'Campohermoso', 'Luis', 'Jimenez', '645925376', '916159116', 'C/Peru 78', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '28945', 30, 3250.00),
(30, 'France Telecom', 'François', 'Toulou', '(33)5120578961', '(33)5120578961', '6 place d Alleray 15ème', NULL, 'Paris', NULL, 'France', '75010', 16, 10000.00),
(31, 'Musée du Louvre', 'Pierre', 'Delacroux', '(33)0140205050', '(33)0140205442', 'Quai du Louvre', NULL, 'Paris', NULL, 'France', '75058', 16, 30000.00),
(32, 'Tutifruti S.A.', 'Jacob', 'Jones', '2 9261-2433', '2 9283-1695', 'level 24, St. Martins Tower.-31 Market St.', NULL, 'Sydney', 'Nueva Gales del Sur', 'Australia', '2000', 31, 10000.00),
(33, 'Flores S.L.', 'Antonio', 'Romero', '654352981', '685249700', 'Avenida España', NULL, 'Madrid', 'Fuenlabrada', 'Spain', '29643', 18, 6000.00),
(34, 'The Magic Garden', 'Richard', 'Mcain', '926523468', '9364875882', 'Lihgting Park', NULL, 'London', 'London', 'United Kingdom', '65930', 18, 10000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `ID_pedido` int(11) NOT NULL,
  `ID_producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unidad` decimal(10,2) DEFAULT NULL,
  `numero_linea` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`ID_pedido`, `ID_producto`, `cantidad`, `precio_unidad`, `numero_linea`) VALUES
(9, 0, 80, 1.00, 3),
(11, 0, 180, 1.00, 3),
(13, 11679, 5, 14.00, 1),
(13, 21636, 12, 14.00, 2),
(16, 30310, 12, 12.00, 1),
(17, 11679, 5, 14.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stg_categoria_producto`
--

CREATE TABLE `stg_categoria_producto` (
  `ID_categoria` int(11) NOT NULL,
  `desc_categoria` varchar(255) DEFAULT NULL,
  `descripcion_texto` text DEFAULT NULL,
  `descripcion_html` text DEFAULT NULL,
  `imagen` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stg_categoria_producto`
--

INSERT INTO `stg_categoria_producto` (`ID_categoria`, `desc_categoria`, `descripcion_texto`, `descripcion_html`, `imagen`) VALUES
(1, 'Herbaceas', 'Plantas para jardin decorativas', NULL, NULL),
(2, 'Herramientas', 'Herramientas para todo tipo de acción', NULL, NULL),
(3, 'Aromáticas', 'Plantas aromáticas', NULL, NULL),
(4, 'Frutales', 'Árboles pequeños de producción frutal', NULL, NULL),
(5, 'Ornamentales', 'Plantas vistosas para la decoración del jardín', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stg_pago`
--

CREATE TABLE `stg_pago` (
  `ID_pago` int(11) NOT NULL,
  `ID_cliente` int(11) NOT NULL,
  `forma_pago` varchar(50) NOT NULL,
  `id_transaccion` varchar(100) NOT NULL,
  `fecha_pago` date NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stg_pago`
--

INSERT INTO `stg_pago` (`ID_pago`, `ID_cliente`, `forma_pago`, `id_transaccion`, `fecha_pago`, `total`) VALUES
(3, 1, 'PayPal', 'ak-std-000001', '2008-11-10', 2000.00),
(4, 1, 'PayPal', 'ak-std-000002', '2008-12-10', 2000.00),
(5, 3, 'PayPal', 'ak-std-000003', '2009-01-16', 5000.00),
(6, 3, 'PayPal', 'ak-std-000004', '2009-02-16', 5000.00),
(7, 3, 'PayPal', 'ak-std-000005', '2009-02-19', 926.00),
(8, 4, 'PayPal', 'ak-std-000006', '2007-01-08', 20000.00),
(9, 4, 'PayPal', 'ak-std-000007', '2007-01-08', 20000.00),
(10, 4, 'PayPal', 'ak-std-000008', '2007-01-08', 20000.00),
(11, 4, 'PayPal', 'ak-std-000009', '2007-01-08', 20000.00),
(12, 4, 'PayPal', 'ak-std-000010', '2007-01-08', 1849.00),
(13, 5, 'Transferencia', 'ak-std-000011', '2006-01-18', 23794.00),
(14, 7, 'Cheque', 'ak-std-000012', '2009-01-13', 2390.00),
(15, 9, 'PayPal', 'ak-std-000013', '2009-01-06', 929.00),
(16, 13, 'PayPal', 'ak-std-000014', '2008-08-04', 2246.00),
(17, 14, 'PayPal', 'ak-std-000015', '2008-07-15', 4160.00),
(18, 15, 'PayPal', 'ak-std-000016', '2009-01-15', 2081.00),
(19, 15, 'PayPal', 'ak-std-000035', '2009-02-15', 10000.00),
(20, 16, 'PayPal', 'ak-std-000017', '2009-02-16', 4399.00),
(21, 19, 'PayPal', 'ak-std-000018', '2009-03-06', 232.00),
(22, 23, 'PayPal', 'ak-std-000019', '2009-03-26', 272.00),
(23, 26, 'PayPal', 'ak-std-000020', '2008-03-18', 18846.00),
(24, 27, 'PayPal', 'ak-std-000021', '2009-02-08', 10972.00),
(25, 28, 'PayPal', 'ak-std-000022', '2009-01-13', 8489.00),
(26, 30, 'PayPal', 'ak-std-000024', '2009-01-16', 7863.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stg_pedido`
--

CREATE TABLE `stg_pedido` (
  `ID_pedido` int(11) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `fecha_esperada` date NOT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  `comentarios` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stg_pedido`
--

INSERT INTO `stg_pedido` (`ID_pedido`, `fecha_pedido`, `fecha_esperada`, `fecha_entrega`, `estado`, `comentarios`) VALUES
(1, '2006-01-17', '2006-01-19', '2006-01-19', 'Entregado', 'Pagado a plazos'),
(2, '2007-10-23', '2007-10-28', '2007-10-26', 'Entregado', 'La entrega llegó antes de lo esperado'),
(3, '2008-06-20', '2008-06-25', NULL, 'Rechazado', 'Límite de crédito superado'),
(4, '2009-01-20', '2009-01-26', NULL, 'Pendiente', NULL),
(5, '2008-11-09', '2008-11-14', '2008-11-14', 'Entregado', 'El cliente paga la mitad con tarjeta y la otra mitad con efectivo'),
(6, '2008-12-22', '2008-12-27', '2008-12-28', 'Entregado', 'El cliente comprueba la integridad del paquete, todo correcto'),
(7, '2009-01-15', '2009-01-20', NULL, 'Pendiente', 'El cliente llama para confirmar la fecha - Esperando al proveedor'),
(8, '2009-01-20', '2009-01-27', NULL, 'Pendiente', 'El cliente requiere que el pedido se le entregue de 16:00h a 22:00h'),
(9, '2009-01-22', '2009-01-27', NULL, 'Pendiente', 'El cliente requiere que el pedido se le entregue de 9:00h a 13:00h'),
(10, '2009-01-12', '2009-01-14', '2009-01-15', 'Entregado', NULL),
(11, '2009-01-02', '2009-01-02', NULL, 'Rechazado', 'Mal pago'),
(12, '2009-01-09', '2009-01-12', '2009-01-11', 'Entregado', NULL),
(13, '2009-01-06', '2009-01-07', '2009-01-15', 'Entregado', NULL),
(14, '2009-01-08', '2009-01-09', '2009-01-11', 'Entregado', 'Mal estado'),
(15, '2009-01-05', '2009-01-06', '2009-01-07', 'Entregado', NULL),
(16, '2009-01-18', '2009-02-12', NULL, 'Pendiente', 'Entregar en Murcia'),
(17, '2009-01-20', '2009-02-15', NULL, 'Pendiente', NULL),
(18, '2009-01-09', '2009-01-09', '2009-01-09', 'Rechazado', 'Mal pago'),
(19, '2009-01-11', '2009-01-11', '2009-01-13', 'Entregado', NULL),
(20, '2008-12-30', '2009-01-10', NULL, 'Rechazado', 'El pedido fue anulado por el cliente'),
(21, '2008-07-14', '2008-07-31', '2008-07-25', 'Entregado', NULL),
(22, '2009-02-02', '2009-02-08', NULL, 'Rechazado', 'El cliente carece de saldo en la cuenta asociada'),
(23, '2009-02-06', '2009-02-12', NULL, 'Rechazado', 'El cliente anula la operación para adquirir más producto'),
(24, '2009-02-07', '2009-02-13', NULL, 'Entregado', 'El pedido aparece como entregado pero no sabemos en qué fecha'),
(25, '2009-02-10', '2009-02-17', '2009-02-20', 'Entregado', 'El cliente se queja bastante de la espera asociada al producto'),
(26, '2008-08-01', '2008-09-01', '2008-09-01', 'Rechazado', 'El cliente no está conforme con el pedido'),
(27, '2008-08-03', '2008-09-03', '2008-08-31', 'Entregado', NULL),
(28, '2008-09-04', '2008-09-30', '2008-10-04', 'Rechazado', 'El cliente ha rechazado por llegar 5 días tarde'),
(29, '2007-01-07', '2007-01-19', '2007-01-27', 'Entregado', 'Entrega tardía, el cliente puso reclamación'),
(30, '2007-05-20', '2007-05-28', NULL, 'Rechazado', 'El pedido fue anulado por el cliente'),
(31, '2007-06-20', '2008-06-28', '2008-06-28', 'Entregado', 'Pagado a plazos'),
(32, '2008-03-10', '2009-03-20', NULL, 'Rechazado', 'Límite de crédito superado'),
(33, '2008-10-15', '2008-12-15', '2008-12-10', 'Entregado', NULL),
(34, '2008-11-03', '2009-11-13', NULL, 'Pendiente', 'El pedido nunca llegó a su destino'),
(35, '2009-03-05', '2009-03-06', '2009-03-07', 'Entregado', NULL),
(36, '2009-03-06', '2009-03-07', '2009-03-09', 'Pendiente', NULL),
(37, '2009-03-09', '2009-03-10', '2009-03-13', 'Rechazado', NULL),
(38, '2009-03-12', '2009-03-13', '2009-03-13', 'Entregado', NULL),
(39, '2009-03-22', '2009-03-23', '2009-03-27', 'Entregado', NULL),
(40, '2009-03-25', '2009-03-26', '2009-03-28', 'Pendiente', NULL),
(41, '2009-03-26', '2009-03-27', '2009-03-30', 'Pendiente', NULL),
(42, '2009-04-01', '2009-04-04', '2009-04-07', 'Entregado', NULL),
(43, '2009-04-03', '2009-04-04', '2009-04-05', 'Rechazado', NULL),
(44, '2009-04-15', '2009-04-17', '2009-04-17', 'Entregado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stg_producto`
--

CREATE TABLE `stg_producto` (
  `ID_producto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `ID_categoria` int(11) DEFAULT NULL,
  `dimensiones` varchar(100) DEFAULT NULL,
  `proveedor` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `cantidad_en_stock` int(11) DEFAULT NULL,
  `precio_venta` decimal(10,2) DEFAULT NULL,
  `precio_proveedor` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_cliente`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`ID_pedido`,`ID_producto`);

--
-- Indices de la tabla `stg_categoria_producto`
--
ALTER TABLE `stg_categoria_producto`
  ADD PRIMARY KEY (`ID_categoria`);

--
-- Indices de la tabla `stg_pago`
--
ALTER TABLE `stg_pago`
  ADD PRIMARY KEY (`ID_pago`),
  ADD UNIQUE KEY `id_transaccion` (`id_transaccion`),
  ADD KEY `fk_pago_cliente` (`ID_cliente`);

--
-- Indices de la tabla `stg_pedido`
--
ALTER TABLE `stg_pedido`
  ADD PRIMARY KEY (`ID_pedido`);

--
-- Indices de la tabla `stg_producto`
--
ALTER TABLE `stg_producto`
  ADD PRIMARY KEY (`ID_producto`),
  ADD KEY `ID_categoria` (`ID_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `stg_pago`
--
ALTER TABLE `stg_pago`
  MODIFY `ID_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `stg_pedido`
--
ALTER TABLE `stg_pedido`
  MODIFY `ID_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `stg_producto`
--
ALTER TABLE `stg_producto`
  ADD CONSTRAINT `stg_producto_ibfk_1` FOREIGN KEY (`ID_categoria`) REFERENCES `stg_categoria_producto` (`ID_categoria`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
