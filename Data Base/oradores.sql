-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2023 a las 21:24:21
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tp_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `profesion` varchar(50) DEFAULT NULL,
  `resenia` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `temas` varchar(100) NOT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id`, `nombre`, `apellido`, `profesion`, `resenia`, `email`, `temas`, `foto`) VALUES
(1, 'Michael', 'Basiles', 'Assistant Media Planner', 'whiteboard rich technologies', 'mbasile0@gmail.com', 'Inteligencia Artificial, Microsoft, Windows, bugs en Windos', '  https://reqres.in/img/faces/9-image.jpg'),
(2, 'Cloe', 'Chatten', 'Database Administrator IV', 'unleash cutting-edge partnerships', 'cchatten1@tripadvisor.com', 'Apple, mac, sistemas distribuidos, diseño de productos informáticos', '  https://reqres.in/img/faces/10-image.jpg'),
(3, 'Ali', 'Ritmeier', 'Analog Circuit Design manager', 'harness sexy architectures', 'aritmeier2@yandex.ru', 'Manejo de scripts, Seguirdad en las redes, IoT, Realidad aumentadad', ' https://reqres.in/img/faces/7-image.jpg'),
(4, 'Loutitia', 'McPeake', 'Quality Engineer', 'recontextualize robust metrics', 'lmcpeake3@mediafire.com', 'Seguirdad en las redes, IoT, Realidad aumentadad', 'https://reqres.in/img/faces/6-image.jpg'),
(5, 'Algernon', 'Longhorne', 'Registered Nurse', 'target leading-edge deliverables', 'alonghorne4@about.com', 'Ordenadores cuánticos, computación cuántica, big data', '  https://reqres.in/img/faces/1-image.jpg'),
(6, 'Cece', 'Ivashnikov', 'Senior Editor', 'architect bricks-and-clicks interfaces', 'civashnikov5@timesonline.co.uk', 'Inteligencia Artificial, Microsoft, Windows, bugs en Windos', ' https://reqres.in/img/faces/4-image.jpg'),
(7, 'Bernete', 'Bahls', 'Nurse', 'leverage back-end vortals', 'bbahls6@usatoday.com', 'Manejo de scripts, Seguirdad en las redes, IoT, Realidad aumentadad', ' https://reqres.in/img/faces/5-image.jpg'),
(8, 'Koressa', 'Baldini', 'Systems Administrator III', 'facilitate back-end e-services', 'kbaldini7@cmu.edu', 'Inteligencia Artificial, Microsoft, Windows, bugs en Windos', ' https://reqres.in/img/faces/2-image.jpg'),
(9, 'Terri-jo', 'Mucklow', 'Human Resources Assistant IV', 'mesh visionary schemas', 'tmucklow8@hc360.com', 'Inteligencia Artificial, Microsoft, Windows, bugs en Windos', ' https://reqres.in/img/faces/3-image.jpg'),
(10, 'Irvine', 'Doerling', 'Statistician IV', 'scale mission-critical networks', 'idoerling9@multiply.com', 'Ordenadores cuánticos, computación cuántica, big data', ' https://reqres.in/img/faces/8-image.jpg'),
(11, 'Rurt', 'Olaff', NULL, '', 'rolaff@gmail.com', 'Apple, mac, sistemas distribuidos, diseño de productos informáticos', ' https://reqres.in/img/faces/11-image.jpg'),
(12, 'Charl', 'Marks', NULL, '', 'cmark@gmail.com', 'IA & Robotics', ' https://reqres.in/img/faces/10-image.jpg'),
(13, 'Pedro', 'Picapiedra', NULL, '', 'ppicapiedra@gmail.com', 'History', ' https://reqres.in/img/faces/8-image.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
