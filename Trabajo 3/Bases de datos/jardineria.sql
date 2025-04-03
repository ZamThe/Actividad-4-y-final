-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2025 a las 22:19:58
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
-- Base de datos: `jardineria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `ID_categoria` int(11) NOT NULL,
  `desc_categoria` varchar(50) NOT NULL,
  `descripcion_texto` text DEFAULT NULL,
  `descripcion_html` text DEFAULT NULL,
  `imagen` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria_producto`
--

INSERT INTO `categoria_producto` (`ID_categoria`, `desc_categoria`, `descripcion_texto`, `descripcion_html`, `imagen`) VALUES
(1, 'Herbaceas', 'Plantas para jardin decorativas', NULL, NULL),
(2, 'Herramientas', 'Herramientas para todo tipo de acción', NULL, NULL),
(3, 'Aromáticas', 'Plantas aromáticas', NULL, NULL),
(4, 'Frutales', 'Árboles pequeños de producción frutal', NULL, NULL),
(5, 'Ornamentales', 'Plantas vistosas para la decoración del jardín', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `nombre_contacto` varchar(30) DEFAULT NULL,
  `apellido_contacto` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `linea_direccion1` varchar(50) NOT NULL,
  `linea_direccion2` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `pais` varchar(50) NOT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ID_empleado_rep_ventas` int(11) DEFAULT NULL,
  `limite_credito` decimal(15,2) DEFAULT NULL
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
  `ID_producto` varchar(15) NOT NULL,
  `cantidad` int(11) NOT NULL CHECK (`cantidad` > 0),
  `precio_unidad` decimal(15,2) NOT NULL CHECK (`precio_unidad` > 0),
  `numero_linea` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`ID_pedido`, `ID_producto`, `cantidad`, `precio_unidad`, `numero_linea`) VALUES
(9, 'AR-001', 80, 1.00, 3),
(11, 'AR-006', 180, 1.00, 3),
(13, '11679', 5, 14.00, 1),
(13, '21636', 12, 14.00, 2),
(16, '30310', 12, 12.00, 1),
(17, '11679', 5, 14.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `ID_empleado` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ID_oficina` int(11) NOT NULL,
  `ID_jefe` int(11) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`ID_empleado`, `nombre`, `apellido1`, `apellido2`, `extension`, `email`, `ID_oficina`, `ID_jefe`, `puesto`) VALUES
(1, 'Marcos', 'Magaña', 'Perez', '3897', 'marcos@jardineria.es', 8, NULL, 'Director General'),
(2, 'Ruben', 'López', 'Martinez', '2899', 'rlopez@jardineria.es', 8, 1, 'Subdirector Marketing'),
(3, 'Alberto', 'Soria', 'Carrasco', '2837', 'asoria@jardineria.es', 8, 2, 'Subdirector Ventas'),
(4, 'Maria', 'Solís', 'Jerez', '2847', 'msolis@jardineria.es', 8, 2, 'Secretaria'),
(5, 'Felipe', 'Rosas', 'Marquez', '2844', 'frosas@jardineria.es', 8, 3, 'Representante Ventas'),
(6, 'Juan Carlos', 'Ortiz', 'Serrano', '2845', 'cortiz@jardineria.es', 8, 3, 'Representante Ventas'),
(7, 'Carlos', 'Soria', 'Jimenez', '2444', 'csoria@jardineria.es', 4, 3, 'Director Oficina'),
(8, 'Mariano', 'López', 'Murcia', '2442', 'mlopez@jardineria.es', 4, 7, 'Representante Ventas'),
(9, 'Lucio', 'Campoamor', 'Martín', '2442', 'lcampoamor@jardineria.es', 4, 7, 'Representante Ventas'),
(10, 'Hilario', 'Rodriguez', 'Huertas', '2444', 'hrodriguez@jardineria.es', 4, 7, 'Representante Ventas'),
(11, 'Emmanuel', 'Magaña', 'Perez', '2518', 'manu@jardineria.es', 1, 3, 'Director Oficina'),
(12, 'José Manuel', 'Martinez', 'De la Osa', '2519', 'jmmart@hotmail.es', 1, 11, 'Representante Ventas'),
(13, 'David', 'Palma', 'Aceituno', '2519', 'dpalma@jardineria.es', 1, 11, 'Representante Ventas'),
(14, 'Oscar', 'Palma', 'Aceituno', '2519', 'opalma@jardineria.es', 1, 11, 'Representante Ventas'),
(15, 'Francois', 'Fignon', NULL, '9981', 'ffignon@gardening.com', 5, 3, 'Director Oficina'),
(16, 'Lionel', 'Narvaez', NULL, '9982', 'lnarvaez@gardening.com', 5, 15, 'Representante Ventas'),
(17, 'Laurent', 'Serra', NULL, '9982', 'lserra@gardening.com', 5, 15, 'Representante Ventas'),
(18, 'Michael', 'Bolton', NULL, '7454', 'mbolton@gardening.com', 6, 3, 'Director Oficina'),
(19, 'Walter Santiago', 'Sanchez', 'Lopez', '7454', 'wssanchez@gardening.com', 6, 18, 'Representante Ventas'),
(20, 'Hilary', 'Washington', NULL, '7565', 'hwashington@gardening.com', 2, 3, 'Director Oficina'),
(21, 'Marcus', 'Paxton', NULL, '7565', 'mpaxton@gardening.com', 2, 20, 'Representante Ventas'),
(22, 'Lorena', 'Paxton', NULL, '7665', 'lpaxton@gardening.com', 2, 20, 'Representante Ventas'),
(23, 'Nei', 'Nishikori', NULL, '8734', 'nnishikori@gardening.com', 9, 3, 'Director Oficina'),
(24, 'Narumi', 'Riko', NULL, '8734', 'nriko@gardening.com', 9, 23, 'Representante Ventas'),
(25, 'Takuma', 'Nomura', NULL, '8735', 'tnomura@gardening.com', 9, 23, 'Representante Ventas'),
(26, 'Amy', 'Johnson', NULL, '3321', 'ajohnson@gardening.com', 3, 3, 'Director Oficina'),
(27, 'Larry', 'Westfalls', NULL, '3322', 'lwestfalls@gardening.com', 3, 26, 'Representante Ventas'),
(28, 'John', 'Walton', NULL, '3322', 'jwalton@gardening.com', 3, 26, 'Representante Ventas'),
(29, 'Kevin', 'Fallmer', NULL, '3210', 'kfalmer@gardening.com', 7, 3, 'Director Oficina'),
(30, 'Julian', 'Bellinelli', NULL, '3211', 'jbellinelli@gardening.com', 7, 29, 'Representante Ventas'),
(31, 'Mariko', 'Kishi', NULL, '3211', 'mkishi@gardening.com', 7, 29, 'Representante Ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina`
--

CREATE TABLE `oficina` (
  `ID_oficina` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(10) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `linea_direccion1` varchar(50) NOT NULL,
  `linea_direccion2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oficina`
--

INSERT INTO `oficina` (`ID_oficina`, `descripcion`, `ciudad`, `pais`, `region`, `codigo_postal`, `telefono`, `linea_direccion1`, `linea_direccion2`) VALUES
(1, 'BCN-ES', 'Barcelona', 'España', 'Barcelona', '08019', '+34 93 3561182', 'Avenida Diagonal, 38', '3A escalera Derecha'),
(2, 'BOS-USA', 'Boston', 'EEUU', 'MA', '02108', '+1 215 837 0825', '1550 Court Place', 'Suite 102'),
(3, 'LON-UK', 'Londres', 'Inglaterra', 'EMEA', 'EC2N 1HN', '+44 20 78772041', '52 Old Broad Street', 'Ground Floor'),
(4, 'MAD-ES', 'Madrid', 'España', 'Madrid', '28032', '+34 91 7514487', 'Bulevar Indalecio Prieto, 32', NULL),
(5, 'PAR-FR', 'Paris', 'Francia', 'EMEA', '75017', '+33 14 723 4404', '29 Rue Jouffroy d\'abbans', NULL),
(6, 'SFC-USA', 'San Francisco', 'EEUU', 'CA', '94080', '+1 650 219 4782', '100 Market Street', 'Suite 300'),
(7, 'SYD-AU', 'Sydney', 'Australia', 'APAC', 'NSW 2010', '+61 2 9264 2451', '5-11 Wentworth Avenue', 'Floor #2'),
(8, 'TAL-ES', 'Talavera de la Reina', 'España', 'Castilla-LaMancha', '45632', '+34 925 867231', 'Francisco Aguirre, 32', '5º piso (exterior)'),
(9, 'TOK-JP', 'Tokyo', 'Japón', 'Chiyoda-Ku', '102-8578', '+81 33 224 5000', '4-1 Kioicho', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `ID_cliente` int(11) NOT NULL,
  `forma_pago` varchar(40) NOT NULL,
  `id_transaccion` varchar(50) NOT NULL,
  `fecha_pago` date NOT NULL,
  `total` decimal(15,2) NOT NULL CHECK (`total` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`ID_cliente`, `forma_pago`, `id_transaccion`, `fecha_pago`, `total`) VALUES
(1, 'PayPal', 'ak-std-000001', '2008-11-10', 2000.00),
(1, 'PayPal', 'ak-std-000002', '2008-12-10', 2000.00),
(3, 'PayPal', 'ak-std-000003', '2009-01-16', 5000.00),
(3, 'PayPal', 'ak-std-000004', '2009-02-16', 5000.00),
(3, 'PayPal', 'ak-std-000005', '2009-02-19', 926.00),
(4, 'PayPal', 'ak-std-000006', '2007-01-08', 20000.00),
(4, 'PayPal', 'ak-std-000007', '2007-01-08', 20000.00),
(4, 'PayPal', 'ak-std-000008', '2007-01-08', 20000.00),
(4, 'PayPal', 'ak-std-000009', '2007-01-08', 20000.00),
(4, 'PayPal', 'ak-std-000010', '2007-01-08', 1849.00),
(5, 'Transferencia', 'ak-std-000011', '2006-01-18', 23794.00),
(7, 'Cheque', 'ak-std-000012', '2009-01-13', 2390.00),
(9, 'PayPal', 'ak-std-000013', '2009-01-06', 929.00),
(13, 'PayPal', 'ak-std-000014', '2008-08-04', 2246.00),
(14, 'PayPal', 'ak-std-000015', '2008-07-15', 4160.00),
(15, 'PayPal', 'ak-std-000016', '2009-01-15', 2081.00),
(15, 'PayPal', 'ak-std-000035', '2009-02-15', 10000.00),
(16, 'PayPal', 'ak-std-000017', '2009-02-16', 4399.00),
(19, 'PayPal', 'ak-std-000018', '2009-03-06', 232.00),
(23, 'PayPal', 'ak-std-000019', '2009-03-26', 272.00),
(26, 'PayPal', 'ak-std-000020', '2008-03-18', 18846.00),
(27, 'PayPal', 'ak-std-000021', '2009-02-08', 10972.00),
(28, 'PayPal', 'ak-std-000022', '2009-01-13', 8489.00),
(30, 'PayPal', 'ak-std-000024', '2009-01-16', 7863.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `ID_pedido` int(11) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `fecha_esperada` date NOT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `estado` varchar(15) NOT NULL,
  `comentarios` text DEFAULT NULL,
  `ID_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`ID_pedido`, `fecha_pedido`, `fecha_esperada`, `fecha_entrega`, `estado`, `comentarios`, `ID_cliente`) VALUES
(1, '2006-01-17', '2006-01-19', '2006-01-19', 'Entregado', 'Pagado a plazos', 5),
(2, '2007-10-23', '2007-10-28', '2007-10-26', 'Entregado', 'La entrega llegó antes de lo esperado', 5),
(3, '2008-06-20', '2008-06-25', NULL, 'Rechazado', 'Límite de crédito superado', 5),
(4, '2009-01-20', '2009-01-26', NULL, 'Pendiente', NULL, 5),
(5, '2008-11-09', '2008-11-14', '2008-11-14', 'Entregado', 'El cliente paga la mitad con tarjeta y la otra mitad con efectivo', 1),
(6, '2008-12-22', '2008-12-27', '2008-12-28', 'Entregado', 'El cliente comprueba la integridad del paquete, todo correcto', 1),
(7, '2009-01-15', '2009-01-20', NULL, 'Pendiente', 'El cliente llama para confirmar la fecha - Esperando al proveedor', 3),
(8, '2009-01-20', '2009-01-27', NULL, 'Pendiente', 'El cliente requiere que el pedido se le entregue de 16:00h a 22:00h', 1),
(9, '2009-01-22', '2009-01-27', NULL, 'Pendiente', 'El cliente requiere que el pedido se le entregue de 9:00h a 13:00h', 1),
(10, '2009-01-12', '2009-01-14', '2009-01-15', 'Entregado', NULL, 7),
(11, '2009-01-02', '2009-01-02', NULL, 'Rechazado', 'Mal pago', 7),
(12, '2009-01-09', '2009-01-12', '2009-01-11', 'Entregado', NULL, 7),
(13, '2009-01-06', '2009-01-07', '2009-01-15', 'Entregado', NULL, 7),
(14, '2009-01-08', '2009-01-09', '2009-01-11', 'Entregado', 'Mal estado', 7),
(15, '2009-01-05', '2009-01-06', '2009-01-07', 'Entregado', NULL, 9),
(16, '2009-01-18', '2009-02-12', NULL, 'Pendiente', 'Entregar en Murcia', 9),
(17, '2009-01-20', '2009-02-15', NULL, 'Pendiente', NULL, 9),
(18, '2009-01-09', '2009-01-09', '2009-01-09', 'Rechazado', 'Mal pago', 9),
(19, '2009-01-11', '2009-01-11', '2009-01-13', 'Entregado', NULL, 9),
(20, '2008-12-30', '2009-01-10', NULL, 'Rechazado', 'El pedido fue anulado por el cliente', 5),
(21, '2008-07-14', '2008-07-31', '2008-07-25', 'Entregado', NULL, 14),
(22, '2009-02-02', '2009-02-08', NULL, 'Rechazado', 'El cliente carece de saldo en la cuenta asociada', 1),
(23, '2009-02-06', '2009-02-12', NULL, 'Rechazado', 'El cliente anula la operación para adquirir más producto', 3),
(24, '2009-02-07', '2009-02-13', NULL, 'Entregado', 'El pedido aparece como entregado pero no sabemos en qué fecha', 3),
(25, '2009-02-10', '2009-02-17', '2009-02-20', 'Entregado', 'El cliente se queja bastante de la espera asociada al producto', 3),
(26, '2008-08-01', '2008-09-01', '2008-09-01', 'Rechazado', 'El cliente no está conforme con el pedido', 14),
(27, '2008-08-03', '2008-09-03', '2008-08-31', 'Entregado', NULL, 13),
(28, '2008-09-04', '2008-09-30', '2008-10-04', 'Rechazado', 'El cliente ha rechazado por llegar 5 días tarde', 13),
(29, '2007-01-07', '2007-01-19', '2007-01-27', 'Entregado', 'Entrega tardía, el cliente puso reclamación', 4),
(30, '2007-05-20', '2007-05-28', NULL, 'Rechazado', 'El pedido fue anulado por el cliente', 4),
(31, '2007-06-20', '2008-06-28', '2008-06-28', 'Entregado', 'Pagado a plazos', 4),
(32, '2008-03-10', '2009-03-20', NULL, 'Rechazado', 'Límite de crédito superado', 4),
(33, '2008-10-15', '2008-12-15', '2008-12-10', 'Entregado', NULL, 14),
(34, '2008-11-03', '2009-11-13', NULL, 'Pendiente', 'El pedido nunca llegó a su destino', 4),
(35, '2009-03-05', '2009-03-06', '2009-03-07', 'Entregado', NULL, 19),
(36, '2009-03-06', '2009-03-07', '2009-03-09', 'Pendiente', NULL, 19),
(37, '2009-03-09', '2009-03-10', '2009-03-13', 'Rechazado', NULL, 19),
(38, '2009-03-12', '2009-03-13', '2009-03-13', 'Entregado', NULL, 19),
(39, '2009-03-22', '2009-03-23', '2009-03-27', 'Entregado', NULL, 19),
(40, '2009-03-25', '2009-03-26', '2009-03-28', 'Pendiente', NULL, 23),
(41, '2009-03-26', '2009-03-27', '2009-03-30', 'Pendiente', NULL, 23),
(42, '2009-04-01', '2009-04-04', '2009-04-07', 'Entregado', NULL, 23),
(43, '2009-04-03', '2009-04-04', '2009-04-05', 'Rechazado', NULL, 23),
(44, '2009-04-15', '2009-04-17', '2009-04-17', 'Entregado', NULL, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID_producto` varchar(15) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `ID_categoria` int(11) NOT NULL,
  `dimensiones` varchar(25) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `cantidad_en_stock` smallint(6) NOT NULL CHECK (`cantidad_en_stock` >= 0),
  `precio_venta` decimal(15,2) NOT NULL CHECK (`precio_venta` > 0),
  `precio_proveedor` decimal(15,2) DEFAULT NULL CHECK (`precio_proveedor` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID_producto`, `nombre`, `ID_categoria`, `dimensiones`, `proveedor`, `descripcion`, `cantidad_en_stock`, `precio_venta`, `precio_proveedor`) VALUES
('11679', 'Sierra de Poda 400MM', 2, '0.258', 'HiperGarden Tools', 'Gracias a la poda se consigue manipular un poco la naturaleza, dándole la forma que más nos guste...', 15, 14.00, 11.00),
('21636', 'Pala', 3, '0.156', 'HiperGarden Tools', 'Palas de acero con cresta de corte en la punta para cortar bien el terreno...', 15, 14.00, 13.00),
('22225', 'Rastrillo de Jardín', 3, '1.064', 'HiperGarden Tools', 'Fabuloso rastillo que le ayudará a eliminar piedras, hojas, ramas y otros elementos incómodos...', 15, 12.00, 11.00),
('30310', 'Azadón', 3, '0.168', 'HiperGarden Tools', 'Longitud: 24cm. Herramienta fabricada en acero y pintura epoxi...', 15, 12.00, 11.00),
('AR-001', 'Ajedrea', 4, '15.20', 'Murcia Seasons', 'Planta aromática que fresca se utiliza para condimentar carnes y ensaladas...', 140, 1.00, 0.00),
('AR-002', 'Lavándula Dentata', 4, '15.20', 'Murcia Seasons', 'Espliego de jardín, Alhucema rizada, Alhucema dentada...', 140, 1.00, 0.00),
('AR-003', 'Mejorana', 4, '15.20', 'Murcia Seasons', 'Origanum majorana. No hay que confundirlo con el orégano...', 140, 1.00, 0.00),
('AR-004', 'Melissa', 4, '15.20', 'Murcia Seasons', 'Es una planta perenne conocida por el agradable y característico olor a limón...', 140, 1.00, 0.00),
('AR-005', 'Mentha Sativa', 4, '15.20', 'Murcia Seasons', '¿Quién no conoce la Hierbabuena? Se trata de una plantita muy aromática...', 140, 1.00, 0.00),
('AR-006', 'Petrosilium Hortense (Perejil)', 4, '15.20', 'Murcia Seasons', 'Nombre científico o latino: Petroselinum hortense, Petroselinum crispum...', 140, 1.00, 0.00),
('AR-007', 'Salvia Mix', 4, '15.20', 'Murcia Seasons', 'La Salvia es un pequeño arbusto que llega hasta el metro de alto...', 140, 1.00, 0.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`ID_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_cliente`),
  ADD KEY `ID_empleado_rep_ventas` (`ID_empleado_rep_ventas`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`ID_pedido`,`ID_producto`),
  ADD KEY `ID_producto` (`ID_producto`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`ID_empleado`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `ID_oficina` (`ID_oficina`),
  ADD KEY `ID_jefe` (`ID_jefe`);

--
-- Indices de la tabla `oficina`
--
ALTER TABLE `oficina`
  ADD PRIMARY KEY (`ID_oficina`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`ID_cliente`,`id_transaccion`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ID_pedido`),
  ADD KEY `ID_cliente` (`ID_cliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_producto`),
  ADD KEY `ID_categoria` (`ID_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  MODIFY `ID_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `ID_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `oficina`
--
ALTER TABLE `oficina`
  MODIFY `ID_oficina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `ID_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ID_empleado_rep_ventas`) REFERENCES `empleado` (`ID_empleado`) ON DELETE SET NULL;

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`ID_pedido`) REFERENCES `pedido` (`ID_pedido`) ON DELETE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`ID_producto`) REFERENCES `producto` (`ID_producto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`ID_oficina`) REFERENCES `oficina` (`ID_oficina`) ON DELETE CASCADE,
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`ID_jefe`) REFERENCES `empleado` (`ID_empleado`) ON DELETE SET NULL;

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`) ON DELETE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`ID_categoria`) REFERENCES `categoria_producto` (`ID_categoria`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
