-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Lun 29 Juin 2015 à 11:12
-- Version du serveur :  5.5.38
-- Version de PHP :  5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

--
-- Base de données :  `lsp`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'https://wordpress.org/', '', '2015-06-24 12:48:42', '2015-06-24 12:48:42', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=646 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/LSP/wordpress', 'yes'),
(2, 'home', 'http://localhost/LSP/wordpress', 'yes'),
(3, 'blogname', 'Location Scooter Paris', 'yes'),
(4, 'blogdescription', 'Test', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nbbourgoin@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:21:"polylang/polylang.php";i:1;s:41:"dk-pricr-responsive-pricing-table/rpt.php";i:2;s:44:"easy-pricing-tables/pricing-table-plugin.php";i:3;s:37:"login-customizer/login-customizer.php";i:4;s:39:"simple-custom-css/simple-custom-css.php";i:5;s:33:"tweet-old-post/tweet-old-post.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '1', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:78:"/Applications/MAMP/htdocs/LSP/wordpress/wp-content/plugins/akismet/akismet.php";i:1;s:78:"/Applications/MAMP/htdocs/LSP/wordpress/wp-content/themes/zerif-lite/style.css";i:2;s:79:"/Applications/MAMP/htdocs/LSP/wordpress/wp-content/themes/zerif-lite/footer.php";i:3;s:82:"/Applications/MAMP/htdocs/LSP/wordpress/wp-content/themes/zerif-lite/functions.php";i:5;s:79:"/Applications/MAMP/htdocs/LSP/wordpress/wp-content/themes/zerif-lite/header.php";}', 'no'),
(41, 'template', 'zerif-lite', 'yes'),
(42, 'stylesheet', 'zerif-lite', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31535', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:3:{i:1;a:0:{}i:3;a:3:{s:5:"title";s:3:"   ";s:4:"text";s:28:"[easy-pricing-table id="47"]";s:6:"filter";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:39:"simple-custom-css/simple-custom-css.php";s:15:"sccss_uninstall";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'WPLANG', 'fr_FR', 'yes'),
(91, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:2:{i:0;s:10:"polylang-3";i:1;s:22:"zerif_clients-widget-3";}s:9:"sidebar-1";a:0:{}s:16:"sidebar-ourfocus";a:3:{i:0;s:17:"ctup-ads-widget-2";i:1;s:17:"ctup-ads-widget-3";i:2;s:17:"ctup-ads-widget-4";}s:20:"sidebar-testimonials";a:1:{i:0;s:21:"zerif_testim-widget-2";}s:15:"sidebar-aboutus";a:1:{i:0;s:6:"text-3";}s:15:"sidebar-ourteam";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:5:{i:1435582127;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1435582136;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1435588582;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1435603380;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(100, '_transient_random_seed', '2b4c93d8d390a8eeb424b14f1c2d7cda', 'yes'),
(106, '_site_transient_timeout_browser_dd6692949e0d9294737c50b22227942a', '1435754937', 'yes'),
(107, '_site_transient_browser_dd6692949e0d9294737c50b22227942a', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Safari";s:7:"version";s:5:"8.0.6";s:10:"update_url";s:28:"http://www.apple.com/safari/";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/safari.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/safari.png";s:15:"current_version";s:1:"5";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(108, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:20:"nbbourgoin@gmail.com";s:7:"version";s:5:"4.1.5";s:9:"timestamp";i:1435150157;}', 'yes'),
(115, '_transient_timeout_feed_1835d2eaaf967b5cddcf4dbccdcaeab9', '1435193345', 'no');
,
(117, '_transient_timeout_feed_mod_1835d2eaaf967b5cddcf4dbccdcaeab9', '1435193345', 'no'),
(118, '_transient_feed_mod_1835d2eaaf967b5cddcf4dbccdcaeab9', '1435150145', 'no'),
(127, 'db_upgraded', '', 'yes'),
(132, 'can_compress_scripts', '1', 'yes'),
(135, '_site_transient_timeout_available_translations', '1435161243', 'yes');
,
(137, 'recently_activated', 'a:1:{s:53:"kento-pricing-table-free/kento-pricing-table-free.php";i:1435307765;}', 'yes'),
(140, 'polylang', 'a:13:{s:7:"browser";i:1;s:7:"rewrite";i:0;s:12:"hide_default";i:0;s:10:"force_lang";i:1;s:13:"redirect_lang";i:0;s:13:"media_support";i:1;s:4:"sync";a:11:{i:0;s:10:"taxonomies";i:1;s:9:"post_meta";i:2;s:14:"comment_status";i:3;s:11:"ping_status";i:4;s:12:"sticky_posts";i:5;s:9:"post_date";i:6;s:11:"post_format";i:7;s:11:"post_parent";i:8;s:17:"_wp_page_template";i:9;s:10:"menu_order";i:10;s:13:"_thumbnail_id";}s:10:"post_types";a:0:{}s:10:"taxonomies";a:0:{}s:7:"domains";a:0:{}s:7:"version";s:5:"1.7.6";s:12:"default_lang";s:2:"fr";s:9:"nav_menus";a:1:{s:10:"zerif-lite";a:1:{s:7:"primary";a:4:{s:2:"fr";i:17;s:2:"en";i:17;s:2:"de";i:17;s:2:"es";i:17;}}}}', 'yes'),
(159, 'category_children', 'a:0:{}', 'yes'),
(162, 'widget_polylang', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:7:{s:5:"title";s:7:"Langues";s:8:"dropdown";i:1;s:10:"show_names";i:1;s:10:"show_flags";i:0;s:10:"force_home";i:0;s:12:"hide_current";i:0;s:22:"hide_if_no_translation";i:0;}}', 'yes'),
(167, '_site_transient_timeout_wporg_theme_feature_list', '1435163110', 'yes'),
(168, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(169, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1435152328;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:7:{i:0;s:10:"polylang-2";i:1;s:8:"search-2";i:2;s:14:"recent-posts-2";i:3;s:17:"recent-comments-2";i:4;s:10:"archives-2";i:5;s:12:"categories-2";i:6;s:6:"meta-2";}}}}', 'yes'),
(170, 'current_theme', 'Zerif Lite', 'yes'),
(171, 'theme_mods_zerif-lite', 'a:31:{i:0;b:0;s:20:"zerif_bigtitle_title";s:22:"Location Scooter Paris";s:16:"background_image";s:69:"http://localhost/LSP/wordpress/wp-content/uploads/2015/06/scooter.jpg";s:17:"background_repeat";s:9:"no-repeat";s:21:"background_attachment";s:6:"scroll";s:19:"zerif_bigtitle_show";s:0:"";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:17;}s:15:"zerif_copyright";s:302:"Copyright © 2015                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                location-scooter-paris.com &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Toutes les marques citées et articles sont la propriété exclusive de leurs propriétaires/auteurs.";s:23:"zerif_ourfocus_subtitle";s:29:"What makes this rent UNIQUE !";s:30:"zerif_bigtitle_redbutton_label";s:8:"Features";s:30:"zerif_bigtitle_greenbutton_url";s:37:"http://localhost/LSP/wordpress/#about";s:19:"zerif_aboutus_title";s:6:"Tarifs";s:22:"zerif_aboutus_subtitle";s:6:"Offres";s:26:"zerif_aboutus_biglefttitle";s:30:"Réservation Simple et Rapide ";s:18:"zerif_aboutus_text";s:0:"";s:27:"zerif_aboutus_feature1_text";s:0:"";s:28:"zerif_aboutus_feature1_title";s:0:"";s:25:"zerif_aboutus_feature1_nr";s:0:"";s:28:"zerif_aboutus_feature2_title";s:0:"";s:25:"zerif_aboutus_feature2_nr";s:0:"";s:28:"zerif_aboutus_feature3_title";s:0:"";s:25:"zerif_aboutus_feature3_nr";s:0:"";s:28:"zerif_aboutus_feature4_title";s:0:"";s:25:"zerif_aboutus_feature4_nr";s:0:"";s:21:"background_position_x";s:6:"center";s:23:"zerif_bottomribbon_text";s:0:"";s:30:"zerif_bottomribbon_buttonlabel";s:0:"";s:22:"zerif_ribbonright_text";s:0:"";s:29:"zerif_ribbonright_buttonlabel";s:0:"";s:23:"zerif_disable_preloader";s:0:"";s:27:"zerif_disable_smooth_scroll";s:0:"";}', 'yes'),
(172, 'theme_switched', '', 'yes'),
(174, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(176, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(177, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(178, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(180, 'widget_zerif_clients-widget', 'a:3:{i:1;a:0:{}s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(182, 'widget_zerif_team-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(183, 'widget_zerif_testim-widget', 'a:3:{i:1;a:0:{}i:2;a:5:{s:4:"text";s:89:"[easy-pricing-table id="47"]\r\n<?php echo do_shortcode(''[easy-pricing-table id="47"]''); ?>";s:5:"title";s:4:"Test";s:7:"details";s:4:"Test";s:9:"image_uri";s:0:"";s:4:"link";s:4:"Test";}s:12:"_multiwidget";i:1;}', 'yes'),
(191, '_site_transient_timeout_browser_9983c009c154009bf7e213983eb2708d', '1435759063', 'yes'),
(192, '_site_transient_browser_9983c009c154009bf7e213983eb2708d', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"39.0.2171.95";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(194, 'sccss_settings', 'a:1:{s:13:"sccss-content";s:227:"/* Enter Your Custom CSS Here */\r\n\r\n\r\n.about-us {\r\nbackground: #00CCFF;\r\n}\r\n\r\n.testimonial{\r\n  background: #00CCFF;\r\n}\r\n\r\n#footer{\r\n  background: #00CCFF;\r\n}\r\n\r\n#footer > div > div.col-md-3.copyright{\r\nbackground: #FFFFFF;\r\n}\r\n";}', 'yes'),
(214, 'top_reauthorize', '1435159106', 'yes'),
(215, 'top_opt_tweet_type', 'title', 'yes'),
(216, 'top_opt_post_with_image', 'off', 'yes'),
(217, 'top_opt_bitly_user', '', 'yes'),
(218, 'top_opt_bitly_key', '', 'yes'),
(219, 'top_opt_post_type_custom_field', '', 'yes'),
(220, 'top_opt_add_text', '', 'yes'),
(221, 'top_opt_add_text_at', 'beginning', 'yes'),
(222, 'top_opt_include_link', 'true', 'yes'),
(223, 'top_opt_custom_url_option', 'off', 'yes'),
(224, 'top_opt_use_url_shortner', 'off', 'yes'),
(225, 'top_opt_ga_tracking', 'on', 'yes'),
(226, 'top_opt_url_shortner', 'is.gd', 'yes'),
(227, 'top_opt_custom_hashtag_option', 'nohashtag', 'yes'),
(228, 'top_opt_hashtags', '', 'yes'),
(229, 'top_opt_hashtag_length', '0', 'yes'),
(230, 'top_opt_custom_hashtag_field', '', 'yes'),
(231, 'top_opt_interval', '8', 'yes'),
(232, 'top_opt_age_limit', '30', 'yes'),
(233, 'top_opt_max_age_limit', '0', 'yes'),
(234, 'top_opt_no_of_tweet', '1', 'yes'),
(235, 'top_opt_post_type', 'post', 'yes'),
(236, 'top_opt_post_type_value', 'post', 'yes'),
(237, 'top_opt_custom_url_field', '', 'yes'),
(238, 'top_opt_omit_cats', '', 'yes'),
(239, 'cwp_topnew_active_status', 'false', 'yes'),
(240, 'cwp_topnew_notice', '', 'yes'),
(241, 'top_opt_excluded_post', '', 'yes'),
(242, 'top_opt_tweet-multiple-times', 'off', 'yes'),
(243, 'cwp_top_logged_in_users', '', 'yes'),
(244, 'top_fb_token', '', 'yes'),
(245, 'top_opt_post_formats', 'a:0:{}', 'yes'),
(246, 'cwp_top_global_schedule', 'a:0:{}', 'yes'),
(249, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(270, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.2.2.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.2.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1435565304;s:15:"version_checked";s:5:"4.2.2";s:12:"translations";a:0:{}}', 'yes'),
(374, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1435317841', 'yes'),
(375, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5223";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3269";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3204";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2734";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2503";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2001";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1906";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1836";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1787";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1769";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1738";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1728";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1621";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1419";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1357";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1299";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1207";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1165";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1150";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1021";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"975";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"942";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"932";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"896";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"865";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"853";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"806";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"791";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"767";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"743";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"738";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"736";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"695";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"687";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"682";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"669";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"649";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"645";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"640";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"639";}}', 'yes'),
(395, 'dh_ptp_allow_tracking', 'no', 'yes'),
(397, 'dh_ptp_mailing_list', 'no', 'yes'),
(602, '_transient_pll_languages_list', 'a:4:{i:0;a:20:{s:7:"term_id";i:2;s:4:"name";s:9:"Français";s:4:"slug";s:2:"fr";s:10:"term_group";s:1:"1";s:16:"term_taxonomy_id";i:2;s:8:"taxonomy";s:8:"language";s:11:"description";s:5:"fr_FR";s:6:"parent";s:1:"0";s:5:"count";i:2;s:10:"tl_term_id";i:3;s:19:"tl_term_taxonomy_id";i:3;s:8:"tl_count";i:1;s:6:"locale";R:9;s:6:"is_rtl";i:0;s:8:"flag_url";s:74:"http://localhost/LSP/wordpress/wp-content/plugins/polylang/flags/fr_FR.png";s:4:"flag";s:798:"<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAGzSURBVHjaYiyeepkBBv79+Zfnx/f379+fP38CyT9//jAyMiq5GP77wvDnJ8MfoAIGBoAAYgGqC7STApL///3/9++/pCTv////Qdz/QO4/IMna0vf/z+9/v379//37bUUTQACBNDD8Z/j87fffvyAVX79+/Q8GQDbQeKA9fM+e/Pv18/+vnwzCIkBLAAKQOAY5AIAwCEv4/4PddNUm3ji0QJyxW3rgzE0iLfqDGr2oYuu0l54AYvnz5x9Q6d+/QPQfyAQqAin9B3EOyG1A1UDj//36zfjr1y8GBoAAFI9BDgAwCMIw+P8Ho3GDO6XQ0l4MN8b2kUwYaLszqgKM/KHcDXwBxAJUD3TJ779A8h9Q5D8SAHoARP36+Rfo41+/mcA2AAQQy49ff0Cu//MPpAeI/0FdA1QNYYNVA/3wmwEYVgwMAAHE8uPHH5BqoD1//gJJLADoJKDS378Z//wFhhJAALF8A3rizz8uTmYg788fJkj4QOKREQyYxSWBhjEC/fcXZANAALF8+/anbcHlHz9+ffvx58uPX9KckkCn/gby/wLd8uvHjx96k+cD1UGiGQgAAgwA7q17ZpsMdUQAAAAASUVORK5CYII=" title="Français" alt="Français" />";s:8:"home_url";s:39:"http://localhost/LSP/wordpress/?lang=fr";s:10:"search_url";s:39:"http://localhost/LSP/wordpress/?lang=fr";s:4:"host";N;s:5:"mo_id";s:1:"5";}i:1;a:20:{s:7:"term_id";i:19;s:4:"name";s:7:"English";s:4:"slug";s:2:"en";s:10:"term_group";s:1:"2";s:16:"term_taxonomy_id";i:19;s:8:"taxonomy";s:8:"language";s:11:"description";s:5:"en_GB";s:6:"parent";s:1:"0";s:5:"count";i:2;s:10:"tl_term_id";i:20;s:19:"tl_term_taxonomy_id";i:20;s:8:"tl_count";i:1;s:6:"locale";R:29;s:6:"is_rtl";i:0;s:8:"flag_url";s:74:"http://localhost/LSP/wordpress/wp-content/plugins/polylang/flags/en_GB.png";s:4:"flag";s:866:"<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAflJREFUeNpinDRzn5qN3uFDt16+YWBg+Pv339+KGN0rbVP+//2rW5tf0Hfy/2+mr99+yKpyOl3Ydt8njEWIn8f9zj639NC7j78eP//8739GVUUhNUNuhl8//ysKeZrJ/v7z10Zb2PTQTIY1XZO2Xmfad+f7XgkXxuUrVB6cjPVXef78JyMjA8PFuwyX7gAZj97+T2e9o3d4BWNp84K1NzubTjAB3fH0+fv6N3qP/ir9bW6ozNQCijB8/8zw/TuQ7r4/ndvN5mZgkpPXiis3Pv34+ZPh5t23//79Rwehof/9/NDEgMrOXHvJcrllgpoRN8PFOwy/fzP8+gUlgZI/f/5xcPj/69e/37//AUX+/mXRkN555gsOG2xt/5hZQMwF4r9///75++f3nz8nr75gSms82jfvQnT6zqvXPjC8e/srJQHo9P9fvwNtAHmG4f8zZ6dDc3bIyM2LTNlsbtfM9OPHH3FhtqUz3eXX9H+cOy9ZMB2o6t/Pn0DHMPz/b+2wXGTvPlPGFxdcD+mZyjP8+8MUE6sa7a/xo6Pykn1s4zdzIZ6///8zMGpKM2pKAB0jqy4UE7/msKat6Jw5mafrsxNtWZ6/fjvNLW29qv25pQd///n+5+/fxDDVbcc//P/zx/36m5Ub9zL8+7t66yEROcHK7q5bldMBAgwADcRBCuVLfoEAAAAASUVORK5CYII=" title="English" alt="English" />";s:8:"home_url";s:39:"http://localhost/LSP/wordpress/?lang=en";s:10:"search_url";s:39:"http://localhost/LSP/wordpress/?lang=en";s:4:"host";N;s:5:"mo_id";s:2:"23";}i:2;a:20:{s:7:"term_id";i:22;s:4:"name";s:7:"Deutsch";s:4:"slug";s:2:"de";s:10:"term_group";s:1:"3";s:16:"term_taxonomy_id";i:22;s:8:"taxonomy";s:8:"language";s:11:"description";s:5:"de_DE";s:6:"parent";s:1:"0";s:5:"count";i:1;s:10:"tl_term_id";i:23;s:19:"tl_term_taxonomy_id";i:23;s:8:"tl_count";i:1;s:6:"locale";R:49;s:6:"is_rtl";i:0;s:8:"flag_url";s:74:"http://localhost/LSP/wordpress/wp-content/plugins/polylang/flags/de_DE.png";s:4:"flag";s:794:"<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAGzSURBVHjaYvTxcWb4+53h3z8GZpZff/79+v3n/7/fDAz/GHAAgABi+f37e3FxOZD1Dwz+/v3z9y+E/AMFv3//+Qumfv9et241QACxMDExAVWfOHkJJAEW/gUEP0EQDn78+AHE/gFOQJUAAcQiy8Ag8O+fLFj1n1+/QDp+/gQioK7fP378+vkDqOH39x9A/RJ/gE5lAAhAYhzcAACCQBDkgRXRjP034R0IaDTZTFZn0DItot37S94KLOINerEcI7aKHAHE8v/3r/9//zIA1f36/R+o4tevf1ANYNVA9P07RD9IJQMDQACxADHD3z8Ig4GMHz+AqqHagKp//fwLVA0U//v7LwMDQACx/LZiYFD7/5/53/+///79BqK/EMZ/UPACSYa/v/8DyX9A0oTxx2EGgABi+a/H8F/m339BoCoQ+g8kgRaCQvgPJJiBYmAuw39hxn+uDAABxMLwi+E/0PusRkwMvxhBGoDkH4b/v/+D2EDyz///QB1/QLb8+sP0lQEggFh+vGXYM2/SP6A2Zoaf30Ex/J+PgekHwz9gQDAz/P0FYrAyMfz7wcDAzPDtFwNAgAEAd3SIyRitX1gAAAAASUVORK5CYII=" title="Deutsch" alt="Deutsch" />";s:8:"home_url";s:39:"http://localhost/LSP/wordpress/?lang=de";s:10:"search_url";s:39:"http://localhost/LSP/wordpress/?lang=de";s:4:"host";N;s:5:"mo_id";s:2:"24";}i:3;a:20:{s:7:"term_id";i:25;s:4:"name";s:8:"Español";s:4:"slug";s:2:"es";s:10:"term_group";s:1:"4";s:16:"term_taxonomy_id";i:25;s:8:"taxonomy";s:8:"language";s:11:"description";s:5:"es_ES";s:6:"parent";s:1:"0";s:5:"count";i:2;s:10:"tl_term_id";i:26;s:19:"tl_term_taxonomy_id";i:26;s:8:"tl_count";i:1;s:6:"locale";R:69;s:6:"is_rtl";i:0;s:8:"flag_url";s:74:"http://localhost/LSP/wordpress/wp-content/plugins/polylang/flags/es_ES.png";s:4:"flag";s:696:"<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFnSURBVHjaYvzPgAD/UNlYEUAAmuTYAAAQhAEYqF/zFbe50RZ1cMmS9TLi0pJLRjZohAMTGFUN9HdnHgEE1sDw//+Tp0ClINW/f0NIKPoFJH/9//ULyGaUlQXaABBALAx/Gf4zAt31F4i+ffj3/cN/XrFfzOx//v///f//LzACM/79ZmD8/e8TA0AAMYHdDVT958vXP38nMDB0s3x94/Tj5y+YahhiAKLfQKUAAcQEdtJfoDHMF2L+vPzDmFXLelf551tGFOOhev4A/QgQQExgHwAd8IdFT/Wz6j+GhlpmXSOW/2z///8Eq/sJ18Dw/zdQA0AAMQExxJjjdy9x2/76EfLz4MXdP/i+wsyGkkA3Aw3984cBIIAYfzIwMKel/bt3jwEaLNAwgZIQxp/fDH/+MqqovL14ESCAWICeZvr9h0FSEhSgwBgAygFDEMT+wwAhgQgc4kAEVAwQQIxfUSMSTxxDAECAAQAJWke8v4u1tAAAAABJRU5ErkJggg==" title="Español" alt="Español" />";s:8:"home_url";s:39:"http://localhost/LSP/wordpress/?lang=es";s:10:"search_url";s:39:"http://localhost/LSP/wordpress/?lang=es";s:4:"host";N;s:5:"mo_id";s:2:"25";}}', 'yes'),
(620, '_transient_is_multi_author', '0', 'yes'),
(621, '_transient_zerif_categories', '1', 'yes'),
(624, '_site_transient_timeout_theme_roots', '1435567101', 'yes'),
(625, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:10:"zerif-lite";s:7:"/themes";}', 'yes'),
(626, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1435565308;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";s:10:"zerif-lite";s:7:"1.8.2.1";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.2.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.4.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.1.5.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(627, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1435565306;s:8:"response";a:1:{s:37:"login-customizer/login-customizer.php";O:8:"stdClass":6:{s:2:"id";s:5:"55995";s:4:"slug";s:16:"login-customizer";s:6:"plugin";s:37:"login-customizer/login-customizer.php";s:11:"new_version";s:5:"1.0.3";s:3:"url";s:47:"https://wordpress.org/plugins/login-customizer/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/login-customizer.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.2.zip";}s:44:"easy-pricing-tables/pricing-table-plugin.php";O:8:"stdClass":6:{s:2:"id";s:5:"43910";s:4:"slug";s:19:"easy-pricing-tables";s:6:"plugin";s:44:"easy-pricing-tables/pricing-table-plugin.php";s:11:"new_version";s:5:"2.0.1";s:3:"url";s:50:"https://wordpress.org/plugins/easy-pricing-tables/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/easy-pricing-tables.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:21:"polylang/polylang.php";O:8:"stdClass":6:{s:2:"id";s:5:"25780";s:4:"slug";s:8:"polylang";s:6:"plugin";s:21:"polylang/polylang.php";s:11:"new_version";s:5:"1.7.6";s:3:"url";s:39:"https://wordpress.org/plugins/polylang/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/polylang.1.7.6.zip";}s:41:"dk-pricr-responsive-pricing-table/rpt.php";O:8:"stdClass":6:{s:2:"id";s:5:"54008";s:4:"slug";s:33:"dk-pricr-responsive-pricing-table";s:6:"plugin";s:41:"dk-pricr-responsive-pricing-table/rpt.php";s:11:"new_version";s:5:"4.1.1";s:3:"url";s:64:"https://wordpress.org/plugins/dk-pricr-responsive-pricing-table/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/dk-pricr-responsive-pricing-table.zip";}s:33:"tweet-old-post/tweet-old-post.php";O:8:"stdClass":6:{s:2:"id";s:5:"11661";s:4:"slug";s:14:"tweet-old-post";s:6:"plugin";s:33:"tweet-old-post/tweet-old-post.php";s:11:"new_version";s:5:"7.0.6";s:3:"url";s:45:"https://wordpress.org/plugins/tweet-old-post/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/tweet-old-post.zip";}s:39:"simple-custom-css/simple-custom-css.php";O:8:"stdClass":7:{s:2:"id";s:5:"43065";s:4:"slug";s:17:"simple-custom-css";s:6:"plugin";s:39:"simple-custom-css/simple-custom-css.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:48:"https://wordpress.org/plugins/simple-custom-css/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/simple-custom-css.zip";s:14:"upgrade_notice";s:92:"Tested for compatibility with WP 4.1.  Improved architecture to reduce the number of queries";}}}', 'yes'),
(628, '_transient_timeout_rop_remote_calls', '1435652319', 'no'),
(629, '_transient_rop_remote_calls', 'done', 'no'),
(630, '_transient_timeout_feed_66a70e9599b658d5cc038e8074597e7c', '1435609122', 'no');
;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(632, '_transient_timeout_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1435609122', 'no'),
(633, '_transient_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1435565922', 'no'),
(634, '_transient_timeout_feed_96281909e104f3c547a3bba0b6d36ad5', '1435609122', 'no');
;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(636, '_transient_timeout_feed_mod_96281909e104f3c547a3bba0b6d36ad5', '1435609122', 'no'),
(637, '_transient_feed_mod_96281909e104f3c547a3bba0b6d36ad5', '1435565922', 'no'),
(638, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1435609124', 'no'),
(639, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 29 Jun 2015 08:02:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:137:"Wordfence Security is a free enterprise class security and performance plugin that makes your site up to 50 times faster and more secure.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast&#039;s WordPress SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:28:"Your WordPress, Streamlined.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WPtouch Mobile Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wptouch/#post-5468";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 May 2008 04:58:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5468@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:67:"Make your WordPress website mobile-friendly with just a few clicks.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"BraveNewCode Inc.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"MailPoet Newsletters";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wysija-newsletters/#post-32629";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Dec 2011 17:09:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"32629@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:143:"Send newsletters post notifications or autoresponders from WordPress easily, and beautifully. Start to capture subscribers with our widget now.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"MailPoet Staff";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"EWWW Image Optimizer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/ewww-image-optimizer/#post-38780";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Jun 2012 19:30:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38780@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Reduce file sizes for images in WordPress including NextGEN, GRAND FlAGallery and more using lossless/lossy methods and image format conversion.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"nosilver4u";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:23:"MailChimp for WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/mailchimp-for-wp/#post-54377";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 10 Jun 2013 17:32:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"54377@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"The best MailChimp plugin to get more email subscribers. Easily add MailChimp sign-up forms and sign-up checkboxes to your WordPress site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Danny van Kooten";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Broken Link Checker";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/broken-link-checker/#post-2441";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 08 Oct 2007 21:35:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2441@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"This plugin will check your posts, comments and other content for broken links and missing images, and notify you if any are found.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Janis Elsts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google Analyticator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/google-analyticator/#post-130";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"130@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:129:"Easily view your Google Analytics and real-time statistics inside WordPress! Makes it super simple to add your tracking code too.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"cavemonkey50";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Displays Google Analytics reports and real-time statistics in your WordPress Dashboard. Inserts the latest tracking code in every page of your site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"Contact Form DB";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"https://wordpress.org/plugins/contact-form-7-to-database-extension/#post-19767";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 02 Aug 2010 02:24:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"19767@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:102:"Saves submitted form data to the database. Export the data to a file or use short codes to display it.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Michael Simpson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:5:"Types";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wordpress.org/plugins/types/#post-29018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 04 Aug 2011 09:15:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29018@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"The complete and reliable plugin for managing custom post types, custom taxonomies and custom fields.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"brucepearson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:13:"Photo Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/photo-gallery/#post-63299";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 27 Jan 2014 15:58:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"63299@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:143:"Photo Gallery is an advanced plugin with a list of tools and options for adding and editing images for different views. It is fully responsive.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"webdorado";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"49521@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Easy to use WordPress slider plugin. Create SEO optimised responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 12 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Ninja Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/ninja-forms/#post-33147";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Dec 2011 18:11:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"33147@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:142:"Forms created with a simple drag and drop interface. Contact forms, Email collection forms, or any other form you want on your WordPress site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"kstover";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Google Maps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/wp-google-maps/#post-34206";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 25 Jan 2012 06:23:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"34206@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"The easiest to use Google maps plugin! Create a custom Google map with high quality markers containing categories, descriptions, images and links.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"WPGMaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"UpdraftPlus Backup and Restoration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Post Types Order";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/post-types-order/#post-20598";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 04 Sep 2010 14:50:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"20598@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:128:"Post Order and custom Post Type Objects (posts, any custom post types) using a Drag and Drop Sortable JavaScript AJAX interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"nsp-code";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"The Events Calendar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/plugins/the-events-calendar/#post-14790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 16 Dec 2009 21:58:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"14790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:128:"The Events Calendar is a carefully crafted, extensible plugin that lets you easily share your events. Beautiful. Solid. Awesome.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Peter Chester";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Mon, 29 Jun 2015 08:18:44 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Mon, 29 Jun 2015 08:37:52 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Mon, 29 Jun 2015 08:02:52 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130911020210";}', 'no'),
(640, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1435609124', 'no'),
(641, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1435565924', 'no'),
(642, '_transient_timeout_plugin_slugs', '1435652324', 'no'),
(643, '_transient_plugin_slugs', 'a:8:{i:0;s:19:"akismet/akismet.php";i:1;s:37:"login-customizer/login-customizer.php";i:2;s:44:"easy-pricing-tables/pricing-table-plugin.php";i:3;s:9:"hello.php";i:4;s:21:"polylang/polylang.php";i:5;s:41:"dk-pricr-responsive-pricing-table/rpt.php";i:6;s:33:"tweet-old-post/tweet-old-post.php";i:7;s:39:"simple-custom-css/simple-custom-css.php";}', 'no'),
(644, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1435609124', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4, 9, '_wp_attached_file', '2015/06/paris-moto.jpg'),
(5, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:1051;s:4:"file";s:22:"2015/06/paris-moto.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"paris-moto-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"paris-moto-300x210.jpg";s:5:"width";i:300;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"paris-moto-1024x717.jpg";s:5:"width";i:1024;s:6:"height";i:717;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"paris-moto-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:20:"post-thumbnail-large";a:4:{s:4:"file";s:22:"paris-moto-750x500.jpg";s:5:"width";i:750;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:26:"post-thumbnail-large-table";a:4:{s:4:"file";s:22:"paris-moto-600x300.jpg";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:22:"paris-moto-400x200.jpg";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:22:"paris-moto-285x214.jpg";s:5:"width";i:285;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:22:"paris-moto-174x174.jpg";s:5:"width";i:174;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:6.29999999999999982236431605997495353221893310546875;s:6:"credit";s:4:"JMTL";s:6:"camera";s:8:"NIKON D3";s:7:"caption";s:113:"Autour de 12:50h, ˆ l''intersection de la rue Berri et du boulevard RenŽ-LŽvesque, un virage qui a mal tournŽ.";s:17:"created_timestamp";i:1223716522;s:9:"copyright";s:20:"Journal de MontrŽal";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:19:"Accident automobile";s:11:"orientation";i:1;}}'),
(6, 9, '_wp_attachment_is_custom_background', 'zerif-lite'),
(7, 10, '_edit_last', '1'),
(8, 10, '_edit_lock', '1435225872:1'),
(20, 13, '_menu_item_type', 'post_type'),
(21, 13, '_menu_item_menu_item_parent', '0'),
(22, 13, '_menu_item_object_id', '10'),
(23, 13, '_menu_item_object', 'page'),
(24, 13, '_menu_item_target', ''),
(25, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(26, 13, '_menu_item_xfn', ''),
(27, 13, '_menu_item_url', ''),
(30, 14, '_edit_last', '1'),
(31, 14, '_edit_lock', '1435160041:1'),
(41, 17, '_edit_last', '1'),
(50, 17, '_edit_lock', '1435160076:1'),
(52, 20, '_edit_last', '1'),
(61, 20, '_edit_lock', '1435160099:1'),
(62, 26, '_menu_item_type', 'custom'),
(63, 26, '_menu_item_menu_item_parent', '0'),
(64, 26, '_menu_item_object_id', '26'),
(65, 26, '_menu_item_object', 'custom'),
(66, 26, '_menu_item_target', ''),
(67, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 26, '_menu_item_xfn', ''),
(69, 26, '_menu_item_url', '#pll_switcher'),
(71, 26, '_pll_menu_item', 'a:5:{s:22:"hide_if_no_translation";i:0;s:12:"hide_current";i:0;s:10:"force_home";i:0;s:10:"show_flags";i:1;s:10:"show_names";i:0;}'),
(73, 27, '_edit_last', '1'),
(83, 27, '_edit_lock', '1435224781:1'),
(85, 30, '_edit_last', '1'),
(96, 30, '_edit_lock', '1435224802:1'),
(98, 33, '_edit_last', '1'),
(110, 33, '_edit_lock', '1435224846:1'),
(114, 2, '_edit_lock', '1435225849:1'),
(115, 2, '_wp_trash_meta_status', 'publish'),
(116, 2, '_wp_trash_meta_time', '1435226003'),
(117, 2, '_wp_page_template', 'default'),
(118, 10, '_wp_trash_meta_status', 'publish'),
(119, 10, '_wp_trash_meta_time', '1435226026'),
(120, 10, '_wp_page_template', 'template-fullwidth.php'),
(121, 27, '_wp_page_template', 'template-fullwidth.php'),
(122, 30, '_wp_page_template', 'template-fullwidth.php'),
(123, 33, '_wp_page_template', 'template-fullwidth.php'),
(124, 20, '_wp_trash_meta_status', 'publish'),
(125, 20, '_wp_trash_meta_time', '1435226043'),
(126, 20, '_wp_page_template', 'default'),
(127, 17, '_wp_trash_meta_status', 'publish'),
(128, 17, '_wp_trash_meta_time', '1435226048'),
(129, 17, '_wp_page_template', 'default'),
(131, 37, '_edit_last', '1'),
(132, 37, '_wp_page_template', 'default'),
(133, 37, '_edit_lock', '1435225996:1'),
(134, 14, '_wp_page_template', 'default'),
(137, 40, '_edit_last', '1'),
(138, 40, '_wp_page_template', 'default'),
(139, 40, '_edit_lock', '1435226043:1'),
(140, 39, '_wp_page_template', 'default'),
(143, 43, '_edit_last', '1'),
(144, 43, '_edit_lock', '1435308518:1'),
(145, 43, '_rpt_plan_group', 'a:3:{i:0;a:21:{s:16:"_rpt_head_header";s:0:"";s:10:"_rpt_title";s:4:"Test";s:13:"_rpt_subtitle";s:4:"test";s:16:"_rpt_description";s:4:"test";s:10:"_rpt_price";s:4:"test";s:15:"_rpt_recurrence";s:3:"tes";s:12:"_rpt_icon_id";i:0;s:9:"_rpt_icon";b:0;s:16:"_rpt_recommended";b:0;s:9:"_rpt_free";b:0;s:20:"_rpt_features_header";s:0:"";s:13:"_rpt_features";s:20:"tesdtethetyhrtyhrthy";s:18:"_rpt_features_desc";s:0:"";s:18:"_rpt_button_header";s:0:"";s:13:"_rpt_btn_text";s:3:"Buy";s:13:"_rpt_btn_link";s:0:"";s:19:"_rpt_btn_custom_btn";s:0:"";s:23:"_rpt_custom_button_desc";s:0:"";s:17:"_rpt_styling_desc";s:0:"";s:10:"_rpt_color";s:7:"#9fdb80";s:15:"_rpt_sep_header";s:0:"";}i:1;a:21:{s:16:"_rpt_head_header";s:0:"";s:10:"_rpt_title";s:9:"ezrtgzerg";s:13:"_rpt_subtitle";s:8:"zegrzerg";s:16:"_rpt_description";s:6:"zergzg";s:10:"_rpt_price";s:8:"zergzerg";s:15:"_rpt_recurrence";s:7:"zefgzeg";s:12:"_rpt_icon_id";i:0;s:9:"_rpt_icon";b:0;s:16:"_rpt_recommended";b:0;s:9:"_rpt_free";b:0;s:20:"_rpt_features_header";s:0:"";s:13:"_rpt_features";s:8:"fzerfzer";s:18:"_rpt_features_desc";s:0:"";s:18:"_rpt_button_header";s:0:"";s:13:"_rpt_btn_text";s:8:"fzerfaer";s:13:"_rpt_btn_link";s:4:"zefg";s:19:"_rpt_btn_custom_btn";s:8:"zerfzerf";s:23:"_rpt_custom_button_desc";s:0:"";s:17:"_rpt_styling_desc";s:0:"";s:10:"_rpt_color";s:7:"#9fdb80";s:15:"_rpt_sep_header";s:0:"";}i:2;a:10:{s:10:"_rpt_title";s:8:"zerfzerf";s:13:"_rpt_subtitle";s:9:"fzerfzerf";s:16:"_rpt_description";s:7:"zefzerf";s:10:"_rpt_price";s:8:"fzerfzer";s:15:"_rpt_recurrence";s:9:"fzerfzerf";s:13:"_rpt_features";s:9:"ferzfzref";s:13:"_rpt_btn_text";s:5:"ferzf";s:13:"_rpt_btn_link";s:5:"ferzf";s:19:"_rpt_btn_custom_btn";s:4:"frez";s:10:"_rpt_color";s:7:"#9fdb80";}}'),
(146, 43, '_rpt_skin', 'basic'),
(147, 43, '_rpt_open_newwindow', 'currentwindow'),
(148, 43, '_rpt_title_fontsize', 'normal'),
(149, 43, '_rpt_subtitle_fontsize', 'normal'),
(150, 43, '_rpt_description_fontsize', 'normal'),
(151, 43, '_rpt_price_fontsize', 'normal'),
(152, 43, '_rpt_recurrence_fontsize', 'normal'),
(153, 43, '_rpt_button_fontsize', 'normal'),
(154, 43, '_rpt_features_fontsize', 'normal'),
(157, 45, '_edit_last', '1'),
(158, 45, '_edit_lock', '1435307614:1'),
(159, 45, 'wpt_column_width', '156'),
(160, 45, 'wpt_corner_radius', '34'),
(161, 45, 'wpt_corner_gradient', '50'),
(162, 45, 'wpt_style', 'style2'),
(163, 45, 'wpt_column_margin', '4'),
(164, 45, 'wpt_total_row', '6'),
(165, 45, 'wpt_total_column', '3'),
(166, 45, 'wpt_table_field', 'a:9:{i:13;s:3:"tes";i:23;s:3:"tes";i:33;s:3:"tes";i:14;s:0:"";i:24;s:0:"";i:34;s:0:"";i:15;s:0:"";i:25;s:0:"";i:35;s:0:"";}'),
(167, 45, 'wpt_table_field_header', 'a:3:{i:1;s:4:"Test";i:2;s:4:"test";i:3;s:4:"test";}'),
(168, 45, 'wpt_table_field_price', 'a:3:{i:1;s:4:"test";i:2;s:4:"test";i:3;s:3:"tes";}'),
(169, 45, 'wpt_table_column_color', 'a:3:{i:1;s:7:"#777777";i:2;s:7:"#eeee22";i:3;s:7:"#81d742";}'),
(170, 45, 'wpt_table_column_signup_text', 'a:3:{i:1;s:3:"tes";i:2;s:4:"test";i:3;s:4:"test";}'),
(171, 45, 'wpt_table_column_signup_url', 'a:3:{i:1;s:4:"test";i:2;s:4:"test";i:3;s:3:"ets";}'),
(172, 45, 'wpt_bg_img', 'http://localhost/LSP/wordpress/wp-content/plugins/kento-pricing-table-free/css/bg/wpt-bg-6.jpg'),
(173, 45, 'wpt_themes', 'default'),
(174, 45, 'wpt_featured_column', ''),
(175, 43, '_rpt_currency', 'Test'),
(178, 47, '_edit_last', '1'),
(179, 47, '_edit_lock', '1435331919:1'),
(181, 43, '_wp_trash_meta_status', 'publish'),
(182, 43, '_wp_trash_meta_time', '1435308964'),
(183, 47, '_wp_old_slug', 'test'),
(184, 51, '_wp_attached_file', '2015/06/scooter.jpg'),
(185, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:852;s:4:"file";s:19:"2015/06/scooter.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"scooter-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"scooter-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"scooter-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"scooter-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:20:"post-thumbnail-large";a:4:{s:4:"file";s:19:"scooter-750x500.jpg";s:5:"width";i:750;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:26:"post-thumbnail-large-table";a:4:{s:4:"file";s:19:"scooter-600x300.jpg";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:19:"scooter-400x200.jpg";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:19:"scooter-285x214.jpg";s:5:"width";i:285;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:19:"scooter-174x174.jpg";s:5:"width";i:174;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:1.399999999999999911182158029987476766109466552734375;s:6:"credit";s:0:"";s:6:"camera";s:17:"M9 Digital Camera";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1272135493;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:7:"0.00025";s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(186, 51, '_wp_attachment_is_custom_background', 'zerif-lite');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-06-24 12:48:42', '2015-06-24 12:48:42', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2015-06-24 12:48:42', '2015-06-24 12:48:42', '', 0, 'http://localhost/LSP/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2015-06-24 12:48:42', '2015-06-24 12:48:42', 'Voici un exemple de page. Elle est différente d''un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/LSP/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'trash', 'open', 'open', '', 'page-d-exemple', '', '', '2015-06-25 10:53:23', '2015-06-25 09:53:23', '', 0, 'http://localhost/LSP/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-06-24 13:48:57', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-06-24 13:48:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/LSP/wordpress/?p=3', 0, 'post', '', 0),
(9, 1, '2015-06-24 14:35:14', '2015-06-24 13:35:14', '', 'Accident automobile', 'Autour de 12:50h, ˆ l''intersection de la rue Berri et du boulevard RenŽ-LŽvesque, un virage qui a mal tournŽ.', 'inherit', 'open', 'open', '', 'accident-automobile', '', '', '2015-06-24 14:35:14', '2015-06-24 13:35:14', '', 0, 'http://localhost/LSP/wordpress/wp-content/uploads/2015/06/paris-moto.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2015-06-25 10:36:27', '2015-06-24 14:36:42', '', 'A propos', '', 'trash', 'open', 'open', '', 'a-propos', '', '', '2015-06-25 10:53:46', '2015-06-25 09:53:46', '', 14, 'http://localhost/LSP/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2015-06-24 15:36:42', '2015-06-24 14:36:42', '', 'A propos', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-06-24 15:36:42', '2015-06-24 14:36:42', '', 10, 'http://localhost/LSP/wordpress/?p=11', 0, 'revision', '', 0),
(13, 1, '2015-06-24 16:27:54', '2015-06-24 15:27:54', ' ', '', '120', 'publish', 'open', 'open', '', '13', '', '', '2015-06-25 10:43:16', '2015-06-25 09:43:16', '', 0, 'http://localhost/LSP/wordpress/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2015-06-25 10:55:20', '2015-06-24 15:35:02', '', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2015-06-24 16:35:02', '2015-06-24 15:35:02', '', 0, 'http://localhost/LSP/wordpress/?page_id=14', 0, 'page', '', 0),
(16, 1, '2015-06-24 16:35:02', '2015-06-24 15:35:02', '', 'About', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-06-24 16:35:02', '2015-06-24 15:35:02', '', 14, 'http://localhost/LSP/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2015-06-24 16:36:45', '2015-06-24 15:36:45', '', 'Über', '', 'trash', 'open', 'open', '', 'uber', '', '', '2015-06-25 10:54:08', '2015-06-25 09:54:08', '', 0, 'http://localhost/LSP/wordpress/?page_id=17', 0, 'page', '', 0),
(19, 1, '2015-06-24 16:36:45', '2015-06-24 15:36:45', '', 'Über', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-06-24 16:36:45', '2015-06-24 15:36:45', '', 17, 'http://localhost/LSP/wordpress/?p=19', 0, 'revision', '', 0),
(20, 1, '2015-06-24 16:37:09', '2015-06-24 15:37:09', '', 'Acerca de', '', 'trash', 'open', 'open', '', 'acerca-de', '', '', '2015-06-25 10:54:03', '2015-06-25 09:54:03', '', 0, 'http://localhost/LSP/wordpress/?page_id=20', 0, 'page', '', 0),
(22, 1, '2015-06-24 16:37:09', '2015-06-24 15:37:09', '', 'Acerca de', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-06-24 16:37:09', '2015-06-24 15:37:09', '', 20, 'http://localhost/LSP/wordpress/?p=22', 0, 'revision', '', 0),
(24, 1, '2015-06-25 10:23:21', '2015-06-25 09:23:21', 'a:1:{i:0;a:2:{i:0;s:0:"";i:1;s:0:"";}}', 'polylang_mo_22', '', 'publish', 'open', 'open', '', 'polylang_mo_22', '', '', '2015-06-25 10:23:21', '2015-06-25 09:23:21', '', 0, 'http://localhost/LSP/wordpress/?post_type=polylang_mo&p=24', 0, 'polylang_mo', '', 0),
(25, 1, '2015-06-25 10:23:41', '2015-06-25 09:23:41', 'a:1:{i:0;a:2:{i:0;s:0:"";i:1;s:0:"";}}', 'polylang_mo_25', '', 'publish', 'open', 'open', '', 'polylang_mo_25', '', '', '2015-06-25 10:23:41', '2015-06-25 09:23:41', '', 0, 'http://localhost/LSP/wordpress/?post_type=polylang_mo&p=25', 0, 'polylang_mo', '', 0),
(26, 1, '2015-06-25 10:33:49', '2015-06-25 09:33:49', '', 'Afficher le nom des langues', '', 'publish', 'open', 'open', '', 'liste-des-langues-2', '', '', '2015-06-25 10:43:16', '2015-06-25 09:43:16', '', 0, 'http://localhost/LSP/wordpress/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2015-06-25 10:36:27', '2015-06-25 09:35:21', '', 'About', '', 'publish', 'open', 'open', '', 'about-2', '', '', '2015-06-25 10:35:21', '2015-06-25 09:35:21', '', 0, 'http://localhost/LSP/wordpress/?page_id=27', 0, 'page', '', 0),
(29, 1, '2015-06-25 10:35:21', '2015-06-25 09:35:21', '', 'About', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2015-06-25 10:35:21', '2015-06-25 09:35:21', '', 27, 'http://localhost/LSP/wordpress/?p=29', 0, 'revision', '', 0),
(30, 1, '2015-06-25 10:36:27', '2015-06-25 09:35:37', '', 'Über', '', 'publish', 'open', 'open', '', 'uber-2', '', '', '2015-06-25 10:35:37', '2015-06-25 09:35:37', '', 0, 'http://localhost/LSP/wordpress/?page_id=30', 0, 'page', '', 0),
(32, 1, '2015-06-25 10:35:37', '2015-06-25 09:35:37', '', 'Über', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-06-25 10:35:37', '2015-06-25 09:35:37', '', 30, 'http://localhost/LSP/wordpress/?p=32', 0, 'revision', '', 0),
(33, 1, '2015-06-25 10:36:27', '2015-06-25 09:36:27', '', 'Acerca de', '', 'publish', 'open', 'open', '', 'acerca-de-2', '', '', '2015-06-25 10:36:27', '2015-06-25 09:36:27', '', 0, 'http://localhost/LSP/wordpress/?page_id=33', 0, 'page', '', 0),
(35, 1, '2015-06-25 10:36:27', '2015-06-25 09:36:27', '', 'Acerca de', '', 'inherit', 'open', 'open', '', '33-revision-v1', '', '', '2015-06-25 10:36:27', '2015-06-25 09:36:27', '', 33, 'http://localhost/LSP/wordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2015-06-25 10:53:23', '2015-06-25 09:53:23', 'Voici un exemple de page. Elle est différente d''un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/LSP/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-06-25 10:53:23', '2015-06-25 09:53:23', '', 2, 'http://localhost/LSP/wordpress/?p=36', 0, 'revision', '', 0),
(37, 1, '2015-06-25 10:55:20', '2015-06-25 09:55:20', '', 'About', '', 'publish', 'open', 'open', '', 'about-3', '', '', '2015-06-25 10:55:20', '2015-06-25 09:55:20', '', 0, 'http://localhost/LSP/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 1, '2015-06-25 10:55:20', '2015-06-25 09:55:20', '', 'About', '', 'inherit', 'open', 'open', '', '37-revision-v1', '', '', '2015-06-25 10:55:20', '2015-06-25 09:55:20', '', 37, 'http://localhost/LSP/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2015-06-25 10:56:18', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-06-25 10:55:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/LSP/wordpress/?page_id=39', 0, 'page', '', 0),
(40, 1, '2015-06-25 10:56:18', '2015-06-25 09:56:18', '', 'Acerca de', '', 'publish', 'open', 'open', '', 'acerca-de-3', '', '', '2015-06-25 10:56:18', '2015-06-25 09:56:18', '', 0, 'http://localhost/LSP/wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2015-06-25 10:56:18', '2015-06-25 09:56:18', '', 'Acerca de', '', 'inherit', 'open', 'open', '', '40-revision-v1', '', '', '2015-06-25 10:56:18', '2015-06-25 09:56:18', '', 40, 'http://localhost/LSP/wordpress/?p=41', 0, 'revision', '', 0),
(43, 1, '2015-06-26 09:26:05', '2015-06-26 08:26:05', '', 'Test', '', 'trash', 'closed', 'closed', '', 'test', '', '', '2015-06-26 09:56:04', '2015-06-26 08:56:04', '', 0, 'http://localhost/LSP/wordpress/?post_type=rpt_pricing_table&#038;p=43', 0, 'rpt_pricing_table', '', 0),
(45, 1, '2015-06-26 09:31:18', '2015-06-26 08:31:18', '', 'Test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2015-06-26 09:31:44', '2015-06-26 08:31:44', '', 0, 'http://localhost/LSP/wordpress/?post_type=wpt&#038;p=45', 0, 'wpt', '', 0),
(47, 1, '2015-06-26 09:54:15', '2015-06-26 08:54:15', '', 'Tarifs', '', 'publish', 'closed', 'closed', '', 'tarifs', '', '', '2015-06-26 16:18:39', '2015-06-26 15:18:39', '', 0, 'http://localhost/LSP/wordpress/?post_type=easy-pricing-table&#038;p=47', 0, 'easy-pricing-table', '', 0),
(48, 1, '2015-06-26 09:54:15', '2015-06-26 08:54:15', '', 'Test', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-06-26 09:54:15', '2015-06-26 08:54:15', '', 47, 'http://localhost/LSP/wordpress/?p=48', 0, 'revision', '', 0),
(49, 1, '2015-06-26 10:39:50', '2015-06-26 09:39:50', '', 'Tarifs', '', 'inherit', 'open', 'open', '', '47-autosave-v1', '', '', '2015-06-26 10:39:50', '2015-06-26 09:39:50', '', 47, 'http://localhost/LSP/wordpress/?p=49', 0, 'revision', '', 0),
(50, 1, '2015-06-26 10:55:50', '2015-06-26 09:55:50', '', 'Tarifs', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-06-26 10:55:50', '2015-06-26 09:55:50', '', 47, 'http://localhost/LSP/wordpress/?p=50', 0, 'revision', '', 0),
(51, 1, '2015-06-26 15:27:56', '2015-06-26 14:27:56', '', 'scooter', '', 'inherit', 'open', 'open', '', 'scooter', '', '', '2015-06-26 15:27:56', '2015-06-26 14:27:56', '', 0, 'http://localhost/LSP/wordpress/wp-content/uploads/2015/06/scooter.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Français', 'fr', 1),
(3, 'Français', 'pll_fr', 0),
(7, 'Non classé', 'non-classe-en', 0),
(11, 'Non classé', 'non-classe-de', 0),
(15, 'Non classé', 'non-classe-es', 0),
(17, 'Menu', 'menu', 0),
(19, 'English', 'en', 2),
(20, 'English', 'pll_en', 0),
(21, 'pll_558bc878dc8bf', 'pll_558bc878dc8bf', 0),
(22, 'Deutsch', 'de', 3),
(23, 'Deutsch', 'pll_de', 0),
(25, 'Español', 'es', 4),
(26, 'Español', 'pll_es', 0),
(28, 'pll_558bcb596d1b6', 'pll_558bcb596d1b6', 0),
(29, 'pll_558bd0089df07', 'pll_558bd0089df07', 0),
(30, 'pll_558bd04283d3b', 'pll_558bd04283d3b', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 21, 0),
(2, 2, 0),
(7, 20, 0),
(7, 21, 0),
(9, 2, 0),
(10, 2, 0),
(10, 18, 0),
(10, 28, 0),
(11, 21, 0),
(11, 23, 0),
(13, 17, 0),
(14, 2, 0),
(14, 29, 0),
(15, 21, 0),
(15, 26, 0),
(17, 2, 0),
(20, 2, 0),
(26, 17, 0),
(27, 19, 0),
(27, 28, 0),
(30, 22, 0),
(30, 28, 0),
(33, 25, 0),
(33, 28, 0),
(37, 19, 0),
(37, 29, 0),
(39, 22, 0),
(39, 30, 0),
(40, 25, 0),
(40, 30, 0),
(51, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'language', 'a:2:{s:6:"locale";s:5:"fr_FR";s:3:"rtl";i:0;}', 0, 2),
(3, 3, 'term_language', '', 0, 1),
(7, 7, 'category', '', 0, 0),
(11, 11, 'category', '', 0, 0),
(15, 15, 'category', '', 0, 0),
(17, 17, 'nav_menu', '', 0, 2),
(19, 19, 'language', 'a:2:{s:6:"locale";s:5:"en_GB";s:3:"rtl";i:0;}', 0, 2),
(20, 20, 'term_language', '', 0, 1),
(21, 21, 'term_translations', 'a:4:{s:2:"en";i:7;s:2:"fr";i:1;s:2:"de";i:11;s:2:"es";i:15;}', 0, 4),
(22, 22, 'language', 'a:2:{s:6:"locale";s:5:"de_DE";s:3:"rtl";i:0;}', 0, 1),
(23, 23, 'term_language', '', 0, 1),
(25, 25, 'language', 'a:2:{s:6:"locale";s:5:"es_ES";s:3:"rtl";i:0;}', 0, 2),
(26, 26, 'term_language', '', 0, 1),
(28, 28, 'post_translations', 'a:4:{s:2:"fr";i:10;s:2:"en";i:27;s:2:"de";i:30;s:2:"es";i:33;}', 0, 4),
(29, 29, 'post_translations', 'a:2:{s:2:"en";i:37;s:2:"fr";i:14;}', 0, 2),
(30, 30, 'post_translations', 'a:2:{s:2:"es";i:40;s:2:"de";i:39;}', 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'LSP'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:7:{s:64:"1ed0c5209d6e26a7d5eb0a8c34b741a7a32fa6a54fdeffcb7eba7a17c28ccd30";a:4:{s:10:"expiration";i:1436359735;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/600.6.3 (KHTML, like Gecko) Version/8.0.6 Safari/600.6.3";s:5:"login";i:1435150135;}s:64:"a74b4c1602c4ac97bd5bed576f96b4f6cc46c309e8c34f0a20c0854551c6dd4f";a:4:{s:10:"expiration";i:1436360953;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36";s:5:"login";i:1435151353;}s:64:"b0ba1248bda04b57ec91a425d2b1ea0ce01acb27ed3f6da89d9dce5859b773f2";a:4:{s:10:"expiration";i:1435327062;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36";s:5:"login";i:1435154262;}s:64:"a8c642bae41d06d976fb5b5725425113a94b2f041a337e5ab584a98e1faed392";a:4:{s:10:"expiration";i:1435327063;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36";s:5:"login";i:1435154263;}s:64:"0769252132b94880f86cb406578058e62e57299e858f6db1dae3b9d3dc188100";a:4:{s:10:"expiration";i:1435327083;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36";s:5:"login";i:1435154283;}s:64:"adf467514d91bcf065e53be8ef558852d07e1df074dc24d92306f5a5e5252fc6";a:4:{s:10:"expiration";i:1435392002;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36";s:5:"login";i:1435219202;}s:64:"337d580cb1d23580cec635d792cf7e70aed4ba15076739fb7eda53ed639003c1";a:4:{s:10:"expiration";i:1436515505;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36";s:5:"login";i:1435305905;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1435153026'),
(18, 1, 'pll_filter_content', 'fr'),
(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(21, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(22, 1, 'nav_menu_recently_edited', '17'),
(23, 1, 'pll_strings_per_page', '10'),
(24, 1, 'closedpostboxes_rpt_pricing_table', 'a:2:{i:0;s:17:"_rpt_help_metabox";i:1;s:16:"_rpt_pro_metabox";}'),
(25, 1, 'metaboxhidden_rpt_pricing_table', 'a:1:{i:0;s:7:"slugdiv";}'),
(26, 1, 'meta-box-order_easy-pricing-table', 'a:3:{s:4:"side";s:97:"dh_ptp_banner_metabox,dh_ptp_banner_quick_link_metabox,dh_ptp_banner_review_box_metabox,submitdiv";s:6:"normal";s:46:"1_dh_ptp_settings_metabox,revisionsdiv,slugdiv";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_easy-pricing-table', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lsp', '$P$B85sszPcpdjzHNpncUMYH0BNzVM8pW0', 'lsp', 'nbbourgoin@gmail.com', '', '2015-06-24 12:48:42', '', 0, 'LSP');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`), ADD KEY `post_name` (`post_name`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=646;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
