-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2026 a las 06:23:21
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_departamental_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo_articulos`
--

CREATE TABLE `catalogo_articulos` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_articulo` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `ruta_imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `catalogo_articulos`
--

INSERT INTO `catalogo_articulos` (`id`, `categoria`, `marca`, `nombre_articulo`, `descripcion`, `precio`, `ruta_imagen`) VALUES
(1, 'Ropa', 'Zara', 'Playera Básica Oversize Zara', 'Algodón peinado de corte relajado para uso diario.', '499.00', 'imagenes/zara.jpg'),
(3, 'Ropa', 'H&M', 'Pantalón Cargo Slim Fit H&M', 'Gabardina ligera con bolsillos laterales funcionales.', '799.00', 'imagenes/hym.jpg'),
(5, 'Ropa', 'Levi\'s', 'Chamarra Mezclilla Trucker Levi\'s', 'Denim clásico resistente con botones metálicos.', '1699.00', 'imagenes/levis.jpg'),
(7, 'Ropa', 'Nike', 'Sudadera Hoodie Sportswear Nike', 'Interior afelpado suave con capucha ajustable.', '1450.00', 'imagenes/nikeropa.jpg'),
(9, 'Ropa', 'Gucci', 'Playera Logo Clásico Gucci', 'Algodón premium con estampado frontal distintivo.', '8900.00', 'imagenes/gucci.jpg'),
(11, 'Cosmeticos', 'L\'Oréal', 'Base Infallible 24H Fresh Wear', 'Cobertura alta ligera resistente al agua.', '349.00', 'imagenes/loreal.jpg'),
(13, 'Cosmeticos', 'MAC', 'Labial Matte Ruby Woo MAC', 'Acabado ultra mate de pigmentación intensa.', '520.00', 'imagenes/mac.jpg'),
(15, 'Cosmeticos', 'Maybelline', 'Máscara Lash Sensational Sky High', 'Cepillo flexible para volumen y longitud extrema.', '259.00', 'imagenes/maybelline.jpg'),
(17, 'Cosmeticos', 'Sephora', 'Paleta de Sombras Nude Rose', '12 tonos mate y satinados de alta difuminación.', '680.00', 'imagenes/sephora.jpg'),
(19, 'Cosmeticos', 'Nivea', 'Crema Hidratante Facial Soft', 'Fórmula ligera con vitamina E y aceite de jojoba.', '145.00', 'imagenes/nivea.jpg'),
(21, 'Calzado', 'Adidas', 'Tenis Superstar Clásicos Adidas', 'Puntera de caucho y tres franjas laterales.', '2299.00', 'imagenes/adidas.jpg'),
(23, 'Calzado', 'Nike', 'Tenis Air Force 1 07 Nike', 'Silueta clásica en piel con amortiguación Air.', '2599.00', 'imagenes/nike.jpg'),
(25, 'Calzado', 'Puma', 'Tenis Suede Classic XXI Puma', 'Exterior de gamuza suave con suela de goma.', '1899.00', 'imagenes/puma.jpg'),
(27, 'Calzado', 'Converse', 'Tenis Chuck Taylor All Star Bota', 'Lona resistente de corte alto con suela vulcanizada.', '1499.00', 'imagenes/converse.jpg'),
(29, 'Calzado', 'Vans', 'Tenis Old Skool Negro Blanco', 'Gamuza y lona con banda lateral Sidestripe.', '1599.00', 'imagenes/vans.jpg'),
(31, 'Celulares', 'Apple', 'iPhone 15 128GB Apple', 'Pantalla Super Retina XDR de 6.1\" y cámara de 48 MP.', '17499.00', 'imagenes/apple.jpg'),
(33, 'Celulares', 'Samsung', 'Galaxy S24 256GB Samsung', 'Pantalla Dynamic AMOLED 2X 120Hz con Galaxy AI.', '16999.00', 'imagenes/samsung.jpg'),
(35, 'Celulares', 'Xiaomi', 'Redmi Note 13 Pro 256GB Xiaomi', 'Cámara principal de 200 MP y carga turbo 67W.', '6499.00', 'imagenes/xioami.jpg'),
(37, 'Celulares', 'Motorola', 'Moto Edge 40 Neo 256GB Motorola', 'Pantalla pOLED curva de 144Hz y certificación IP68.', '7299.00', 'imagenes/motorola.jpg'),
(39, 'Celulares', 'Huawei', 'Nova 12 SE 256GB Huawei', 'Diseño ultradelgado con cámara retrato de 108 MP.', '6899.00', 'imagenes/huawei.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_usuarios`
--

CREATE TABLE `clientes_usuarios` (
  `id` int(11) NOT NULL,
  `correo` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contrasena` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes_usuarios`
--

INSERT INTO `clientes_usuarios` (`id`, `correo`, `contrasena`, `fecha_registro`) VALUES
(1, 'chrisalexis1206@gmail.com', '$2y$10$ueMUl9EOtPQr97a2itLlo.W2TGbLrzvCvXnsSwNnVYCjenUFo3J0.', '2026-11-20 08:22:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes_compra`
--

CREATE TABLE `ordenes_compra` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `categoria` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `articulo` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `fecha_orden` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo_articulos`
--
ALTER TABLE `catalogo_articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes_usuarios`
--
ALTER TABLE `clientes_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `ordenes_compra`
--
ALTER TABLE `ordenes_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogo_articulos`
--
ALTER TABLE `catalogo_articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `clientes_usuarios`
--
ALTER TABLE `clientes_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ordenes_compra`
--
ALTER TABLE `ordenes_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ordenes_compra`
--
ALTER TABLE `ordenes_compra`
  ADD CONSTRAINT `ordenes_compra_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes_usuarios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
