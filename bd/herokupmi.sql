-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2017 a las 15:15:25
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `herokupmi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `estado` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `image`, `titulo`, `subtitulo`, `created_at`, `updated_at`, `url`, `estado`) VALUES
(4, 'banners/December2017/9eUDEwddcP7f3Bf48g06.jpg', 'PMI  Trujillo Participará del Tour Cono Sur', 'Tour Cono Sur es uno de los eventos mas grandes del País', '2017-12-12 05:11:00', '2017-12-12 05:13:42', 'https://www.facebook.com/profile.html?id=207512996442322&fref=ts', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Eventos', 'eventos', '2017-11-25 09:39:56', '2017-11-27 11:46:28'),
(2, NULL, 1, 'Taller', 'taller', '2017-11-25 09:39:57', '2017-11-27 11:46:42'),
(3, NULL, 1, 'Noticias', 'noticias', '2017-11-27 11:46:58', '2017-11-27 11:46:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(62, 11, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(63, 11, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(64, 11, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, NULL, 3),
(65, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(66, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(67, 12, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(68, 12, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(69, 12, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, NULL, 3),
(70, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(71, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(72, 12, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, NULL, 6),
(73, 13, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(74, 13, 'direccion', 'checkbox', 'Direccion', 0, 1, 1, 1, 1, 1, NULL, 2),
(75, 13, 'telefono', 'checkbox', 'Telefono', 0, 1, 1, 1, 1, 1, NULL, 3),
(76, 13, 'email', 'checkbox', 'Email', 0, 1, 1, 1, 1, 1, NULL, 4),
(77, 13, 'facebook', 'checkbox', 'Facebook', 0, 1, 1, 1, 1, 1, NULL, 5),
(78, 13, 'twitter', 'checkbox', 'Twitter', 0, 1, 1, 1, 1, 1, NULL, 6),
(79, 13, 'google', 'checkbox', 'Google', 0, 1, 1, 1, 1, 1, NULL, 7),
(80, 13, 'linked', 'checkbox', 'Linked', 0, 1, 1, 1, 1, 1, NULL, 8),
(81, 13, 'youtube', 'checkbox', 'Youtube', 0, 1, 1, 1, 1, 1, NULL, 9),
(82, 13, 'Newsletters', 'checkbox', 'Newsletters', 0, 1, 1, 1, 1, 1, NULL, 10),
(83, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 11),
(84, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12),
(85, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(86, 14, 'direccion', 'text', 'Direccion', 0, 1, 1, 1, 1, 1, NULL, 2),
(87, 14, 'telefono', 'text', 'Telefono', 0, 1, 1, 1, 1, 1, NULL, 3),
(88, 14, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, NULL, 4),
(89, 14, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, NULL, 5),
(90, 14, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, NULL, 6),
(91, 14, 'google', 'text', 'Google', 0, 1, 1, 1, 1, 1, NULL, 7),
(92, 14, 'linked', 'text', 'Linked', 0, 1, 1, 1, 1, 1, NULL, 8),
(93, 14, 'youtube', 'text', 'Youtube', 0, 1, 1, 1, 1, 1, NULL, 9),
(94, 14, 'Newsletters', 'text', 'Newsletters', 0, 1, 1, 1, 1, 1, NULL, 10),
(95, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 11),
(96, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12),
(97, 14, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, NULL, 13),
(98, 15, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(99, 15, 'imagen', 'image', 'Imagen', 1, 1, 1, 1, 1, 1, NULL, 2),
(100, 15, 'estado', 'text', 'Estado', 1, 1, 1, 1, 1, 1, NULL, 3),
(101, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(102, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(103, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(105, 16, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, NULL, 3),
(106, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(107, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(108, 16, 'image', 'image', 'Imagen', 0, 1, 1, 1, 1, 1, NULL, 2),
(109, 17, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(110, 17, 'imagen', 'image', 'Imagen', 0, 1, 1, 1, 1, 1, NULL, 2),
(111, 17, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, NULL, 3),
(112, 17, 'subtitulo', 'text_area', 'Subtitulo', 0, 1, 1, 1, 1, 1, NULL, 4),
(113, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(114, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(115, 17, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, NULL, 7),
(116, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(118, 18, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, NULL, 3),
(119, 18, 'subtitulo', 'text', 'Subtitulo', 0, 1, 1, 1, 1, 1, NULL, 4),
(120, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(121, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(122, 18, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, NULL, 7),
(123, 18, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, NULL, 8),
(124, 18, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 2),
(125, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(126, 22, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, NULL, 2),
(127, 22, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, NULL, 3),
(128, 22, 'descripcion', 'text_area', 'Descripcion', 0, 1, 1, 1, 1, 1, NULL, 4),
(129, 22, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, NULL, 5),
(130, 22, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, NULL, 6),
(131, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(132, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2017-11-25 09:39:34', '2017-11-25 09:39:34'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2017-11-25 09:39:34', '2017-11-25 09:39:34'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2017-11-25 09:39:34', '2017-11-25 09:39:34'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2017-11-25 09:39:34', '2017-11-25 09:39:34'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2017-11-25 09:39:34', '2017-11-25 09:39:34'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2017-11-25 09:39:35', '2017-11-25 09:39:35'),
(11, 'menu_principal', 'menu-principal', 'Menu Principal', 'Menu Principal', NULL, 'App\\MenuPrincipal', NULL, NULL, NULL, 1, 0, '2017-11-27 07:40:54', '2017-11-27 07:44:22'),
(12, 'menu_principals', 'menu-principals', 'Menu Principal', 'Menu Principals', 'voyager-sun', 'App\\MenuPrincipal', NULL, NULL, NULL, 1, 0, '2017-11-27 07:47:51', '2017-11-27 07:47:51'),
(13, 'footer', 'footer', 'Footer', 'Footers', 'voyager-compass', 'App\\Footer', NULL, NULL, NULL, 1, 0, '2017-11-28 09:04:50', '2017-11-28 09:04:50'),
(14, 'footers', 'footers', 'Footer', 'Footers', NULL, 'App\\Footer', NULL, NULL, NULL, 1, 0, '2017-11-28 09:07:44', '2017-11-28 09:07:44'),
(15, 'logo', 'logo', 'Logo', 'Logos', NULL, 'App\\Logo', NULL, NULL, NULL, 1, 1, '2017-12-11 20:57:48', '2017-12-11 20:57:48'),
(16, 'logos', 'logos', 'Logo', 'Logos', NULL, 'App\\Logo', NULL, NULL, NULL, 1, 0, '2017-12-11 21:05:24', '2017-12-11 21:05:24'),
(17, 'banner', 'banner', 'Banner', 'Banners', NULL, 'App\\Banner', NULL, NULL, NULL, 1, 0, '2017-12-12 04:37:02', '2017-12-12 04:37:02'),
(18, 'banners', 'banners', 'Banner', 'Banners', NULL, 'App\\Banner', NULL, NULL, NULL, 1, 0, '2017-12-12 04:42:59', '2017-12-12 04:42:59'),
(22, 'home_seccion1', 'home-seccion1', 'Home Seccion1', 'Home Seccion1s', NULL, 'App\\HomeSeccion1', NULL, NULL, NULL, 1, 0, '2017-12-12 06:07:03', '2017-12-12 06:07:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `footers`
--

CREATE TABLE `footers` (
  `id` int(10) UNSIGNED NOT NULL,
  `direccion` text COLLATE utf8_unicode_ci,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `google` text COLLATE utf8_unicode_ci,
  `linked` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `Newsletters` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `footers`
--

INSERT INTO `footers` (`id`, `direccion`, `telefono`, `email`, `facebook`, `twitter`, `google`, `linked`, `youtube`, `Newsletters`, `created_at`, `updated_at`, `estado`) VALUES
(1, 'Francisco Borja 250, Victor Larco Herrera 13008', '(044) 608395', 'pmitrujillo@pmicajamarca.com', 'https://www.facebook.com/PMITrujilloPeru/', '#', '#', '#', '#', 'Ingrese su dirección de correo electrónico para recibir nueva información del la comunidad y otra información útil directamente en su bandeja de entrada', '2017-11-28 09:11:00', '2017-12-11 20:48:23', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_seccion1`
--

CREATE TABLE `home_seccion1` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `logos`
--

INSERT INTO `logos` (`id`, `image`, `estado`, `created_at`, `updated_at`) VALUES
(4, 'logos/December2017/HZ6qK2G0kPwPiws1NgSO.jpg', 0, '2017-12-11 21:52:00', '2017-12-11 22:42:58'),
(5, 'logos/December2017/W3WMxBsGiFtpSLUZ3WfS.png', 1, '2017-12-11 22:45:04', '2017-12-11 22:45:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-11-25 09:39:43', '2017-11-28 09:47:51'),
(2, 'EDITOR', '2017-12-12 18:53:41', '2017-12-12 18:53:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2017-11-25 09:39:43', '2017-11-25 09:39:43', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 7, '2017-11-25 09:39:43', '2017-12-12 18:57:06', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 8, '2017-11-25 09:39:43', '2017-12-12 18:57:06', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 2, '2017-11-25 09:39:43', '2017-12-12 18:55:41', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 9, '2017-11-25 09:39:43', '2017-12-12 18:57:06', 'voyager.categories.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2017-11-25 09:39:44', '2017-12-12 18:57:06', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2017-11-25 09:39:44', '2017-11-27 06:38:54', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2017-11-25 09:39:44', '2017-11-27 06:38:54', 'voyager.database.index', NULL),
(22, 1, 'Navbar', '/admin/menu-principals', '_self', 'voyager-sun', '#000000', NULL, 3, '2017-11-27 07:47:51', '2017-12-12 18:55:41', NULL, ''),
(23, 1, 'Footers', '/admin/footer', '_self', 'voyager-compass', NULL, NULL, 4, '2017-11-28 09:04:51', '2017-12-12 18:55:41', NULL, NULL),
(29, 1, 'Banners', '/admin/banners', '_self', 'voyager-star', '#000000', NULL, 5, '2017-12-12 18:55:33', '2017-12-12 18:55:41', NULL, ''),
(30, 1, 'Logos', '/admin/logos', '_self', 'voyager-plus', '#000000', NULL, 6, '2017-12-12 18:56:24', '2017-12-12 18:57:06', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_principals`
--

CREATE TABLE `menu_principals` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menu_principals`
--

INSERT INTO `menu_principals` (`id`, `nombre`, `url`, `created_at`, `updated_at`, `estado`) VALUES
(2, 'Inicio', '/', '2017-11-27 07:54:38', '2017-11-27 07:54:38', 0),
(3, 'Presentación', 'presentacion', '2017-11-27 07:55:00', '2017-11-27 07:55:27', 2),
(4, 'Historia', 'historia', '2017-11-27 07:55:42', '2017-11-27 07:55:42', 2),
(5, 'Organización', 'organizacion', '2017-11-27 07:55:00', '2017-11-27 23:21:46', 2),
(6, 'Autoridades', 'autoridades', '2017-11-27 07:56:00', '2017-11-27 07:56:00', 2),
(8, 'Beneficios', 'beneficios', '2017-11-27 07:56:26', '2017-11-27 07:56:26', 3),
(9, 'Tipos', 'tipos', '2017-11-27 07:56:44', '2017-11-27 07:56:44', 3),
(10, 'Voluntariado', 'voluntariado', '2017-11-27 07:56:58', '2017-11-27 07:56:58', 1),
(11, 'Contacto', 'contacto', '2017-11-27 07:57:08', '2017-11-27 07:57:08', 1),
(12, 'Blog', 'blog', '2017-11-27 07:57:47', '2017-11-27 07:57:47', 1),
(13, 'Costrupcion', 'Costrupcion', '2017-11-27 07:58:17', '2017-11-27 07:58:17', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2017-11-25 09:39:58', '2017-11-25 09:39:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-11-25 09:39:45', '2017-11-25 09:39:45', NULL),
(2, 'browse_database', NULL, '2017-11-25 09:39:45', '2017-11-25 09:39:45', NULL),
(3, 'browse_media', NULL, '2017-11-25 09:39:45', '2017-11-25 09:39:45', NULL),
(4, 'browse_compass', NULL, '2017-11-25 09:39:46', '2017-11-25 09:39:46', NULL),
(5, 'browse_menus', 'menus', '2017-11-25 09:39:46', '2017-11-25 09:39:46', NULL),
(6, 'read_menus', 'menus', '2017-11-25 09:39:46', '2017-11-25 09:39:46', NULL),
(7, 'edit_menus', 'menus', '2017-11-25 09:39:46', '2017-11-25 09:39:46', NULL),
(8, 'add_menus', 'menus', '2017-11-25 09:39:46', '2017-11-25 09:39:46', NULL),
(9, 'delete_menus', 'menus', '2017-11-25 09:39:46', '2017-11-25 09:39:46', NULL),
(10, 'browse_pages', 'pages', '2017-11-25 09:39:46', '2017-11-25 09:39:46', NULL),
(11, 'read_pages', 'pages', '2017-11-25 09:39:47', '2017-11-25 09:39:47', NULL),
(12, 'edit_pages', 'pages', '2017-11-25 09:39:47', '2017-11-25 09:39:47', NULL),
(13, 'add_pages', 'pages', '2017-11-25 09:39:47', '2017-11-25 09:39:47', NULL),
(14, 'delete_pages', 'pages', '2017-11-25 09:39:47', '2017-11-25 09:39:47', NULL),
(15, 'browse_roles', 'roles', '2017-11-25 09:39:47', '2017-11-25 09:39:47', NULL),
(16, 'read_roles', 'roles', '2017-11-25 09:39:47', '2017-11-25 09:39:47', NULL),
(17, 'edit_roles', 'roles', '2017-11-25 09:39:47', '2017-11-25 09:39:47', NULL),
(18, 'add_roles', 'roles', '2017-11-25 09:39:47', '2017-11-25 09:39:47', NULL),
(19, 'delete_roles', 'roles', '2017-11-25 09:39:48', '2017-11-25 09:39:48', NULL),
(20, 'browse_users', 'users', '2017-11-25 09:39:48', '2017-11-25 09:39:48', NULL),
(21, 'read_users', 'users', '2017-11-25 09:39:48', '2017-11-25 09:39:48', NULL),
(22, 'edit_users', 'users', '2017-11-25 09:39:48', '2017-11-25 09:39:48', NULL),
(23, 'add_users', 'users', '2017-11-25 09:39:48', '2017-11-25 09:39:48', NULL),
(24, 'delete_users', 'users', '2017-11-25 09:39:48', '2017-11-25 09:39:48', NULL),
(25, 'browse_posts', 'posts', '2017-11-25 09:39:48', '2017-11-25 09:39:48', NULL),
(26, 'read_posts', 'posts', '2017-11-25 09:39:49', '2017-11-25 09:39:49', NULL),
(27, 'edit_posts', 'posts', '2017-11-25 09:39:49', '2017-11-25 09:39:49', NULL),
(28, 'add_posts', 'posts', '2017-11-25 09:39:49', '2017-11-25 09:39:49', NULL),
(29, 'delete_posts', 'posts', '2017-11-25 09:39:49', '2017-11-25 09:39:49', NULL),
(30, 'browse_categories', 'categories', '2017-11-25 09:39:49', '2017-11-25 09:39:49', NULL),
(31, 'read_categories', 'categories', '2017-11-25 09:39:49', '2017-11-25 09:39:49', NULL),
(32, 'edit_categories', 'categories', '2017-11-25 09:39:49', '2017-11-25 09:39:49', NULL),
(33, 'add_categories', 'categories', '2017-11-25 09:39:50', '2017-11-25 09:39:50', NULL),
(34, 'delete_categories', 'categories', '2017-11-25 09:39:50', '2017-11-25 09:39:50', NULL),
(35, 'browse_settings', 'settings', '2017-11-25 09:39:50', '2017-11-25 09:39:50', NULL),
(36, 'read_settings', 'settings', '2017-11-25 09:39:50', '2017-11-25 09:39:50', NULL),
(37, 'edit_settings', 'settings', '2017-11-25 09:39:50', '2017-11-25 09:39:50', NULL),
(38, 'add_settings', 'settings', '2017-11-25 09:39:50', '2017-11-25 09:39:50', NULL),
(39, 'delete_settings', 'settings', '2017-11-25 09:39:50', '2017-11-25 09:39:50', NULL),
(50, 'browse_menu_principal', 'menu_principal', '2017-11-27 07:40:54', '2017-11-27 07:40:54', NULL),
(51, 'read_menu_principal', 'menu_principal', '2017-11-27 07:40:54', '2017-11-27 07:40:54', NULL),
(52, 'edit_menu_principal', 'menu_principal', '2017-11-27 07:40:54', '2017-11-27 07:40:54', NULL),
(53, 'add_menu_principal', 'menu_principal', '2017-11-27 07:40:54', '2017-11-27 07:40:54', NULL),
(54, 'delete_menu_principal', 'menu_principal', '2017-11-27 07:40:54', '2017-11-27 07:40:54', NULL),
(55, 'browse_menu_principals', 'menu_principals', '2017-11-27 07:47:51', '2017-11-27 07:47:51', NULL),
(56, 'read_menu_principals', 'menu_principals', '2017-11-27 07:47:51', '2017-11-27 07:47:51', NULL),
(57, 'edit_menu_principals', 'menu_principals', '2017-11-27 07:47:51', '2017-11-27 07:47:51', NULL),
(58, 'add_menu_principals', 'menu_principals', '2017-11-27 07:47:51', '2017-11-27 07:47:51', NULL),
(59, 'delete_menu_principals', 'menu_principals', '2017-11-27 07:47:51', '2017-11-27 07:47:51', NULL),
(60, 'browse_footer', 'footer', '2017-11-28 09:04:51', '2017-11-28 09:04:51', NULL),
(61, 'read_footer', 'footer', '2017-11-28 09:04:51', '2017-11-28 09:04:51', NULL),
(62, 'edit_footer', 'footer', '2017-11-28 09:04:51', '2017-11-28 09:04:51', NULL),
(63, 'add_footer', 'footer', '2017-11-28 09:04:51', '2017-11-28 09:04:51', NULL),
(64, 'delete_footer', 'footer', '2017-11-28 09:04:51', '2017-11-28 09:04:51', NULL),
(65, 'browse_footers', 'footers', '2017-11-28 09:07:45', '2017-11-28 09:07:45', NULL),
(66, 'read_footers', 'footers', '2017-11-28 09:07:45', '2017-11-28 09:07:45', NULL),
(67, 'edit_footers', 'footers', '2017-11-28 09:07:45', '2017-11-28 09:07:45', NULL),
(68, 'add_footers', 'footers', '2017-11-28 09:07:45', '2017-11-28 09:07:45', NULL),
(69, 'delete_footers', 'footers', '2017-11-28 09:07:45', '2017-11-28 09:07:45', NULL),
(70, 'browse_logo', 'logo', '2017-12-11 20:57:49', '2017-12-11 20:57:49', NULL),
(71, 'read_logo', 'logo', '2017-12-11 20:57:49', '2017-12-11 20:57:49', NULL),
(72, 'edit_logo', 'logo', '2017-12-11 20:57:49', '2017-12-11 20:57:49', NULL),
(73, 'add_logo', 'logo', '2017-12-11 20:57:49', '2017-12-11 20:57:49', NULL),
(74, 'delete_logo', 'logo', '2017-12-11 20:57:49', '2017-12-11 20:57:49', NULL),
(75, 'browse_logos', 'logos', '2017-12-11 21:05:24', '2017-12-11 21:05:24', NULL),
(76, 'read_logos', 'logos', '2017-12-11 21:05:24', '2017-12-11 21:05:24', NULL),
(77, 'edit_logos', 'logos', '2017-12-11 21:05:24', '2017-12-11 21:05:24', NULL),
(78, 'add_logos', 'logos', '2017-12-11 21:05:24', '2017-12-11 21:05:24', NULL),
(79, 'delete_logos', 'logos', '2017-12-11 21:05:24', '2017-12-11 21:05:24', NULL),
(80, 'browse_banner', 'banner', '2017-12-12 04:37:03', '2017-12-12 04:37:03', NULL),
(81, 'read_banner', 'banner', '2017-12-12 04:37:03', '2017-12-12 04:37:03', NULL),
(82, 'edit_banner', 'banner', '2017-12-12 04:37:03', '2017-12-12 04:37:03', NULL),
(83, 'add_banner', 'banner', '2017-12-12 04:37:03', '2017-12-12 04:37:03', NULL),
(84, 'delete_banner', 'banner', '2017-12-12 04:37:03', '2017-12-12 04:37:03', NULL),
(85, 'browse_banners', 'banners', '2017-12-12 04:43:00', '2017-12-12 04:43:00', NULL),
(86, 'read_banners', 'banners', '2017-12-12 04:43:00', '2017-12-12 04:43:00', NULL),
(87, 'edit_banners', 'banners', '2017-12-12 04:43:00', '2017-12-12 04:43:00', NULL),
(88, 'add_banners', 'banners', '2017-12-12 04:43:00', '2017-12-12 04:43:00', NULL),
(89, 'delete_banners', 'banners', '2017-12-12 04:43:00', '2017-12-12 04:43:00', NULL),
(90, 'browse_home_seccion1', 'home_seccion1', '2017-12-12 06:07:04', '2017-12-12 06:07:04', NULL),
(91, 'read_home_seccion1', 'home_seccion1', '2017-12-12 06:07:04', '2017-12-12 06:07:04', NULL),
(92, 'edit_home_seccion1', 'home_seccion1', '2017-12-12 06:07:04', '2017-12-12 06:07:04', NULL),
(93, 'add_home_seccion1', 'home_seccion1', '2017-12-12 06:07:04', '2017-12-12 06:07:04', NULL),
(94, 'delete_home_seccion1', 'home_seccion1', '2017-12-12 06:07:04', '2017-12-12 06:07:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 5),
(2, 1),
(2, 5),
(3, 1),
(3, 5),
(4, 1),
(4, 5),
(5, 1),
(5, 5),
(6, 1),
(6, 5),
(7, 1),
(7, 5),
(8, 1),
(8, 5),
(9, 1),
(9, 5),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 5),
(26, 1),
(26, 5),
(27, 1),
(27, 5),
(28, 1),
(28, 5),
(29, 1),
(29, 5),
(30, 1),
(30, 5),
(31, 1),
(31, 5),
(32, 1),
(32, 5),
(33, 1),
(33, 5),
(34, 1),
(34, 5),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(70, 5),
(71, 1),
(71, 5),
(72, 1),
(72, 5),
(73, 1),
(73, 5),
(74, 1),
(74, 5),
(75, 1),
(75, 5),
(76, 1),
(76, 5),
(77, 1),
(77, 5),
(78, 1),
(78, 5),
(79, 1),
(79, 5),
(80, 1),
(80, 5),
(81, 1),
(81, 5),
(82, 1),
(82, 5),
(83, 1),
(83, 5),
(84, 1),
(84, 5),
(85, 1),
(85, 5),
(86, 1),
(86, 5),
(87, 1),
(87, 5),
(88, 1),
(88, 5),
(89, 1),
(89, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/December2017/iPWlgQW7KmuZ9J9zKoDQ.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-11-25 09:39:57', '2017-12-11 21:51:09'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-11-25 09:39:58', '2017-11-25 09:39:58'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-11-25 09:39:58', '2017-11-25 09:39:58'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-11-25 09:39:58', '2017-11-25 09:39:58'),
(5, 1, 2, 'PMI\'s Blue Night', NULL, 'El día lunes, 20 de noviembre presentaremos el PMI\'s Blue Night, está dirigida a estudiantes y profesionales interesados en la dirección de proyectos bajo el enfoque PMI, se desarrollarán ponencias magistrales a cargo de expertos internacionales del PMI, nos transmitirán su experiencia en el mundo de los proyectos.', '<p><span class=\"_4n-j _3cht fsl\" data-testid=\"event-permalink-details\">El d&iacute;a lunes, 20 de noviembre presentaremos el PMI\'s Blue Night, est&aacute; dirigida a estudiantes y profesionales interesados en la direcci&oacute;n de proyectos bajo el enfoque PMI, se desarrollar&aacute;n ponencias magistrales a cargo de expertos internacionales del PMI, nos transmitir&aacute;n su experiencia en el mundo de los proyectos.<br /> <br /> Ponente 1: <br /> Ing. Valeria Rodriguez Z&uacute;ccaro<br /> Past President PMI Asunci&oacute;n Chapter (PARAGUAY)<br /> <br /> Ponente 2:<br /> Ing. Andrea Bresciani<br /> PMI Buenos Aires Chapter (ARGENTINA)<br /> <br /> Lugar: CIP La Libertad, Martinez De Compagnon 886<br /> <span class=\"text_exposed_show\"><br /> Horario: 7:00p.m. - 9:00p.m.<br /> Precio: S/.30.00<br /> <br /> Es una gran oportunidad para todos los que est&eacute;n pensando certificarse como PMP en alg&uacute;n momento de su vida profesional.<br /> <br /> Suceden cosas buenas cuando te involucras con el PMI.</span></span></p>', 'posts/November2017/gvl6RX9vwqh2ZEvj10E0.jpg', 'pmi\'s-blue-night', NULL, NULL, 'PUBLISHED', 1, '2017-11-27 11:04:24', '2017-11-27 11:04:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'Principal', 'Desarrollador', '2017-11-25 09:39:45', '2017-12-11 21:13:20'),
(5, 'editor', 'Editor', '2017-11-28 10:00:39', '2017-11-28 10:00:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2017-11-25 09:40:00', '2017-11-25 09:40:00'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2017-11-25 09:40:00', '2017-11-25 09:40:00'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2017-11-25 09:40:00', '2017-11-25 09:40:00'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2017-11-25 09:40:01', '2017-11-25 09:40:01'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2017-11-25 09:40:01', '2017-11-25 09:40:01'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2017-11-25 09:40:01', '2017-11-25 09:40:01'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2017-11-25 09:40:01', '2017-11-25 09:40:01'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2017-11-25 09:40:01', '2017-11-25 09:40:01'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2017-11-25 09:40:01', '2017-11-25 09:40:01'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2017-11-25 09:40:01', '2017-11-25 09:40:01'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2017-11-25 09:40:01', '2017-11-25 09:40:01'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2017-11-25 09:40:02', '2017-11-25 09:40:02'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2017-11-25 09:40:02', '2017-11-25 09:40:02'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2017-11-25 09:40:02', '2017-11-25 09:40:02'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2017-11-25 09:40:02', '2017-11-25 09:40:02'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2017-11-25 09:40:02', '2017-11-25 09:40:02'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2017-11-25 09:40:02', '2017-11-25 09:40:02'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2017-11-25 09:40:02', '2017-11-25 09:40:02'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2017-11-25 09:40:03', '2017-11-25 09:40:03'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2017-11-25 09:40:03', '2017-11-25 09:40:03'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2017-11-25 09:40:03', '2017-11-25 09:40:03'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2017-11-25 09:40:03', '2017-11-25 09:40:03'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2017-11-25 09:40:03', '2017-11-25 09:40:03'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2017-11-25 09:40:03', '2017-11-25 09:40:03'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2017-11-25 09:40:03', '2017-11-25 09:40:03'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2017-11-25 09:40:03', '2017-11-25 09:40:03'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2017-11-25 09:40:04', '2017-11-25 09:40:04'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2017-11-25 09:40:04', '2017-11-25 09:40:04'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2017-11-25 09:40:04', '2017-11-25 09:40:04'),
(30, 'menu_items', 'title', 13, 'pt', 'Configurações', '2017-11-25 09:40:04', '2017-11-25 09:40:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 1, 'Desarrollador', 'dev@admin.com', 'users/December2017/8MXYPoFtMolDB9BBspzo.jpg', '$2y$10$Gen0BqRcqfHTLNQRBju9S.sbAt7pwrmatGDBTPCMc51C2KbgU9Snu', 'ijAPhP7nsGAvOyH1l1dtP2huHznj7XzFQlpl9qSV2Roy5lW9ldTmmHRhx7rC', '2017-11-28 09:41:20', '2017-12-11 21:50:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_seccion1`
--
ALTER TABLE `home_seccion1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `menu_principals`
--
ALTER TABLE `menu_principals`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `footers`
--
ALTER TABLE `footers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `menu_principals`
--
ALTER TABLE `menu_principals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT de la tabla `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
