-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 30-11-2023 a las 04:38:18
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
-- Base de datos: `cafeteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(45) NOT NULL,
  PRIMARY KEY ('id_category')category
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`) VALUES
(6, 'Sandwich'),
(7, 'Empanadas'),
(8, 'Sandwich saludables'),
(9, 'Helados'),
(10, 'Jugos de fruta'),
(11, 'Bebidas frías'),
(12, 'Bebidas Calientes'),
(13, 'Bowlds Saludables'),
(14, 'Copas Saludables'),
(15, 'Enrrollado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `user` (
  `id_user` int(8) NOT NULL,
  `name_user` varchar(45) NOT NULL,
  `lastname_user` varchar(70) NOT NULL,
  `phone_user` int(9) DEFAULT NULL,
  `email_user` varchar(45) DEFAULT NULL,
  `addres_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `usuario`, `contraseña`, `telefono`, `direccion`) VALUES
(1, 'gonzales', 'gonzales2', 'gonzales2', '963258741', 'jhfdsafgh'),
(74193113, 'fernando', 'fer', 'fer', '937346094', 'cayhuayna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_pedidos`
--

CREATE TABLE `detalles_pedidos` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notasdeventa`
--

CREATE TABLE `notasdeventa` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `total` double NOT NULL,
  `fecha_pedido` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `estado`, `cliente_id`, `total`, `fecha_pedido`) VALUES
(33, '0', 74193113, 40, '2023-11-27 00:37:10'),
(34, '0', 74193113, 58, '2023-11-27 00:40:20'),
(35, '0', 74193113, 76, '2023-11-27 00:44:51'),
(36, '0', 74193113, 76, '2023-11-27 08:55:51'),
(37, '0', 74193113, 115, '2023-11-27 09:11:47'),
(38, '0', 74193113, 115, '2023-11-27 09:13:44'),
(39, '0', 74193113, 115, '2023-11-27 09:16:04'),
(40, '0', 74193113, 115, '2023-11-27 09:20:33'),
(41, '0', 74193113, 115, '2023-11-27 09:22:56'),
(42, '0', 74193113, 115, '2023-11-27 09:23:14'),
(43, '0', 74193113, 23, '2023-11-27 09:26:42'),
(44, '0', 74193113, 23, '2023-11-27 09:30:49'),
(45, '0', 74193113, 0, '2023-11-28 08:42:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `producto`, `descripcion`, `stock`, `precio`, `id_categoria`) VALUES
(1, 'Napolitana', '---', 25, 3.50, 7),
(2, 'Carne', '---', 50, 3.50, 7),
(3, 'Pollo', '---', 50, 3.50, 7),
(4, 'Hawaina', '---', 50, 3.50, 7),
(5, 'Mixta', '---', 50, 3.00, 7),
(6, 'Queso', '---', 50, 3.00, 7),
(7, 'Amazonico', '---', 50, 4.00, 7),
(8, 'Lomo Saltado', '---', 50, 4.00, 7),
(9, 'Hot dog', '---', 50, 2.50, 15),
(10, 'Chorizo', '---', 50, 2.50, 15),
(11, 'Jamon', 'Pan, jamon, sandwinch, lechuga, tomate', 50, 5.00, 6),
(12, 'Jamon y queso', 'Pan, jamon, queso edam', 50, 8.00, 6),
(13, 'Jamon/palta', 'Pan, jamon, palta, tomate, lechuga, mayonesa', 50, 7.00, 6),
(14, 'Jamon/palta/pollo', 'Pan, jamon, palta, tomate, lechuga, mayonesa, pollo', 50, 9.00, 6),
(15, 'Pollo deshllachado', 'Pan, pollo, tomate, lechuga, papas al hilo', 50, 7.00, 6),
(16, 'Pollo con piña', 'Pan, pollo, piña, queso edam', 50, 9.00, 6),
(17, 'Pollo con champiñones', 'Pan, ueso fresco, champiñones, pollo y cebolla', 50, 9.00, 6),
(18, 'Pollo con durazno', 'Pan, durazno, pollo', 50, 9.00, 6),
(19, 'Pollo con durazno/pecana', 'Pan, durazno, pecanas, pollo', 50, 9.00, 6),
(20, 'Pollo/queso/verdura', 'Pan, pollo, queso fresco, lechuga, jamon, pepinillo, tomate', 50, 9.00, 6),
(21, 'Tocino/basico', 'Pan, tocino, tomate, lechuga, queso fresco', 50, 9.00, 6),
(22, 'Tocino/verduras', 'Pan, tocino, queso edam, tomate, lechuga, pepinillo', 50, 9.00, 6),
(23, 'Tocino/pollo', 'Pan, tocino, queso fresco, pollo', 50, 10.00, 6),
(24, 'Tocino/champiñones', 'Pan, tocino, queso fresco, cebolla,champiñones ', 50, 9.00, 6),
(25, 'Triple', 'Pan, jamon, queso fresco, pollo', 50, 10.00, 6),
(26, 'Triple mixto', 'Pan, jamon del pais, jamon sarit, queso edam, pollo', 50, 12.00, 6),
(27, 'Sant.saludable 1', 'Pan integral, lechuga, palta, chia, tomate', 50, 7.00, 8),
(28, 'Sant.saludable 2', 'Pan integral, lechuga, jamon, tomate', 50, 7.00, 8),
(29, 'Sant.saludable 3', 'Pan integral, palta, chia, tomate, queso fresco, espinaca', 50, 7.00, 8),
(30, 'Sant.saludable 4', 'Pan integral, pollo, palta, chia', 50, 8.00, 8),
(31, 'Sant.saludable 5', 'Pan integral, lechuga, queso crema, jamon, pepinillo, tomate', 50, 9.00, 8),
(32, 'Sant.saludable 6', 'Pan integral, queso crema, tomate, palta, pecanas, pollo deshilachado', 50, 9.00, 8),
(33, 'Sant.saludable 7', 'Pan integral, queso fresco, palta, lechuga, pepiillo, pollo deshilachado', 50, 9.00, 8),
(34, 'Sant.saludable 8', 'Pan integral, jamon, queso fresco, espinaca, tomate, palta', 50, 9.00, 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalles_pedidos`
--
ALTER TABLE `detalles_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `notasdeventa`
--
ALTER TABLE `notasdeventa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_id` (`pedido_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `categoria_id` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `detalles_pedidos`
--
ALTER TABLE `detalles_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `notasdeventa`
--
ALTER TABLE `notasdeventa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11235;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles_pedidos`
--
ALTER TABLE `detalles_pedidos`
  ADD CONSTRAINT `detalles_pedidos_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `notasdeventa`
--
ALTER TABLE `notasdeventa`
  ADD CONSTRAINT `notasdeventa_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
