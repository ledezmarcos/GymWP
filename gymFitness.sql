-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-01-2022 a las 17:06:54
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wordpress58`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-11-26 13:51:17', '2021-11-26 13:51:17', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/gymfitness', 'yes'),
(2, 'home', 'http://localhost/gymfitness', 'yes'),
(3, 'blogname', 'Gimnasio Enc', 'yes'),
(4, 'blogdescription', 'Tu lugar de entrenamiento', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marcosledezmacuevas@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:112:{s:20:\"gymfitness_clases/?$\";s:37:\"index.php?post_type=gymfitness_clases\";s:50:\"gymfitness_clases/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=gymfitness_clases&feed=$matches[1]\";s:45:\"gymfitness_clases/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=gymfitness_clases&feed=$matches[1]\";s:37:\"gymfitness_clases/page/([0-9]{1,})/?$\";s:55:\"index.php?post_type=gymfitness_clases&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:48:\"categoria/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:43:\"categoria/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:24:\"categoria/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:36:\"categoria/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:18:\"categoria/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"gymfitness_clases/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"gymfitness_clases/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"gymfitness_clases/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"gymfitness_clases/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"gymfitness_clases/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"gymfitness_clases/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"gymfitness_clases/(.+?)/embed/?$\";s:50:\"index.php?gymfitness_clases=$matches[1]&embed=true\";s:36:\"gymfitness_clases/(.+?)/trackback/?$\";s:44:\"index.php?gymfitness_clases=$matches[1]&tb=1\";s:56:\"gymfitness_clases/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&feed=$matches[2]\";s:51:\"gymfitness_clases/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&feed=$matches[2]\";s:44:\"gymfitness_clases/(.+?)/page/?([0-9]{1,})/?$\";s:57:\"index.php?gymfitness_clases=$matches[1]&paged=$matches[2]\";s:51:\"gymfitness_clases/(.+?)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?gymfitness_clases=$matches[1]&cpage=$matches[2]\";s:40:\"gymfitness_clases/(.+?)(?:/([0-9]+))?/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=66&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:43:\"acf-leaflet-map-field/acf-leaflet-field.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:4;s:47:\"gymfitness_post_types/gymfitness_post_types.php\";i:5;s:41:\"gymfitness_widgets/gymfitness_widgets.php\";}', 'yes'),
(34, 'category_base', '/categoria', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'gymfitness', 'yes'),
(41, 'stylesheet', 'gymfitness', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:4:\"Hola\";s:4:\"text\";s:16:\"este es el texto\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '63', 'yes'),
(82, 'page_on_front', '66', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1653486677', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'es_ES', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:8:\"sidebar1\";a:1:{i:0;s:6:\"text-2\";}s:8:\"sidebar2\";a:1:{i:0;s:12:\"foo_widget-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1641484277;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1641486730;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1641514326;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641520277;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1641563477;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641563532;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641649877;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1638233786;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:26:\"Verificación SSL fallida.\";}}', 'yes'),
(133, 'can_compress_scripts', '1', 'no'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(176, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":5,\"critical\":0}', 'yes'),
(191, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'current_theme', 'GymFitness', 'yes'),
(197, 'theme_mods_gymfitness', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu-principal\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(198, 'theme_switched', '', 'yes'),
(222, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(256, 'recently_activated', 'a:0:{}', 'yes'),
(265, 'acf_version', '5.11.3', 'yes'),
(266, 'recovery_mode_email_last_sent', '1639245886', 'yes'),
(314, 'widget_foo_widget', 'a:2:{i:3;a:1:{s:8:\"cantidad\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(331, 'category_children', 'a:0:{}', 'yes'),
(346, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1641483130;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(348, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1641483135;s:7:\"checked\";a:1:{s:10:\"gymfitness\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:10:\"gymfitness\";a:6:{s:5:\"theme\";s:10:\"gymfitness\";s:11:\"new_version\";s:3:\"0.2\";s:3:\"url\";s:40:\"https://wordpress.org/themes/gymfitness/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/gymfitness.0.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(349, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.5.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1639252365;s:7:\"version\";s:5:\"5.5.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(390, 'new_admin_email', 'marcosledezmacuevas@gmail.com', 'yes'),
(396, '_site_transient_timeout_php_check_0cbcbda5109bcde6b94054595b5c2163', '1641999465', 'no'),
(397, '_site_transient_php_check_0cbcbda5109bcde6b94054595b5c2163', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(400, '_site_transient_timeout_theme_roots', '1641484934', 'no'),
(401, '_site_transient_theme_roots', 'a:1:{s:10:\"gymfitness\";s:7:\"/themes\";}', 'no'),
(402, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1641483136;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.11.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:43:\"acf-leaflet-map-field/acf-leaflet-field.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/acf-leaflet-map-field\";s:4:\"slug\";s:21:\"acf-leaflet-map-field\";s:6:\"plugin\";s:43:\"acf-leaflet-map-field/acf-leaflet-field.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/acf-leaflet-map-field/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/acf-leaflet-map-field.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/acf-leaflet-map-field/assets/icon-256x256.jpg?rev=1904210\";s:2:\"1x\";s:74:\"https://ps.w.org/acf-leaflet-map-field/assets/icon-256x256.jpg?rev=1904210\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/acf-leaflet-map-field/assets/banner-772x250.jpg?rev=1904210\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.9.6\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:8:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.11.3\";s:43:\"acf-leaflet-map-field/acf-leaflet-field.php\";s:5:\"1.0.0\";s:19:\"akismet/akismet.php\";s:5:\"4.2.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.5.3\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:5:\"2.5.1\";s:47:\"gymfitness_post_types/gymfitness_post_types.php\";s:5:\"1.0.0\";s:41:\"gymfitness_widgets/gymfitness_widgets.php\";s:5:\"1.0.0\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_edit_lock', '1638235073:1'),
(4, 6, '_wp_attached_file', '2021/11/basicouniforme.fw_.png'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:750;s:4:\"file\";s:30:\"2021/11/basicouniforme.fw_.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"basicouniforme.fw_-300x167.png\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"basicouniforme.fw_-1024x569.png\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"basicouniforme.fw_-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"basicouniforme.fw_-768x427.png\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 5, '_thumbnail_id', '6'),
(20, 13, '_edit_lock', '1638316462:1'),
(21, 15, '_edit_lock', '1638235282:1'),
(22, 17, '_menu_item_type', 'custom'),
(23, 17, '_menu_item_menu_item_parent', '0'),
(24, 17, '_menu_item_object_id', '17'),
(25, 17, '_menu_item_object', 'custom'),
(26, 17, '_menu_item_target', ''),
(27, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 17, '_menu_item_xfn', ''),
(29, 17, '_menu_item_url', 'http://localhost/wordpress58/'),
(31, 18, '_menu_item_type', 'post_type'),
(32, 18, '_menu_item_menu_item_parent', '0'),
(33, 18, '_menu_item_object_id', '13'),
(34, 18, '_menu_item_object', 'page'),
(35, 18, '_menu_item_target', ''),
(36, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 18, '_menu_item_xfn', ''),
(38, 18, '_menu_item_url', ''),
(39, 18, '_menu_item_orphaned', '1638292886'),
(40, 19, '_menu_item_type', 'post_type'),
(41, 19, '_menu_item_menu_item_parent', '0'),
(42, 19, '_menu_item_object_id', '15'),
(43, 19, '_menu_item_object', 'page'),
(44, 19, '_menu_item_target', ''),
(45, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 19, '_menu_item_xfn', ''),
(47, 19, '_menu_item_url', ''),
(48, 19, '_menu_item_orphaned', '1638292886'),
(49, 20, '_menu_item_type', 'post_type'),
(50, 20, '_menu_item_menu_item_parent', '0'),
(51, 20, '_menu_item_object_id', '13'),
(52, 20, '_menu_item_object', 'page'),
(53, 20, '_menu_item_target', ''),
(54, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 20, '_menu_item_xfn', ''),
(56, 20, '_menu_item_url', ''),
(57, 21, '_wp_attached_file', '2021/11/nosotros.jpg'),
(58, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:20:\"2021/11/nosotros.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"nosotros-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"nosotros-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"nosotros-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 13, '_thumbnail_id', '21'),
(61, 23, '_edit_lock', '1639253890:1'),
(62, 23, '_wp_page_template', 'page-no-sidebars.php'),
(63, 25, '_menu_item_type', 'post_type'),
(64, 25, '_menu_item_menu_item_parent', '0'),
(65, 25, '_menu_item_object_id', '23'),
(66, 25, '_menu_item_object', 'page'),
(67, 25, '_menu_item_target', ''),
(68, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 25, '_menu_item_xfn', ''),
(70, 25, '_menu_item_url', ''),
(72, 17, '_wp_old_date', '2021-11-30'),
(73, 20, '_wp_old_date', '2021-11-30'),
(74, 26, '_edit_lock', '1638390538:1'),
(75, 26, '_wp_page_template', ''),
(76, 29, '_edit_last', '1'),
(77, 29, '_edit_lock', '1638390695:1'),
(78, 34, '_wp_attached_file', '2021/12/clase6.jpg'),
(79, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:734;s:4:\"file\";s:18:\"2021/12/clase6.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"clase6-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 35, '_wp_attached_file', '2021/12/clase1.jpg'),
(81, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:733;s:4:\"file\";s:18:\"2021/12/clase1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"clase1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 36, '_wp_attached_file', '2021/12/clase2.jpg'),
(83, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:18:\"2021/12/clase2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase2-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 37, '_wp_attached_file', '2021/12/clase3.jpg'),
(85, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:760;s:4:\"file\";s:18:\"2021/12/clase3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase3-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"clase3-1024x707.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:707;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase3-768x531.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:531;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 38, '_wp_attached_file', '2021/12/clase4.jpg'),
(87, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:663;s:4:\"file\";s:18:\"2021/12/clase4.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase4-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase4-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 39, '_wp_attached_file', '2021/12/clase5.jpg'),
(89, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:18:\"2021/12/clase5.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 33, '_edit_last', '1'),
(91, 33, '_edit_lock', '1638387844:1'),
(92, 33, '_thumbnail_id', '34'),
(93, 33, 'hora_inicio', '07:00:00'),
(94, 33, '_hora_inicio', 'field_61a7cd1fe8634'),
(95, 33, 'hora_fin', '08:00:00'),
(96, 33, '_hora_fin', 'field_61a7cd8fe8635'),
(97, 33, 'dias_clase', 'Todos los días'),
(98, 33, '_dias_clase', 'field_61a7cdace8636'),
(99, 40, '_edit_last', '1'),
(100, 40, '_edit_lock', '1638387860:1'),
(101, 40, '_thumbnail_id', '39'),
(102, 40, 'hora_inicio', '18:00:00'),
(103, 40, '_hora_inicio', 'field_61a7cd1fe8634'),
(104, 40, 'hora_fin', '19:30:00'),
(105, 40, '_hora_fin', 'field_61a7cd8fe8635'),
(106, 40, 'dias_clase', 'Martes y jueves'),
(107, 40, '_dias_clase', 'field_61a7cdace8636'),
(108, 41, '_edit_last', '1'),
(109, 41, '_edit_lock', '1638387850:1'),
(110, 41, '_thumbnail_id', '38'),
(111, 41, 'hora_inicio', '16:00:00'),
(112, 41, '_hora_inicio', 'field_61a7cd1fe8634'),
(113, 41, 'hora_fin', '18:00:00'),
(114, 41, '_hora_fin', 'field_61a7cd8fe8635'),
(115, 41, 'dias_clase', 'Miércoles y jueves'),
(116, 41, '_dias_clase', 'field_61a7cdace8636'),
(117, 42, '_edit_last', '1'),
(118, 42, '_edit_lock', '1638387857:1'),
(119, 42, '_thumbnail_id', '37'),
(120, 42, 'hora_inicio', '09:00:00'),
(121, 42, '_hora_inicio', 'field_61a7cd1fe8634'),
(122, 42, 'hora_fin', '10:00:00'),
(123, 42, '_hora_fin', 'field_61a7cd8fe8635'),
(124, 42, 'dias_clase', 'Lunes y martes'),
(125, 42, '_dias_clase', 'field_61a7cdace8636'),
(126, 43, '_edit_last', '1'),
(127, 43, '_edit_lock', '1639235644:1'),
(128, 43, 'hora_inicio', '19:00:00'),
(129, 43, '_hora_inicio', 'field_61a7cd1fe8634'),
(130, 43, 'hora_fin', '20:00:00'),
(131, 43, '_hora_fin', 'field_61a7cd8fe8635'),
(132, 43, 'dias_clase', 'Todos los días'),
(133, 43, '_dias_clase', 'field_61a7cdace8636'),
(134, 44, '_edit_last', '1'),
(135, 44, '_edit_lock', '1638390549:1'),
(136, 44, 'hora_inicio', '17:00:00'),
(137, 44, '_hora_inicio', 'field_61a7cd1fe8634'),
(138, 44, 'hora_fin', '18:00:00'),
(139, 44, '_hora_fin', 'field_61a7cd8fe8635'),
(140, 44, 'dias_clase', 'Todos los días'),
(141, 44, '_dias_clase', 'field_61a7cdace8636'),
(142, 44, '_thumbnail_id', '35'),
(143, 43, '_thumbnail_id', '36'),
(144, 46, '_menu_item_type', 'post_type'),
(145, 46, '_menu_item_menu_item_parent', '0'),
(146, 46, '_menu_item_object_id', '26'),
(147, 46, '_menu_item_object', 'page'),
(148, 46, '_menu_item_target', ''),
(149, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(150, 46, '_menu_item_xfn', ''),
(151, 46, '_menu_item_url', ''),
(153, 17, '_wp_old_date', '2021-12-01'),
(154, 20, '_wp_old_date', '2021-12-01'),
(155, 25, '_wp_old_date', '2021-12-01'),
(156, 5, '_wp_trash_meta_status', 'publish'),
(157, 5, '_wp_trash_meta_time', '1639249128'),
(158, 5, '_wp_desired_post_slug', 'mundial-de-catar-cerca'),
(159, 1, '_wp_trash_meta_status', 'publish'),
(160, 1, '_wp_trash_meta_time', '1639249128'),
(161, 1, '_wp_desired_post_slug', 'hola-mundo'),
(162, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(164, 50, '_wp_attached_file', '2021/12/blog1.jpg'),
(165, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:17:\"2021/12/blog1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"blog1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blog1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blog1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 49, '_edit_last', '1'),
(167, 49, '_edit_lock', '1639249505:1'),
(168, 52, '_edit_last', '1'),
(169, 52, '_edit_lock', '1639249479:1'),
(170, 53, '_wp_attached_file', '2021/12/blog2.jpg'),
(171, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:734;s:4:\"file\";s:17:\"2021/12/blog2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"blog2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"blog2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blog2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blog2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 54, '_wp_attached_file', '2021/12/blog3.jpg'),
(173, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:734;s:4:\"file\";s:17:\"2021/12/blog3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"blog3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"blog3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blog3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blog3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 55, '_wp_attached_file', '2021/12/blog4.jpg'),
(175, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:733;s:4:\"file\";s:17:\"2021/12/blog4.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"blog4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"blog4-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blog4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blog4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 52, '_thumbnail_id', '50'),
(179, 57, '_edit_last', '1'),
(180, 57, '_edit_lock', '1639249520:1'),
(181, 57, '_thumbnail_id', '54'),
(186, 59, '_edit_last', '1'),
(187, 59, '_edit_lock', '1639249546:1'),
(188, 59, '_thumbnail_id', '55'),
(191, 61, '_edit_last', '1'),
(192, 61, '_edit_lock', '1639249650:1'),
(193, 61, '_thumbnail_id', '53'),
(196, 63, '_edit_last', '1'),
(197, 63, '_edit_lock', '1639249816:1'),
(198, 63, '_wp_page_template', 'default'),
(199, 65, '_menu_item_type', 'post_type'),
(200, 65, '_menu_item_menu_item_parent', '0'),
(201, 65, '_menu_item_object_id', '63'),
(202, 65, '_menu_item_object', 'page'),
(203, 65, '_menu_item_target', ''),
(204, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(205, 65, '_menu_item_xfn', ''),
(206, 65, '_menu_item_url', ''),
(208, 66, '_edit_last', '1'),
(209, 66, '_wp_page_template', 'default'),
(210, 66, '_edit_lock', '1639338379:1'),
(211, 68, '_form', '<label> Tu nombre\n    [text* your-name] </label>\n\n<label> Tu correo electrónico\n    [email* your-email] </label>\n\n<label> Tu telefono\n[tel telefono]</label>\n\n<label> Tu mensaje (opcional)\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]'),
(212, 68, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:13:\"[_site_title]\";s:6:\"sender\";s:45:\"[_site_title] <marcosledezmacuevas@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:242:\"De: [your-name] <[your-email]>\nAsunto: Contacto desde webpage\n\nCuerpo del mensaje:\nSu telefono es: [telefono]\nSu email: [your-email]\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(213, 68, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"[_site_title] «[your-subject]»\";s:6:\"sender\";s:45:\"[_site_title] <marcosledezmacuevas@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:129:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(214, 68, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:94:\"Ha ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:79:\"Uno o más campos tienen un error. Por favor, revísalos e inténtalo de nuevo.\";s:4:\"spam\";s:94:\"Ha ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:24:\"El campo es obligatorio.\";s:16:\"invalid_too_long\";s:28:\"El campo es demasiado largo.\";s:17:\"invalid_too_short\";s:28:\"El campo es demasiado corto.\";s:13:\"upload_failed\";s:53:\"Ha ocurrido un error desconocido al subir el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tienes permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:31:\"El archivo es demasiado grande.\";s:23:\"upload_failed_php_error\";s:41:\"Ha ocurrido un error al subir el archivo.\";s:12:\"invalid_date\";s:34:\"El formato de fecha es incorrecto.\";s:14:\"date_too_early\";s:50:\"La fecha es anterior a la más temprana permitida.\";s:13:\"date_too_late\";s:50:\"La fecha es posterior a la más tardía permitida.\";s:14:\"invalid_number\";s:36:\"El formato de número no es válido.\";s:16:\"number_too_small\";s:45:\"El número es menor que el mínimo permitido.\";s:16:\"number_too_large\";s:45:\"El número es mayor que el máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:13:\"invalid_email\";s:71:\"La dirección de correo electrónico que has introducido no es válida.\";s:11:\"invalid_url\";s:21:\"La URL no es válida.\";s:11:\"invalid_tel\";s:38:\"El número de teléfono no es válido.\";}'),
(215, 68, '_additional_settings', ''),
(216, 68, '_locale', 'es_ES'),
(217, 23, '_edit_last', '1'),
(218, 70, '_edit_last', '1'),
(219, 70, '_edit_lock', '1639254133:1'),
(220, 23, 'ubicacion', 'a:4:{s:7:\"address\";s:31:\"Encarnación, Itapúa, Paraguay\";s:3:\"lat\";s:8:\"-27.3376\";s:3:\"lng\";s:8:\"-55.8669\";s:4:\"zoom\";s:2:\"15\";}'),
(221, 23, '_ubicacion', 'field_61b5064c39048'),
(222, 72, 'ubicacion', 'a:4:{s:7:\"address\";s:31:\"Encarnación, Itapúa, Paraguay\";s:3:\"lat\";s:8:\"-27.3376\";s:3:\"lng\";s:8:\"-55.8669\";s:4:\"zoom\";s:2:\"15\";}'),
(223, 72, '_ubicacion', 'field_61b5064c39048'),
(224, 73, '_edit_last', '1'),
(225, 73, '_edit_lock', '1639338130:1'),
(226, 79, '_wp_attached_file', '2021/12/hero-index.jpg'),
(227, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1596;s:6:\"height\";i:922;s:4:\"file\";s:22:\"2021/12/hero-index.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"hero-index-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"hero-index-1024x592.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:592;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"hero-index-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"hero-index-768x444.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"hero-index-1536x887.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:887;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 66, 'imagen_hero', '79'),
(229, 66, '_imagen_hero', 'field_61b50975791ca'),
(230, 66, 'encabezado_hero', 'Logras tus metas'),
(231, 66, '_encabezado_hero', 'field_61b509a851761'),
(232, 66, 'contenido_hero', 'Gimnasio dedicado a la musculatura y bajar de peso de manera sana y natural.'),
(233, 66, '_contenido_hero', 'field_61b509b62ffbe'),
(234, 80, 'imagen_hero', '79'),
(235, 80, '_imagen_hero', 'field_61b50975791ca'),
(236, 80, 'encabezado_hero', 'Logras tus metas'),
(237, 80, '_encabezado_hero', 'field_61b509a851761'),
(238, 80, 'contenido_hero', 'Gimnasio dedicado a la musculatura y bajar de peso de manera sana y natural.'),
(239, 80, '_contenido_hero', 'field_61b509b62ffbe'),
(240, 66, 'encabezado_bienvenida', 'Bienvenidos a nuestro sitio web'),
(241, 66, '_encabezado_bienvenida', 'field_61b64baa662fa'),
(242, 66, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus enim eu eleifend ultricies. Sed volutpat, dolor nec malesuada dictum, sem nisl rutrum ex, ac sollicitudin ante orci et sem. '),
(243, 66, '_texto_bienvenida', 'field_61b64bc1662fb'),
(244, 84, 'imagen_hero', '79'),
(245, 84, '_imagen_hero', 'field_61b50975791ca'),
(246, 84, 'encabezado_hero', 'Logras tus metas'),
(247, 84, '_encabezado_hero', 'field_61b509a851761'),
(248, 84, 'contenido_hero', 'Gimnasio dedicado a la musculatura y bajar de peso de manera sana y natural.'),
(249, 84, '_contenido_hero', 'field_61b509b62ffbe'),
(250, 84, 'encabezado_bienvenida', 'Bienvenidos a nuestro sitio web'),
(251, 84, '_encabezado_bienvenida', 'field_61b64baa662fa'),
(252, 84, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus enim eu eleifend ultricies. Sed volutpat, dolor nec malesuada dictum, sem nisl rutrum ex, ac sollicitudin ante orci et sem. '),
(253, 84, '_texto_bienvenida', 'field_61b64bc1662fb'),
(254, 98, '_wp_attached_file', '2021/12/area-aparatos.jpg'),
(255, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:699;s:4:\"file\";s:25:\"2021/12/area-aparatos.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"area-aparatos-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"area-aparatos-1024x651.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:651;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"area-aparatos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"area-aparatos-768x488.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 99, '_wp_attached_file', '2021/12/area-cardio.jpg'),
(257, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:23:\"2021/12/area-cardio.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"area-cardio-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"area-cardio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"area-cardio-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 100, '_wp_attached_file', '2021/12/area-pesas.jpg'),
(259, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:731;s:4:\"file\";s:22:\"2021/12/area-pesas.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"area-pesas-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"area-pesas-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"area-pesas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"area-pesas-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(260, 101, '_wp_attached_file', '2021/12/area-yoga.jpg'),
(261, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:733;s:4:\"file\";s:21:\"2021/12/area-yoga.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"area-yoga-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"area-yoga-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"area-yoga-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"area-yoga-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 66, 'area_1_area_imagen', '101'),
(263, 66, '_area_1_area_imagen', 'field_61b6507d002d5'),
(264, 66, 'area_1_area_texto', 'Area de yoga'),
(265, 66, '_area_1_area_texto', 'field_61b650cc002d6'),
(266, 66, 'area_1', ''),
(267, 66, '_area_1', 'field_61b65051002d4'),
(268, 66, 'area_2_area_imagen', '100'),
(269, 66, '_area_2_area_imagen', 'field_61b650f7002d8'),
(270, 66, 'area_2_area_texto', 'Area de pesas'),
(271, 66, '_area_2_area_texto', 'field_61b650f7002d9'),
(272, 66, 'area_2', ''),
(273, 66, '_area_2', 'field_61b650f7002d7'),
(274, 66, 'area_3_area_imagen', '99'),
(275, 66, '_area_3_area_imagen', 'field_61b650ff002db'),
(276, 66, 'area_3_area_texto', 'Area de cardio'),
(277, 66, '_area_3_area_texto', 'field_61b650ff002dc'),
(278, 66, 'area_3', ''),
(279, 66, '_area_3', 'field_61b650ff002da'),
(280, 66, 'area_4_area_imagen', '98'),
(281, 66, '_area_4_area_imagen', 'field_61b65106002de'),
(282, 66, 'area_4_area_texto', 'Area de aparatos'),
(283, 66, '_area_4_area_texto', 'field_61b65106002df'),
(284, 66, 'area_4', ''),
(285, 66, '_area_4', 'field_61b65106002dd'),
(286, 102, 'imagen_hero', '79'),
(287, 102, '_imagen_hero', 'field_61b50975791ca'),
(288, 102, 'encabezado_hero', 'Logras tus metas'),
(289, 102, '_encabezado_hero', 'field_61b509a851761'),
(290, 102, 'contenido_hero', 'Gimnasio dedicado a la musculatura y bajar de peso de manera sana y natural.'),
(291, 102, '_contenido_hero', 'field_61b509b62ffbe'),
(292, 102, 'encabezado_bienvenida', 'Bienvenidos a nuestro sitio web'),
(293, 102, '_encabezado_bienvenida', 'field_61b64baa662fa'),
(294, 102, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus enim eu eleifend ultricies. Sed volutpat, dolor nec malesuada dictum, sem nisl rutrum ex, ac sollicitudin ante orci et sem. '),
(295, 102, '_texto_bienvenida', 'field_61b64bc1662fb'),
(296, 102, 'area_1_area_imagen', '101'),
(297, 102, '_area_1_area_imagen', 'field_61b6507d002d5'),
(298, 102, 'area_1_area_texto', 'Area de yoga'),
(299, 102, '_area_1_area_texto', 'field_61b650cc002d6'),
(300, 102, 'area_1', ''),
(301, 102, '_area_1', 'field_61b65051002d4'),
(302, 102, 'area_2_area_imagen', '100'),
(303, 102, '_area_2_area_imagen', 'field_61b650f7002d8'),
(304, 102, 'area_2_area_texto', 'Area de pesas'),
(305, 102, '_area_2_area_texto', 'field_61b650f7002d9'),
(306, 102, 'area_2', ''),
(307, 102, '_area_2', 'field_61b650f7002d7'),
(308, 102, 'area_3_area_imagen', '99'),
(309, 102, '_area_3_area_imagen', 'field_61b650ff002db'),
(310, 102, 'area_3_area_texto', 'Area de cardio'),
(311, 102, '_area_3_area_texto', 'field_61b650ff002dc'),
(312, 102, 'area_3', ''),
(313, 102, '_area_3', 'field_61b650ff002da'),
(314, 102, 'area_4_area_imagen', '98'),
(315, 102, '_area_4_area_imagen', 'field_61b65106002de'),
(316, 102, 'area_4_area_texto', 'Area de aparatos'),
(317, 102, '_area_4_area_texto', 'field_61b65106002df'),
(318, 102, 'area_4', ''),
(319, 102, '_area_4', 'field_61b65106002dd'),
(320, 103, '_edit_last', '1'),
(321, 103, '_edit_lock', '1639394449:1'),
(322, 105, '_edit_last', '1'),
(323, 105, '_edit_lock', '1639394525:1'),
(324, 106, '_wp_attached_file', '2021/12/instructor2.jpg'),
(325, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:515;s:4:\"file\";s:23:\"2021/12/instructor2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"instructor2-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"instructor2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(326, 107, '_wp_attached_file', '2021/12/instructor3.jpg'),
(327, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:515;s:4:\"file\";s:23:\"2021/12/instructor3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"instructor3-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"instructor3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 108, '_wp_attached_file', '2021/12/instructor4.jpg'),
(329, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:515;s:4:\"file\";s:23:\"2021/12/instructor4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"instructor4-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"instructor4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(330, 109, '_wp_attached_file', '2021/12/instructor1.jpg'),
(331, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:515;s:4:\"file\";s:23:\"2021/12/instructor1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"instructor1-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"instructor1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(332, 105, '_thumbnail_id', '109'),
(333, 105, 'especialidad', 'a:2:{i:0;s:5:\"pesas\";i:1;s:6:\"cardio\";}'),
(334, 105, '_especialidad', 'field_61b72cc8fb377'),
(335, 110, '_edit_last', '1'),
(336, 110, '_edit_lock', '1639394545:1'),
(337, 110, '_thumbnail_id', '106'),
(338, 110, 'especialidad', 'a:2:{i:0;s:5:\"pesas\";i:1;s:5:\"boxeo\";}'),
(339, 110, '_especialidad', 'field_61b72cc8fb377'),
(340, 111, '_edit_last', '1'),
(341, 111, '_edit_lock', '1639394570:1'),
(342, 111, '_thumbnail_id', '108'),
(343, 111, 'especialidad', 'a:2:{i:0;s:4:\"yoga\";i:1;s:8:\"spinning\";}'),
(344, 111, '_especialidad', 'field_61b72cc8fb377'),
(345, 112, '_edit_last', '1'),
(346, 112, '_edit_lock', '1639394605:1'),
(347, 112, '_thumbnail_id', '107'),
(348, 112, 'especialidad', 'a:2:{i:0;s:17:\"acondicionamiento\";i:1;s:4:\"yoga\";}'),
(349, 112, '_especialidad', 'field_61b72cc8fb377');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-11-02 13:51:17', '2021-11-02 13:51:17', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2021-12-11 18:58:48', '2021-12-11 18:58:48', '', 0, 'http://localhost/wordpress58/?p=1', 0, 'post', '', 1),
(5, 1, '2021-11-27 00:12:59', '2021-11-27 00:12:59', '<!-- wp:paragraph -->\n<p>Se acerca el anho del mundial.</p>\n<!-- /wp:paragraph -->', 'Mundial de Catar Cerca', '', 'trash', 'open', 'open', '', 'mundial-de-catar-cerca__trashed', '', '', '2021-12-11 18:58:48', '2021-12-11 18:58:48', '', 0, 'http://localhost/wordpress58/?p=5', 0, 'post', '', 0),
(6, 1, '2021-11-27 00:12:48', '2021-11-27 00:12:48', '', 'basicouniforme.fw', '', 'inherit', 'open', 'closed', '', 'basicouniforme-fw', '', '', '2021-11-27 00:12:48', '2021-11-27 00:12:48', '', 5, 'http://localhost/wordpress58/wp-content/uploads/2021/11/basicouniforme.fw_.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2021-11-27 00:12:59', '2021-11-27 00:12:59', '<!-- wp:paragraph -->\n<p>Se acerca el anho del mundial.</p>\n<!-- /wp:paragraph -->', 'Mundial de Catar Cerca', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-11-27 00:12:59', '2021-11-27 00:12:59', '', 5, 'http://localhost/wordpress58/?p=7', 0, 'revision', '', 0),
(13, 1, '2021-11-30 00:59:57', '2021-11-30 00:59:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia a dolor sit amet blandit. Nulla quis orci sollicitudin, congue quam ac, pharetra neque. Morbi aliquet eros vitae arcu rutrum, vel eleifend massa tincidunt. Aenean id nibh a diam consequat placerat eget vel lectus. Nullam nec lorem tincidunt, accumsan libero a, mattis est. Curabitur consectetur massa elit, quis ornare quam porta eu. Sed aliquam nisi sed augue tristique faucibus. Sed eros tortor, sagittis nec eros at, pharetra condimentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pellentesque ultrices egestas. Nam maximus eget nibh ut hendrerit. Donec molestie, purus et molestie tempor, magna mi porta sapien, porta lobortis metus nisl a nulla. Maecenas efficitur finibus dictum. Aenean gravida turpis dolor, eget dignissim eros commodo sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae diam lectus. Nunc ultricies, odio vitae egestas finibus, odio turpis tincidunt urna, eget feugiat tortor ex et orci. Cras ac sodales sapien, ac mattis mauris. In tincidunt massa non ex sagittis, vel sagittis ligula consectetur. Phasellus risus velit, mattis mattis sagittis eu, feugiat sed purus. Donec fringilla venenatis eros sit amet malesuada. Etiam ut magna vehicula, iaculis felis at, rhoncus eros. Nulla eleifend felis ac est eleifend, ac ullamcorper enim laoreet. Fusce maximus porttitor purus.</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2021-11-30 22:55:35', '2021-11-30 22:55:35', '', 0, 'http://localhost/wordpress58/?page_id=13', 0, 'page', '', 0),
(14, 1, '2021-11-30 00:59:57', '2021-11-30 00:59:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia a dolor sit amet blandit. Nulla quis orci sollicitudin, congue quam ac, pharetra neque. Morbi aliquet eros vitae arcu rutrum, vel eleifend massa tincidunt. Aenean id nibh a diam consequat placerat eget vel lectus. Nullam nec lorem tincidunt, accumsan libero a, mattis est. Curabitur consectetur massa elit, quis ornare quam porta eu. Sed aliquam nisi sed augue tristique faucibus. Sed eros tortor, sagittis nec eros at, pharetra condimentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pellentesque ultrices egestas. Nam maximus eget nibh ut hendrerit. Donec molestie, purus et molestie tempor, magna mi porta sapien, porta lobortis metus nisl a nulla. Maecenas efficitur finibus dictum. Aenean gravida turpis dolor, eget dignissim eros commodo sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam vitae diam lectus. Nunc ultricies, odio vitae egestas finibus, odio turpis tincidunt urna, eget feugiat tortor ex et orci. Cras ac sodales sapien, ac mattis mauris. In tincidunt massa non ex sagittis, vel sagittis ligula consectetur. Phasellus risus velit, mattis mattis sagittis eu, feugiat sed purus. Donec fringilla venenatis eros sit amet malesuada. Etiam ut magna vehicula, iaculis felis at, rhoncus eros. Nulla eleifend felis ac est eleifend, ac ullamcorper enim laoreet. Fusce maximus porttitor purus.</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-11-30 00:59:57', '2021-11-30 00:59:57', '', 13, 'http://localhost/wordpress58/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-11-30 01:20:35', '2021-11-30 01:20:35', '<!-- wp:paragraph -->\n<p>Estos son nuestros servicios</p>\n<!-- /wp:paragraph -->', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2021-11-30 01:20:35', '2021-11-30 01:20:35', '', 0, 'http://localhost/wordpress58/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-11-30 01:20:35', '2021-11-30 01:20:35', '<!-- wp:paragraph -->\n<p>Estos son nuestros servicios</p>\n<!-- /wp:paragraph -->', 'Servicios', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-11-30 01:20:35', '2021-11-30 01:20:35', '', 15, 'http://localhost/wordpress58/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-12-11 19:15:18', '2021-11-30 17:22:14', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2021-12-11 19:15:18', '2021-12-11 19:15:18', '', 0, 'http://localhost/wordpress58/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2021-11-30 17:21:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-30 17:21:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress58/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2021-11-30 17:21:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-30 17:21:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress58/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2021-12-11 19:15:18', '2021-11-30 17:23:44', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2021-12-11 19:15:18', '2021-12-11 19:15:18', '', 0, 'http://localhost/wordpress58/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2021-11-30 22:55:22', '2021-11-30 22:55:22', '', 'nosotros', '', 'inherit', 'open', 'closed', '', 'nosotros-2', '', '', '2021-11-30 22:55:22', '2021-11-30 22:55:22', '', 13, 'http://localhost/wordpress58/wp-content/uploads/2021/11/nosotros.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2021-12-01 18:38:04', '2021-12-01 18:38:04', '[contact-form-7 id=\"68\" title=\"Formulario de contacto 1\"]', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2021-12-11 20:15:40', '2021-12-11 20:15:40', '', 0, 'http://localhost/wordpress58/?page_id=23', 0, 'page', '', 0),
(24, 1, '2021-12-01 18:38:04', '2021-12-01 18:38:04', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-12-01 18:38:04', '2021-12-01 18:38:04', '', 23, 'http://localhost/wordpress58/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-12-11 19:15:18', '2021-12-01 18:41:58', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2021-12-11 19:15:18', '2021-12-11 19:15:18', '', 0, 'http://localhost/wordpress58/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2021-12-01 18:43:36', '2021-12-01 18:43:36', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae nisl a elit imperdiet accumsan. Phasellus urna purus, consectetur eu fermentum consequat, varius ac nisi. Praesent et tincidunt ipsum. Sed a ornare nisl. Nunc non ornare ex. Vivamus aliquet, erat quis maximus porttitor, tortor mauris varius arcu, vel egestas nisl mauris sed velit. Duis eu augue felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed lectus sem, mattis non purus at, cursus finibus libero. Donec ante ligula, fringilla a ornare quis, aliquet vitae nunc. Nunc commodo sollicitudin ligula ac scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis consectetur ex sodales, blandit neque quis, faucibus lorem. Cras convallis turpis bibendum ex varius ullamcorper. Nunc sed vestibulum leo. Integer vel condimentum est, ac lobortis urna. Vestibulum gravida finibus leo, id fringilla urna laoreet sit amet. Mauris sed faucibus ligula. Vivamus pretium dui id erat tristique, ut pretium magna semper. Fusce nec efficitur dolor, id sodales magna. Aenean semper sem sed libero condimentum molestie. Mauris ac tellus risus. Sed aliquet et mauris venenatis gravida. Aenean auctor, justo quis porta aliquam, est turpis interdum metus, eget tincidunt ligula erat in nisi.</p>\n<!-- /wp:paragraph -->', 'Nuestras Clases', '', 'publish', 'closed', 'closed', '', 'nuestras-clases', '', '', '2021-12-01 18:46:39', '2021-12-01 18:46:39', '', 0, 'http://localhost/wordpress58/?page_id=26', 0, 'page', '', 0),
(27, 1, '2021-11-02 18:43:36', '2021-11-02 18:43:36', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae nisl a elit imperdiet accumsan. Phasellus urna purus, consectetur eu fermentum consequat, varius ac nisi. Praesent et tincidunt ipsum. Sed a ornare nisl. Nunc non ornare ex. Vivamus aliquet, erat quis maximus porttitor, tortor mauris varius arcu, vel egestas nisl mauris sed velit. Duis eu augue felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed lectus sem, mattis non purus at, cursus finibus libero. Donec ante ligula, fringilla a ornare quis, aliquet vitae nunc. Nunc commodo sollicitudin ligula ac scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis consectetur ex sodales, blandit neque quis, faucibus lorem. Cras convallis turpis bibendum ex varius ullamcorper. Nunc sed vestibulum leo. Integer vel condimentum est, ac lobortis urna. Vestibulum gravida finibus leo, id fringilla urna laoreet sit amet. Mauris sed faucibus ligula. Vivamus pretium dui id erat tristique, ut pretium magna semper. Fusce nec efficitur dolor, id sodales magna. Aenean semper sem sed libero condimentum molestie. Mauris ac tellus risus. Sed aliquet et mauris venenatis gravida. Aenean auctor, justo quis porta aliquam, est turpis interdum metus, eget tincidunt ligula erat in nisi.</p>\n<!-- /wp:paragraph -->', 'Nuestras Clases', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-12-01 18:43:36', '2021-12-01 18:43:36', '', 26, 'http://localhost/wordpress58/?p=27', 0, 'revision', '', 0),
(29, 1, '2021-12-02 19:32:18', '2021-12-02 19:32:18', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"gymfitness_clases\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Clases', 'clases', 'publish', 'closed', 'closed', '', 'group_61a7ccf515b5e', '', '', '2021-12-01 19:32:18', '2021-12-01 19:32:18', '', 0, 'http://localhost/wordpress58/?post_type=acf-field-group&#038;p=29', 0, 'acf-field-group', '', 0),
(30, 1, '2021-12-01 19:32:18', '2021-12-01 19:32:18', 'a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:33:\"Agrega la hora de inicio de clase\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";}', 'Hora inicio', 'hora_inicio', 'publish', 'closed', 'closed', '', 'field_61a7cd1fe8634', '', '', '2021-12-01 19:32:18', '2021-12-01 19:32:18', '', 29, 'http://localhost/wordpress58/?post_type=acf-field&p=30', 0, 'acf-field', '', 0),
(31, 1, '2021-12-01 19:32:18', '2021-12-01 19:32:18', 'a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:30:\"Agrega la hora de fin de clase\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";}', 'Hora fin', 'hora_fin', 'publish', 'closed', 'closed', '', 'field_61a7cd8fe8635', '', '', '2021-12-01 19:32:18', '2021-12-01 19:32:18', '', 29, 'http://localhost/wordpress58/?post_type=acf-field&p=31', 1, 'acf-field', '', 0),
(32, 1, '2021-12-01 19:32:18', '2021-12-01 19:32:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:45:\"Escriba los dias en que se imparte esta clase\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dias clase', 'dias_clase', 'publish', 'closed', 'closed', '', 'field_61a7cdace8636', '', '', '2021-12-01 19:32:18', '2021-12-01 19:32:18', '', 29, 'http://localhost/wordpress58/?post_type=acf-field&p=32', 2, 'acf-field', '', 0),
(33, 1, '2021-12-01 19:43:28', '2021-12-01 19:43:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mauris tortor, maximus congue ornare sed, ornare nec magna. Donec urna est, convallis nec auctor facilisis, mattis quis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras et quam euismod, egestas ante at, bibendum justo. Donec vitae sagittis nunc. Aliquam dolor odio, vestibulum quis egestas ac, sollicitudin a purus. In hac habitasse platea dictumst. Sed sed ullamcorper eros. Fusce vitae erat pharetra orci viverra ornare. Aliquam erat volutpat.', 'Clases de Spinning', '', 'publish', 'closed', 'closed', '', 'clases-de-spinning', '', '', '2021-12-01 19:43:28', '2021-12-01 19:43:28', '', 0, 'http://localhost/wordpress58/?post_type=gymfitness_clases&#038;p=33', 0, 'gymfitness_clases', '', 0),
(34, 1, '2021-12-01 19:42:31', '2021-12-01 19:42:31', '', 'clase6', '', 'inherit', 'open', 'closed', '', 'clase6', '', '', '2021-12-01 19:42:31', '2021-12-01 19:42:31', '', 33, 'http://localhost/wordpress58/wp-content/uploads/2021/12/clase6.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2021-12-01 19:42:32', '2021-12-01 19:42:32', '', 'clase1', '', 'inherit', 'open', 'closed', '', 'clase1', '', '', '2021-12-01 19:42:32', '2021-12-01 19:42:32', '', 33, 'http://localhost/wordpress58/wp-content/uploads/2021/12/clase1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2021-12-01 19:42:33', '2021-12-01 19:42:33', '', 'clase2', '', 'inherit', 'open', 'closed', '', 'clase2', '', '', '2021-12-01 19:42:33', '2021-12-01 19:42:33', '', 33, 'http://localhost/wordpress58/wp-content/uploads/2021/12/clase2.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2021-12-01 19:42:33', '2021-12-01 19:42:33', '', 'clase3', '', 'inherit', 'open', 'closed', '', 'clase3', '', '', '2021-12-01 19:42:33', '2021-12-01 19:42:33', '', 33, 'http://localhost/wordpress58/wp-content/uploads/2021/12/clase3.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2021-12-01 19:42:34', '2021-12-01 19:42:34', '', 'clase4', '', 'inherit', 'open', 'closed', '', 'clase4', '', '', '2021-12-01 19:42:34', '2021-12-01 19:42:34', '', 33, 'http://localhost/wordpress58/wp-content/uploads/2021/12/clase4.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2021-12-01 19:42:35', '2021-12-01 19:42:35', '', 'clase5', '', 'inherit', 'open', 'closed', '', 'clase5', '', '', '2021-12-01 19:42:35', '2021-12-01 19:42:35', '', 33, 'http://localhost/wordpress58/wp-content/uploads/2021/12/clase5.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2021-12-01 19:44:21', '2021-12-01 19:44:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mauris tortor, maximus congue ornare sed, ornare nec magna. Donec urna est, convallis nec auctor facilisis, mattis quis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras et quam euismod, egestas ante at, bibendum justo. Donec vitae sagittis nunc. Aliquam dolor odio, vestibulum quis egestas ac, sollicitudin a purus. In hac habitasse platea dictumst. Sed sed ullamcorper eros. Fusce vitae erat pharetra orci viverra ornare. Aliquam erat volutpat.', 'Masterclass crossfit', '', 'publish', 'closed', 'closed', '', 'masterclass-crossfit', '', '', '2021-12-01 19:44:21', '2021-12-01 19:44:21', '', 0, 'http://localhost/wordpress58/?post_type=gymfitness_clases&#038;p=40', 0, 'gymfitness_clases', '', 0),
(41, 1, '2021-12-01 19:44:59', '2021-12-01 19:44:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mauris tortor, maximus congue ornare sed, ornare nec magna. Donec urna est, convallis nec auctor facilisis, mattis quis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras et quam euismod, egestas ante at, bibendum justo. Donec vitae sagittis nunc. Aliquam dolor odio, vestibulum quis egestas ac, sollicitudin a purus. In hac habitasse platea dictumst. Sed sed ullamcorper eros. Fusce vitae erat pharetra orci viverra ornare. Aliquam erat volutpat.', 'Funcional', '', 'publish', 'closed', 'closed', '', 'funcional', '', '', '2021-12-01 19:46:32', '2021-12-01 19:46:32', '', 0, 'http://localhost/wordpress58/?post_type=gymfitness_clases&#038;p=41', 0, 'gymfitness_clases', '', 0),
(42, 1, '2021-12-01 19:45:28', '2021-12-01 19:45:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mauris tortor, maximus congue ornare sed, ornare nec magna. Donec urna est, convallis nec auctor facilisis, mattis quis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras et quam euismod, egestas ante at, bibendum justo. Donec vitae sagittis nunc. Aliquam dolor odio, vestibulum quis egestas ac, sollicitudin a purus. In hac habitasse platea dictumst. Sed sed ullamcorper eros. Fusce vitae erat pharetra orci viverra ornare. Aliquam erat volutpat.', 'Gimnasio', '', 'publish', 'closed', 'closed', '', 'gimnasio', '', '', '2021-12-01 19:46:40', '2021-12-01 19:46:40', '', 0, 'http://localhost/wordpress58/?post_type=gymfitness_clases&#038;p=42', 0, 'gymfitness_clases', '', 0),
(43, 1, '2021-12-01 19:45:57', '2021-12-01 19:45:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mauris tortor, maximus congue ornare sed, ornare nec magna. Donec urna est, convallis nec auctor facilisis, mattis quis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras et quam euismod, egestas ante at, bibendum justo. Donec vitae sagittis nunc. Aliquam dolor odio, vestibulum quis egestas ac, sollicitudin a purus. In hac habitasse platea dictumst. Sed sed ullamcorper eros. Fusce vitae erat pharetra orci viverra ornare. Aliquam erat volutpat.', 'Pilates', '', 'publish', 'closed', 'closed', '', 'pilates', '', '', '2021-11-11 14:23:22', '2021-11-11 14:23:22', '', 0, 'http://localhost/wordpress58/?post_type=gymfitness_clases&#038;p=43', 0, 'gymfitness_clases', '', 0),
(44, 1, '2021-12-01 19:46:23', '2021-12-01 19:46:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mauris tortor, maximus congue ornare sed, ornare nec magna. Donec urna est, convallis nec auctor facilisis, mattis quis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras et quam euismod, egestas ante at, bibendum justo. Donec vitae sagittis nunc. Aliquam dolor odio, vestibulum quis egestas ac, sollicitudin a purus. In hac habitasse platea dictumst. Sed sed ullamcorper eros. Fusce vitae erat pharetra orci viverra ornare. Aliquam erat volutpat.', 'Zumba', '', 'publish', 'closed', 'closed', '', 'zumba', '', '', '2021-12-01 20:29:14', '2021-12-01 20:29:14', '', 0, 'http://localhost/wordpress58/?post_type=gymfitness_clases&#038;p=44', 0, 'gymfitness_clases', '', 0),
(46, 1, '2021-12-11 19:15:18', '2021-12-11 18:53:41', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2021-12-11 19:15:18', '2021-12-11 19:15:18', '', 0, 'http://localhost/wordpress58/?p=46', 3, 'nav_menu_item', '', 0),
(47, 1, '2021-12-11 18:58:48', '2021-12-11 18:58:48', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-12-11 18:58:48', '2021-12-11 18:58:48', '', 1, 'http://localhost/wordpress58/?p=47', 0, 'revision', '', 0),
(49, 1, '2021-12-11 19:05:05', '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut finibus varius quam, vitae consectetur dui vestibulum ut. Fusce est risus, congue ut semper nec, iaculis ut nunc. Ut sagittis lorem cursus mauris efficitur, sodales venenatis est lacinia. Vestibulum porta consequat dolor ac dapibus. Donec ac velit nec augue porttitor imperdiet. Praesent libero nulla, porttitor gravida elementum id, faucibus vel justo. Nullam dignissim luctus neque non consectetur. Nulla varius vitae lacus non pretium. Nam fermentum leo pulvinar rutrum suscipit. Sed nulla purus, scelerisque ut nunc id, egestas maximus mi. Suspendisse interdum, sem eu interdum porta, nibh libero tincidunt dolor, ut consectetur ante eros nec elit. Donec a laoreet nulla. Etiam lacus nunc, imperdiet non finibus ut, feugiat eu felis. Proin commodo nisl et tortor accumsan blandit. Nunc sit amet enim auctor, vehicula lorem at, laoreet ipsum.', 'Ejercicios para tu primer semana', '', 'draft', 'open', 'open', '', '', '', '', '2021-12-11 19:05:05', '2021-12-11 19:05:05', '', 0, 'http://localhost/wordpress58/?p=49', 0, 'post', '', 0),
(50, 1, '2021-12-11 19:04:18', '2021-12-11 19:04:18', '', 'blog1', '', 'inherit', 'open', 'closed', '', 'blog1', '', '', '2021-12-11 19:04:18', '2021-12-11 19:04:18', '', 49, 'http://localhost/wordpress58/wp-content/uploads/2021/12/blog1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2021-12-11 19:06:55', '2021-12-11 19:06:55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut finibus varius quam, vitae consectetur dui vestibulum ut. Fusce est risus, congue ut semper nec, iaculis ut nunc. Ut sagittis lorem cursus mauris efficitur, sodales venenatis est lacinia. Vestibulum porta consequat dolor ac dapibus. Donec ac velit nec augue porttitor imperdiet. Praesent libero nulla, porttitor gravida elementum id, faucibus vel justo. Nullam dignissim luctus neque non consectetur.\r\n\r\nNulla varius vitae lacus non pretium. Nam fermentum leo pulvinar rutrum suscipit. Sed nulla purus, scelerisque ut nunc id, egestas maximus mi. Suspendisse interdum, sem eu interdum porta, nibh libero tincidunt dolor, ut consectetur ante eros nec elit. Donec a laoreet nulla. Etiam lacus nunc, imperdiet non finibus ut, feugiat eu felis. Proin commodo nisl et tortor accumsan blandit. Nunc sit amet enim auctor, vehicula lorem at, laoreet ipsum.', 'Ejercicios para tu primer semana', '', 'publish', 'open', 'open', '', 'ejercicios-para-tu-primer-semana', '', '', '2021-12-11 19:06:55', '2021-12-11 19:06:55', '', 0, 'http://localhost/wordpress58/?p=52', 0, 'post', '', 0),
(53, 1, '2021-12-11 19:06:36', '2021-12-11 19:06:36', '', 'blog2', '', 'inherit', 'open', 'closed', '', 'blog2', '', '', '2021-12-11 19:06:36', '2021-12-11 19:06:36', '', 52, 'http://localhost/wordpress58/wp-content/uploads/2021/12/blog2.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2021-12-11 19:06:37', '2021-12-11 19:06:37', '', 'blog3', '', 'inherit', 'open', 'closed', '', 'blog3', '', '', '2021-12-11 19:06:37', '2021-12-11 19:06:37', '', 52, 'http://localhost/wordpress58/wp-content/uploads/2021/12/blog3.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2021-12-11 19:06:38', '2021-12-11 19:06:38', '', 'blog4', '', 'inherit', 'open', 'closed', '', 'blog4', '', '', '2021-12-11 19:06:38', '2021-12-11 19:06:38', '', 52, 'http://localhost/wordpress58/wp-content/uploads/2021/12/blog4.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2021-12-11 19:06:55', '2021-12-11 19:06:55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut finibus varius quam, vitae consectetur dui vestibulum ut. Fusce est risus, congue ut semper nec, iaculis ut nunc. Ut sagittis lorem cursus mauris efficitur, sodales venenatis est lacinia. Vestibulum porta consequat dolor ac dapibus. Donec ac velit nec augue porttitor imperdiet. Praesent libero nulla, porttitor gravida elementum id, faucibus vel justo. Nullam dignissim luctus neque non consectetur.\r\n\r\nNulla varius vitae lacus non pretium. Nam fermentum leo pulvinar rutrum suscipit. Sed nulla purus, scelerisque ut nunc id, egestas maximus mi. Suspendisse interdum, sem eu interdum porta, nibh libero tincidunt dolor, ut consectetur ante eros nec elit. Donec a laoreet nulla. Etiam lacus nunc, imperdiet non finibus ut, feugiat eu felis. Proin commodo nisl et tortor accumsan blandit. Nunc sit amet enim auctor, vehicula lorem at, laoreet ipsum.', 'Ejercicios para tu primer semana', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-12-11 19:06:55', '2021-12-11 19:06:55', '', 52, 'http://localhost/wordpress58/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-12-11 19:07:34', '2021-12-11 19:07:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut finibus varius quam, vitae consectetur dui vestibulum ut. Fusce est risus, congue ut semper nec, iaculis ut nunc. Ut sagittis lorem cursus mauris efficitur, sodales venenatis est lacinia. Vestibulum porta consequat dolor ac dapibus. Donec ac velit nec augue porttitor imperdiet. Praesent libero nulla, porttitor gravida elementum id, faucibus vel justo. Nullam dignissim luctus neque non consectetur. Nulla varius vitae lacus non pretium. Nam fermentum leo pulvinar rutrum suscipit. Sed nulla purus, scelerisque ut nunc id, egestas maximus mi. Suspendisse interdum, sem eu interdum porta, nibh libero tincidunt dolor, ut consectetur ante eros nec elit. Donec a laoreet nulla. Etiam lacus nunc, imperdiet non finibus ut, feugiat eu felis. Proin commodo nisl et tortor accumsan blandit. Nunc sit amet enim auctor, vehicula lorem at, laoreet ipsum.', '5 ejercicios con barras', '', 'publish', 'open', 'open', '', '5-ejercicios-con-barras', '', '', '2021-12-11 19:07:40', '2021-12-11 19:07:40', '', 0, 'http://localhost/wordpress58/?p=57', 0, 'post', '', 0),
(58, 1, '2021-12-11 19:07:34', '2021-12-11 19:07:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut finibus varius quam, vitae consectetur dui vestibulum ut. Fusce est risus, congue ut semper nec, iaculis ut nunc. Ut sagittis lorem cursus mauris efficitur, sodales venenatis est lacinia. Vestibulum porta consequat dolor ac dapibus. Donec ac velit nec augue porttitor imperdiet. Praesent libero nulla, porttitor gravida elementum id, faucibus vel justo. Nullam dignissim luctus neque non consectetur. Nulla varius vitae lacus non pretium. Nam fermentum leo pulvinar rutrum suscipit. Sed nulla purus, scelerisque ut nunc id, egestas maximus mi. Suspendisse interdum, sem eu interdum porta, nibh libero tincidunt dolor, ut consectetur ante eros nec elit. Donec a laoreet nulla. Etiam lacus nunc, imperdiet non finibus ut, feugiat eu felis. Proin commodo nisl et tortor accumsan blandit. Nunc sit amet enim auctor, vehicula lorem at, laoreet ipsum.', '5 ejercicios con barras', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-12-11 19:07:34', '2021-12-11 19:07:34', '', 57, 'http://localhost/wordpress58/?p=58', 0, 'revision', '', 0),
(59, 1, '2021-12-11 19:08:07', '2021-12-11 19:08:07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut finibus varius quam, vitae consectetur dui vestibulum ut. Fusce est risus, congue ut semper nec, iaculis ut nunc. Ut sagittis lorem cursus mauris efficitur, sodales venenatis est lacinia. Vestibulum porta consequat dolor ac dapibus. Donec ac velit nec augue porttitor imperdiet. Praesent libero nulla, porttitor gravida elementum id, faucibus vel justo. Nullam dignissim luctus neque non consectetur. Nulla varius vitae lacus non pretium. Nam fermentum leo pulvinar rutrum suscipit. Sed nulla purus, scelerisque ut nunc id, egestas maximus mi. Suspendisse interdum, sem eu interdum porta, nibh libero tincidunt dolor, ut consectetur ante eros nec elit. Donec a laoreet nulla. Etiam lacus nunc, imperdiet non finibus ut, feugiat eu felis. Proin commodo nisl et tortor accumsan blandit. Nunc sit amet enim auctor, vehicula lorem at, laoreet ipsum.', 'Como comenzar una rutina', '', 'publish', 'open', 'open', '', 'como-comenzar-una-rutina', '', '', '2021-12-11 19:08:07', '2021-12-11 19:08:07', '', 0, 'http://localhost/wordpress58/?p=59', 0, 'post', '', 0),
(60, 1, '2021-12-11 19:08:07', '2021-12-11 19:08:07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut finibus varius quam, vitae consectetur dui vestibulum ut. Fusce est risus, congue ut semper nec, iaculis ut nunc. Ut sagittis lorem cursus mauris efficitur, sodales venenatis est lacinia. Vestibulum porta consequat dolor ac dapibus. Donec ac velit nec augue porttitor imperdiet. Praesent libero nulla, porttitor gravida elementum id, faucibus vel justo. Nullam dignissim luctus neque non consectetur. Nulla varius vitae lacus non pretium. Nam fermentum leo pulvinar rutrum suscipit. Sed nulla purus, scelerisque ut nunc id, egestas maximus mi. Suspendisse interdum, sem eu interdum porta, nibh libero tincidunt dolor, ut consectetur ante eros nec elit. Donec a laoreet nulla. Etiam lacus nunc, imperdiet non finibus ut, feugiat eu felis. Proin commodo nisl et tortor accumsan blandit. Nunc sit amet enim auctor, vehicula lorem at, laoreet ipsum.', 'Como comenzar una rutina', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-12-11 19:08:07', '2021-12-11 19:08:07', '', 59, 'http://localhost/wordpress58/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-12-11 19:08:37', '2021-12-11 19:08:37', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut finibus varius quam, vitae consectetur dui vestibulum ut. Fusce est risus, congue ut semper nec, iaculis ut nunc. Ut sagittis lorem cursus mauris efficitur, sodales venenatis est lacinia. Vestibulum porta consequat dolor ac dapibus. Donec ac velit nec augue porttitor imperdiet. Praesent libero nulla, porttitor gravida elementum id, faucibus vel justo. Nullam dignissim luctus neque non consectetur. Nulla varius vitae lacus non pretium. Nam fermentum leo pulvinar rutrum suscipit. Sed nulla purus, scelerisque ut nunc id, egestas maximus mi. Suspendisse interdum, sem eu interdum porta, nibh libero tincidunt dolor, ut consectetur ante eros nec elit. Donec a laoreet nulla. Etiam lacus nunc, imperdiet non finibus ut, feugiat eu felis. Proin commodo nisl et tortor accumsan blandit. Nunc sit amet enim auctor, vehicula lorem at, laoreet ipsum.', '5 ejercicios de estiramiento', '', 'publish', 'open', 'open', '', '5-ejercicios-de-estiramiento', '', '', '2021-12-11 19:08:37', '2021-12-11 19:08:37', '', 0, 'http://localhost/wordpress58/?p=61', 0, 'post', '', 0),
(62, 1, '2021-12-11 19:08:37', '2021-12-11 19:08:37', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut finibus varius quam, vitae consectetur dui vestibulum ut. Fusce est risus, congue ut semper nec, iaculis ut nunc. Ut sagittis lorem cursus mauris efficitur, sodales venenatis est lacinia. Vestibulum porta consequat dolor ac dapibus. Donec ac velit nec augue porttitor imperdiet. Praesent libero nulla, porttitor gravida elementum id, faucibus vel justo. Nullam dignissim luctus neque non consectetur. Nulla varius vitae lacus non pretium. Nam fermentum leo pulvinar rutrum suscipit. Sed nulla purus, scelerisque ut nunc id, egestas maximus mi. Suspendisse interdum, sem eu interdum porta, nibh libero tincidunt dolor, ut consectetur ante eros nec elit. Donec a laoreet nulla. Etiam lacus nunc, imperdiet non finibus ut, feugiat eu felis. Proin commodo nisl et tortor accumsan blandit. Nunc sit amet enim auctor, vehicula lorem at, laoreet ipsum.', '5 ejercicios de estiramiento', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2021-12-11 19:08:37', '2021-12-11 19:08:37', '', 61, 'http://localhost/wordpress58/?p=62', 0, 'revision', '', 0),
(63, 1, '2021-12-11 19:12:36', '2021-12-11 19:12:36', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-12-11 19:12:36', '2021-12-11 19:12:36', '', 0, 'http://localhost/wordpress58/?page_id=63', 0, 'page', '', 0),
(64, 1, '2021-12-11 19:12:36', '2021-12-11 19:12:36', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2021-12-11 19:12:36', '2021-12-11 19:12:36', '', 63, 'http://localhost/wordpress58/?p=64', 0, 'revision', '', 0),
(65, 1, '2021-12-11 19:15:18', '2021-12-11 19:15:18', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2021-12-11 19:15:18', '2021-12-11 19:15:18', '', 0, 'http://localhost/wordpress58/?p=65', 4, 'nav_menu_item', '', 0),
(66, 1, '2021-12-11 19:22:21', '2021-12-11 19:22:21', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2021-12-12 19:46:18', '2021-12-12 19:46:18', '', 0, 'http://localhost/wordpress58/?page_id=66', 0, 'page', '', 0),
(67, 1, '2021-12-11 19:22:21', '2021-12-11 19:22:21', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-12-11 19:22:21', '2021-12-11 19:22:21', '', 66, 'http://localhost/wordpress58/?p=67', 0, 'revision', '', 0),
(68, 1, '2021-12-11 19:52:45', '2021-12-11 19:52:45', '<label> Tu nombre\r\n    [text* your-name] </label>\r\n\r\n<label> Tu correo electrónico\r\n    [email* your-email] </label>\r\n\r\n<label> Tu telefono\r\n[tel telefono]</label>\r\n\r\n<label> Tu mensaje (opcional)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Enviar\"]\n1\n[_site_title]\n[_site_title] <marcosledezmacuevas@gmail.com>\n[_site_admin_email]\nDe: [your-name] <[your-email]>\r\nAsunto: Contacto desde webpage\r\n\r\nCuerpo del mensaje:\r\nSu telefono es: [telefono]\r\nSu email: [your-email]\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] «[your-subject]»\n[_site_title] <marcosledezmacuevas@gmail.com>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nGracias por tu mensaje. Ha sido enviado.\nHa ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor, revísalos e inténtalo de nuevo.\nHa ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.\nHa ocurrido un error desconocido al subir el archivo.\nNo tienes permisos para subir archivos de este tipo.\nEl archivo es demasiado grande.\nHa ocurrido un error al subir el archivo.\nEl formato de fecha es incorrecto.\nLa fecha es anterior a la más temprana permitida.\nLa fecha es posterior a la más tardía permitida.\nEl formato de número no es válido.\nEl número es menor que el mínimo permitido.\nEl número es mayor que el máximo permitido.\nLa respuesta al cuestionario no es correcta.\nLa dirección de correo electrónico que has introducido no es válida.\nLa URL no es válida.\nEl número de teléfono no es válido.', 'Formulario de contacto 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2021-12-11 19:57:07', '2021-12-11 19:57:07', '', 0, 'http://localhost/wordpress58/?post_type=wpcf7_contact_form&#038;p=68', 0, 'wpcf7_contact_form', '', 0),
(69, 1, '2021-12-11 19:53:28', '2021-12-11 19:53:28', '[contact-form-7 id=\"68\" title=\"Formulario de contacto 1\"]', 'Contacto', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-12-11 19:53:28', '2021-12-11 19:53:28', '', 23, 'http://localhost/wordpress58/?p=69', 0, 'revision', '', 0),
(70, 1, '2021-12-11 20:14:26', '2021-12-11 20:14:26', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"23\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Contacto', 'contacto', 'publish', 'closed', 'closed', '', 'group_61b5062bc809d', '', '', '2021-12-11 20:14:26', '2021-12-11 20:14:26', '', 0, 'http://localhost/wordpress58/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2021-12-11 20:14:26', '2021-12-11 20:14:26', 'a:9:{s:4:\"type\";s:17:\"leaflet_map_field\";s:12:\"instructions\";s:43:\"Busque la ciudad o calle donde se encuentra\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"lat\";i:0;s:3:\"lng\";i:0;s:4:\"zoom\";i:15;s:6:\"height\";i:450;}', 'Ubicación', 'ubicacion', 'publish', 'closed', 'closed', '', 'field_61b5064c39048', '', '', '2021-12-11 20:14:26', '2021-12-11 20:14:26', '', 70, 'http://localhost/wordpress58/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2021-12-11 20:15:40', '2021-12-11 20:15:40', '[contact-form-7 id=\"68\" title=\"Formulario de contacto 1\"]', 'Contacto', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-12-11 20:15:40', '2021-12-11 20:15:40', '', 23, 'http://localhost/wordpress58/?p=72', 0, 'revision', '', 0),
(73, 1, '2021-12-11 20:25:02', '2021-12-11 20:25:02', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"66\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Inicio', 'inicio', 'publish', 'closed', 'closed', '', 'group_61b5090a36680', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 0, 'http://localhost/wordpress58/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2021-12-11 20:26:25', '2021-12-11 20:26:25', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Hero', 'hero', 'publish', 'closed', 'closed', '', 'field_61b5091feff25', '', '', '2021-12-11 20:26:25', '2021-12-11 20:26:25', '', 73, 'http://localhost/wordpress58/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(76, 1, '2021-12-11 20:26:56', '2021-12-11 20:26:56', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen Hero', 'imagen_hero', 'publish', 'closed', 'closed', '', 'field_61b50975791ca', '', '', '2021-12-11 20:27:32', '2021-12-11 20:27:32', '', 73, 'http://localhost/wordpress58/?post_type=acf-field&#038;p=76', 1, 'acf-field', '', 0),
(77, 1, '2021-12-11 20:27:32', '2021-12-11 20:27:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Encabezado Hero', 'encabezado_hero', 'publish', 'closed', 'closed', '', 'field_61b509a851761', '', '', '2021-12-11 20:27:32', '2021-12-11 20:27:32', '', 73, 'http://localhost/wordpress58/?post_type=acf-field&p=77', 2, 'acf-field', '', 0),
(78, 1, '2021-12-11 20:27:57', '2021-12-11 20:27:57', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Contenido Hero', 'contenido_hero', 'publish', 'closed', 'closed', '', 'field_61b509b62ffbe', '', '', '2021-12-11 20:27:57', '2021-12-11 20:27:57', '', 73, 'http://localhost/wordpress58/?post_type=acf-field&p=78', 3, 'acf-field', '', 0),
(79, 1, '2021-12-11 20:28:40', '2021-12-11 20:28:40', '', 'hero-index', '', 'inherit', 'open', 'closed', '', 'hero-index', '', '', '2021-12-11 20:28:40', '2021-12-11 20:28:40', '', 66, 'http://localhost/wordpress58/wp-content/uploads/2021/12/hero-index.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2021-12-11 20:29:50', '2021-12-11 20:29:50', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-12-11 20:29:50', '2021-12-11 20:29:50', '', 66, 'http://localhost/wordpress58/?p=80', 0, 'revision', '', 0),
(81, 1, '2021-12-12 19:22:07', '2021-12-12 19:22:07', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Bienvenida', 'bienvenida', 'publish', 'closed', 'closed', '', 'field_61b64b87662f9', '', '', '2021-12-12 19:22:07', '2021-12-12 19:22:07', '', 73, 'http://localhost/wordpress58/?post_type=acf-field&p=81', 4, 'acf-field', '', 0),
(82, 1, '2021-12-12 19:22:07', '2021-12-12 19:22:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Encabezado Bienvenida', 'encabezado_bienvenida', 'publish', 'closed', 'closed', '', 'field_61b64baa662fa', '', '', '2021-12-12 19:22:07', '2021-12-12 19:22:07', '', 73, 'http://localhost/wordpress58/?post_type=acf-field&p=82', 5, 'acf-field', '', 0),
(83, 1, '2021-12-12 19:22:07', '2021-12-12 19:22:07', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Texto Bienvenida', 'texto_bienvenida', 'publish', 'closed', 'closed', '', 'field_61b64bc1662fb', '', '', '2021-12-12 19:22:07', '2021-12-12 19:22:07', '', 73, 'http://localhost/wordpress58/?post_type=acf-field&p=83', 6, 'acf-field', '', 0),
(84, 1, '2021-12-12 19:23:04', '2021-12-12 19:23:04', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-12-12 19:23:04', '2021-12-12 19:23:04', '', 66, 'http://localhost/wordpress58/?p=84', 0, 'revision', '', 0),
(85, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Areas', 'areas', 'publish', 'closed', 'closed', '', 'field_61b65020002d3', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 73, 'http://localhost/wordpress58/?post_type=acf-field&p=85', 7, 'acf-field', '', 0),
(86, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:38:\"Agrega una imagen y un titulo al area.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Area 1', 'area_1', 'publish', 'closed', 'closed', '', 'field_61b65051002d4', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 73, 'http://localhost/wordpress58/?post_type=acf-field&p=86', 8, 'acf-field', '', 0),
(87, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen', 'area_imagen', 'publish', 'closed', 'closed', '', 'field_61b6507d002d5', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 86, 'http://localhost/wordpress58/?post_type=acf-field&p=87', 0, 'acf-field', '', 0),
(88, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto', 'area_texto', 'publish', 'closed', 'closed', '', 'field_61b650cc002d6', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 86, 'http://localhost/wordpress58/?post_type=acf-field&p=88', 1, 'acf-field', '', 0),
(89, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:38:\"Agrega una imagen y un titulo al area.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Area 2', 'area_2', 'publish', 'closed', 'closed', '', 'field_61b650f7002d7', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 73, 'http://localhost/wordpress58/?post_type=acf-field&p=89', 9, 'acf-field', '', 0),
(90, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen', 'area_imagen', 'publish', 'closed', 'closed', '', 'field_61b650f7002d8', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 89, 'http://localhost/wordpress58/?post_type=acf-field&p=90', 0, 'acf-field', '', 0),
(91, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto', 'area_texto', 'publish', 'closed', 'closed', '', 'field_61b650f7002d9', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 89, 'http://localhost/wordpress58/?post_type=acf-field&p=91', 1, 'acf-field', '', 0),
(92, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:38:\"Agrega una imagen y un titulo al area.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Area 3', 'area_3', 'publish', 'closed', 'closed', '', 'field_61b650ff002da', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 73, 'http://localhost/wordpress58/?post_type=acf-field&p=92', 10, 'acf-field', '', 0),
(93, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen', 'area_imagen', 'publish', 'closed', 'closed', '', 'field_61b650ff002db', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 92, 'http://localhost/wordpress58/?post_type=acf-field&p=93', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(94, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto', 'area_texto', 'publish', 'closed', 'closed', '', 'field_61b650ff002dc', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 92, 'http://localhost/wordpress58/?post_type=acf-field&p=94', 1, 'acf-field', '', 0),
(95, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:38:\"Agrega una imagen y un titulo al area.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Area 4', 'area_4', 'publish', 'closed', 'closed', '', 'field_61b65106002dd', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 73, 'http://localhost/wordpress58/?post_type=acf-field&p=95', 11, 'acf-field', '', 0),
(96, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen', 'area_imagen', 'publish', 'closed', 'closed', '', 'field_61b65106002de', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 95, 'http://localhost/wordpress58/?post_type=acf-field&p=96', 0, 'acf-field', '', 0),
(97, 1, '2021-12-12 19:44:12', '2021-12-12 19:44:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto', 'area_texto', 'publish', 'closed', 'closed', '', 'field_61b65106002df', '', '', '2021-12-12 19:44:12', '2021-12-12 19:44:12', '', 95, 'http://localhost/wordpress58/?post_type=acf-field&p=97', 1, 'acf-field', '', 0),
(98, 1, '2021-12-12 19:45:29', '2021-12-12 19:45:29', '', 'area-aparatos', '', 'inherit', 'open', 'closed', '', 'area-aparatos', '', '', '2021-12-12 19:45:29', '2021-12-12 19:45:29', '', 66, 'http://localhost/wordpress58/wp-content/uploads/2021/12/area-aparatos.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2021-12-12 19:45:29', '2021-12-12 19:45:29', '', 'area-cardio', '', 'inherit', 'open', 'closed', '', 'area-cardio', '', '', '2021-12-12 19:45:29', '2021-12-12 19:45:29', '', 66, 'http://localhost/wordpress58/wp-content/uploads/2021/12/area-cardio.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2021-12-12 19:45:30', '2021-12-12 19:45:30', '', 'area-pesas', '', 'inherit', 'open', 'closed', '', 'area-pesas', '', '', '2021-12-12 19:45:30', '2021-12-12 19:45:30', '', 66, 'http://localhost/wordpress58/wp-content/uploads/2021/12/area-pesas.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2021-12-12 19:45:31', '2021-12-12 19:45:31', '', 'area-yoga', '', 'inherit', 'open', 'closed', '', 'area-yoga', '', '', '2021-12-12 19:45:31', '2021-12-12 19:45:31', '', 66, 'http://localhost/wordpress58/wp-content/uploads/2021/12/area-yoga.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2021-12-12 19:46:18', '2021-12-12 19:46:18', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-12-12 19:46:18', '2021-12-12 19:46:18', '', 66, 'http://localhost/wordpress58/?p=102', 0, 'revision', '', 0),
(103, 1, '2021-12-13 11:23:06', '2021-12-13 11:23:06', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"instructores\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Instructores', 'instructores', 'publish', 'closed', 'closed', '', 'group_61b72cbd88842', '', '', '2021-12-13 11:23:06', '2021-12-13 11:23:06', '', 0, 'http://localhost/wordpress58/?post_type=acf-field-group&#038;p=103', 0, 'acf-field-group', '', 0),
(104, 1, '2021-12-13 11:23:06', '2021-12-13 11:23:06', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:48:\"Seleccione las especialidades de este instructor\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:5:\"pesas\";s:5:\"Pesas\";s:6:\"cardio\";s:6:\"Cardio\";s:17:\"acondicionamiento\";s:17:\"Acondicionamiento\";s:4:\"yoga\";s:4:\"Yoga\";s:8:\"spinning\";s:8:\"Spinning\";s:5:\"boxeo\";s:5:\"Boxeo\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}', 'Especialidad', 'especialidad', 'publish', 'closed', 'closed', '', 'field_61b72cc8fb377', '', '', '2021-12-13 11:23:06', '2021-12-13 11:23:06', '', 103, 'http://localhost/wordpress58/?post_type=acf-field&p=104', 0, 'acf-field', '', 0),
(105, 1, '2021-12-13 11:24:25', '2021-12-13 11:24:25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et nulla eget urna venenatis fermentum a at sapien.', 'Pedro', '', 'publish', 'closed', 'closed', '', 'pedro', '', '', '2021-12-13 11:24:25', '2021-12-13 11:24:25', '', 0, 'http://localhost/wordpress58/?post_type=instructores&#038;p=105', 0, 'instructores', '', 0),
(106, 1, '2021-12-13 11:24:02', '2021-12-13 11:24:02', '', 'instructor2', '', 'inherit', 'open', 'closed', '', 'instructor2', '', '', '2021-12-13 11:24:02', '2021-12-13 11:24:02', '', 105, 'http://localhost/wordpress58/wp-content/uploads/2021/12/instructor2.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2021-12-13 11:24:02', '2021-12-13 11:24:02', '', 'instructor3', '', 'inherit', 'open', 'closed', '', 'instructor3', '', '', '2021-12-13 11:24:02', '2021-12-13 11:24:02', '', 105, 'http://localhost/wordpress58/wp-content/uploads/2021/12/instructor3.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2021-12-13 11:24:03', '2021-12-13 11:24:03', '', 'instructor4', '', 'inherit', 'open', 'closed', '', 'instructor4', '', '', '2021-12-13 11:24:03', '2021-12-13 11:24:03', '', 105, 'http://localhost/wordpress58/wp-content/uploads/2021/12/instructor4.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2021-12-13 11:24:03', '2021-12-13 11:24:03', '', 'instructor1', '', 'inherit', 'open', 'closed', '', 'instructor1', '', '', '2021-12-13 11:24:03', '2021-12-13 11:24:03', '', 105, 'http://localhost/wordpress58/wp-content/uploads/2021/12/instructor1.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2021-12-13 11:24:46', '2021-12-13 11:24:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et nulla eget urna venenatis fermentum a at sapien.', 'Vanessa', '', 'publish', 'closed', 'closed', '', 'vanessa', '', '', '2021-12-13 11:24:46', '2021-12-13 11:24:46', '', 0, 'http://localhost/wordpress58/?post_type=instructores&#038;p=110', 0, 'instructores', '', 0),
(111, 1, '2021-12-13 11:25:10', '2021-12-13 11:25:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et nulla eget urna venenatis fermentum a at sapien.', 'Dario', '', 'publish', 'closed', 'closed', '', 'dario', '', '', '2021-12-13 11:25:10', '2021-12-13 11:25:10', '', 0, 'http://localhost/wordpress58/?post_type=instructores&#038;p=111', 0, 'instructores', '', 0),
(112, 1, '2021-12-13 11:25:29', '2021-12-13 11:25:29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et nulla eget urna venenatis fermentum a at sapien.', 'Romina', '', 'publish', 'closed', 'closed', '', 'romina', '', '', '2021-12-13 11:25:29', '2021-12-13 11:25:29', '', 0, 'http://localhost/wordpress58/?post_type=instructores&#038;p=112', 0, 'instructores', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(3, 'Menu 1', 'menu-1', 0),
(4, 'Básicos', 'basicos', 0),
(5, 'Tips', 'tips', 0),
(6, 'Ejercicios', 'ejercicios', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(17, 3, 0),
(20, 3, 0),
(25, 3, 0),
(46, 3, 0),
(49, 1, 0),
(52, 1, 0),
(52, 4, 0),
(57, 6, 0),
(59, 5, 0),
(61, 5, 0),
(61, 6, 0),
(65, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'marcos'),
(2, 1, 'first_name', 'Marcos Asuncion'),
(3, 1, 'last_name', 'Ledezma Cuevas'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"2dc7aabaf07280fb7010043e1bb97a206c9028aeb56bb76af6ed320187f418b3\";a:4:{s:10:\"expiration\";i:1639406120;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36\";s:5:\"login\";i:1639233320;}s:64:\"6b110406492f636492ac0d38d1c7c665debf99298c3ad03205e613993f83c66e\";a:4:{s:10:\"expiration\";i:1639417319;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36\";s:5:\"login\";i:1639244519;}s:64:\"6c083b08532830121684ce6c81c77dc97d9b02dca9fb0be63ba3ea0861c72785\";a:4:{s:10:\"expiration\";i:1639505771;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36\";s:5:\"login\";i:1639332971;}s:64:\"602410a7ac51923d009fc1e868f2a22f783ff9ed879d036f60412778aed574f5\";a:4:{s:10:\"expiration\";i:1639567109;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36\";s:5:\"login\";i:1639394309;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '45'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1637971984'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'marcos', '$P$BE0yoWKq8mb3QkuPxeEmzCO7XazrXB1', 'marcos', 'marcosledezmacuevas@gmail.com', 'http://localhost/wordpress58', '2021-11-26 13:51:17', '', 0, 'Marcos Asuncion Ledezma Cuevas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
