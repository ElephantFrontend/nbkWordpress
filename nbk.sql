-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 09 2018 г., 14:21
-- Версия сервера: 5.6.31
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nbk`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-18 11:17:25', '2018-07-18 08:17:25', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://nbkwordpress', 'yes'),
(2, 'home', 'http://nbkwordpress', 'yes'),
(3, 'blogname', 'NBK Ukraine', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'i.artuh@softvel.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:33:"acf-qtranslate/acf-qtranslate.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:22:"cyr3lat/cyr-to-lat.php";i:4;s:41:"navz-photo-gallery/navz-photo-gallery.php";i:5;s:27:"qtranslate-x/qtranslate.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'nbk', 'yes'),
(41, 'stylesheet', 'nbk', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:"wp-super-cache/wp-cache.php";s:22:"wpsupercache_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'ru_RU', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1533815873;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1533817046;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1533845846;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1533889071;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1533889283;a:1:{s:19:"wpseo-reindex-links";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1531901880;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(142, 'current_theme', 'nbk', 'yes'),
(143, 'theme_mods_nbk', 'a:10:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"menu_header";i:3;}s:18:"custom_css_post_id";i:-1;s:4:"name";s:98:"ТОВАРИСТВО З ОБМЕЖЕННОЮ ВIДПОВIДАЛЬНIСТЮ "НБК УКРАЇНА"";s:15:"mailing_address";s:18:"01004, м.Київ";s:6:"street";s:55:"вул.Червоноармiйська, 9/2, офiс 74";s:9:"telephone";s:15:"(044) 496 31 30";s:3:"fax";s:15:"(044) 496 52 19";s:5:"email";s:18:"office@nbk-ukr.com";s:12:"name_manager";s:48:"Охрiменко Ганна Григорiвна";}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(147, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'acf_version', '4.4.12', 'yes'),
(166, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(167, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.3";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1531912880;s:7:"version";s:5:"5.0.3";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(168, 'ossdl_off_cdn_url', 'http://nbkwordpress', 'yes'),
(169, 'ossdl_off_blog_url', 'http://nbkwordpress', 'yes'),
(170, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(171, 'ossdl_off_exclude', '.php', 'yes'),
(172, 'ossdl_cname', '', 'yes'),
(173, 'wp_super_cache_index_detected', '1', 'no'),
(174, 'wpseo', 'a:19:{s:15:"ms_defaults_set";b:0;s:7:"version";s:3:"7.8";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1531902083;}', 'yes'),
(175, 'wpseo_titles', 'a:65:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:45:"%%name%%, Автор в %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:64:"Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:57:"Страница не найдена %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:84:"Сообщение %%POSTLINK%% появились сначала на %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:1;s:23:"is-media-purge-relevant";b:0;s:20:"breadcrumbs-404crumb";s:54:"Ошибка 404: страница не найдена";s:29:"breadcrumbs-display-blog-page";b:1;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:19:"Архивы для";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:31:"Главная страница";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:17:"Вы искали";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:12:"website_name";s:0:"";s:11:"person_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:17:"stripcategorybase";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:23:"display-metabox-pt-post";b:1;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:23:"display-metabox-pt-page";b:1;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:18:"title-tax-category";s:57:"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:57:"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:57:"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:1;s:23:"noindex-tax-post_format";b:1;s:23:"post_types-post-maintax";i:0;}', 'yes'),
(176, 'wpseo_social', 'a:18:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(177, 'wpseo_flush_rewrite', '1', 'yes'),
(178, '_transient_timeout_wpseo_link_table_inaccessible', '1563438083', 'no'),
(179, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(180, '_transient_timeout_wpseo_meta_table_inaccessible', '1563438083', 'no'),
(181, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(184, 'rewrite_rules', 'a:110:{s:10:"product/?$";s:27:"index.php?post_type=product";s:40:"product/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:35:"product/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:27:"product/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:33:"product/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"product/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"product/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"product/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"product/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"product/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"product/(.+?)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:26:"product/(.+?)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:46:"product/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:41:"product/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:34:"product/(.+?)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:41:"product/(.+?)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:30:"product/(.+?)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:57:"product_taxonomy/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?product_taxonomy=$matches[1]&feed=$matches[2]";s:52:"product_taxonomy/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?product_taxonomy=$matches[1]&feed=$matches[2]";s:33:"product_taxonomy/([^/]+)/embed/?$";s:49:"index.php?product_taxonomy=$matches[1]&embed=true";s:45:"product_taxonomy/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?product_taxonomy=$matches[1]&paged=$matches[2]";s:27:"product_taxonomy/([^/]+)/?$";s:38:"index.php?product_taxonomy=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=9&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(212, 'wpseo_sitemap_1_cache_validator', '3ruyV', 'no'),
(213, 'wpseo_sitemap_page_cache_validator', '3URJS', 'no'),
(214, 'wpseo_sitemap_post_cache_validator', '49spQ', 'no'),
(215, 'wpseo_sitemap_category_cache_validator', '49spG', 'no'),
(222, 'wpseo_sitemap_cache_validator_global', '49hGt', 'no'),
(231, 'wpseo_sitemap_acf_cache_validator', '4I6aE', 'no'),
(242, 'category_children', 'a:0:{}', 'yes'),
(250, 'wpseo_sitemap_customize_changeset_cache_validator', '4GcK8', 'no'),
(251, 'wpseo_sitemap_product_type_cache_validator', 'nMCP', 'no'),
(253, 'wpseo_sitemap_product_cache_validator', '3ruyX', 'no'),
(274, 'wpseo_sitemap_wpcf7_contact_form_cache_validator', '3I4iU', 'no'),
(278, 'wpseo_sitemap_nav_menu_item_cache_validator', '3LDku', 'no'),
(279, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(282, 'wpseo_sitemap_attachment_cache_validator', '4DYGn', 'no'),
(293, 'wpseo_sitemap_48_cache_validator', '49spP', 'no'),
(332, 'wpseo_sitemap_product_taxonomy_cache_validator', '3m2r4', 'no'),
(357, 'wpseo_taxonomy_meta', 'a:1:{s:16:"product_taxonomy";a:1:{i:4;a:2:{s:13:"wpseo_linkdex";s:2:"-4";s:19:"wpseo_content_score";s:2:"30";}}}', 'yes'),
(368, 'product_taxonomy_children', 'a:0:{}', 'yes'),
(388, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1533813585;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
(391, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:19:"i.artuh@softvel.com";s:7:"version";s:5:"4.9.8";s:9:"timestamp";i:1533628470;}', 'no'),
(398, '_site_transient_timeout_browser_86b07f81fb59b2507e6adfae68375f24', '1534241981', 'no'),
(399, '_site_transient_browser_86b07f81fb59b2507e6adfae68375f24', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"61.0.3163.79";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(422, 'qtranslate_admin_notices', 'a:1:{s:11:"next_thanks";i:1533640546;}', 'yes'),
(423, 'qtranslate_enabled_languages', 'a:2:{i:0;s:2:"ua";i:1;s:2:"ru";}', 'yes'),
(424, 'qtranslate_default_language', 'ua', 'yes'),
(425, 'qtranslate_version_previous', '34680', 'yes'),
(426, 'qtranslate_versions', 'a:2:{i:34680;i:1533640546;s:1:"l";i:1533640546;}', 'yes'),
(427, 'qtranslate_admin_config', 'a:7:{s:4:"post";a:4:{s:5:"pages";a:2:{s:8:"post.php";s:0:"";s:12:"post-new.php";s:0:"";}s:7:"anchors";a:1:{s:17:"post-body-content";a:1:{s:5:"where";s:10:"first last";}}s:5:"forms";a:2:{s:4:"post";a:1:{s:6:"fields";a:8:{s:5:"title";a:0:{}s:7:"excerpt";a:0:{}s:18:"attachment_caption";a:0:{}s:14:"attachment_alt";a:0:{}s:13:"view-post-btn";a:1:{s:6:"encode";s:7:"display";}s:14:"wp-editor-area";a:1:{s:6:"jquery";s:15:".wp-editor-area";}s:15:"gallery-caption";a:2:{s:6:"jquery";s:16:".gallery-caption";s:6:"encode";s:4:"none";}s:15:"wp-caption-text";a:2:{s:6:"jquery";s:16:".wp-caption-text";s:6:"encode";s:7:"display";}}}s:14:"wpbody-content";a:1:{s:6:"fields";a:2:{s:7:"wrap-h1";a:2:{s:6:"jquery";s:8:".wrap h1";s:6:"encode";s:7:"display";}s:7:"wrap-h2";a:2:{s:6:"jquery";s:8:".wrap h2";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:9:"post-exec";a:1:{s:3:"src";s:27:"./admin/js/post-exec.min.js";}}}s:15:"options-general";a:3:{s:14:"preg_delimiter";s:1:"#";s:5:"pages";a:1:{s:19:"options-general.php";s:21:"^(?!.*page=[^=&]+).*$";}s:5:"forms";a:1:{s:7:"options";a:1:{s:6:"fields";a:3:{s:8:"blogname";a:0:{}s:15:"blogdescription";a:0:{}s:10:"head-title";a:2:{s:6:"jquery";s:10:"head title";s:6:"encode";s:7:"display";}}}}}s:7:"widgets";a:4:{s:5:"pages";a:1:{s:11:"widgets.php";s:0:"";}s:7:"anchors";a:1:{s:13:"widgets-right";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:1:{s:13:"widgets-right";a:1:{s:6:"fields";a:3:{s:12:"widget-title";a:1:{s:6:"jquery";s:34:"input[id^=''widget-''][id$=''-title'']";}s:16:"widget-text-text";a:1:{s:6:"jquery";s:41:"textarea[id^=''widget-text-''][id$=''-text'']";}s:15:"in-widget-title";a:2:{s:6:"jquery";s:20:"span.in-widget-title";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:12:"widgets-exec";a:1:{s:3:"src";s:30:"./admin/js/widgets-exec.min.js";}}}s:8:"edit-tag";a:3:{s:5:"pages";a:2:{s:8:"term.php";s:0:"";s:13:"edit-tags.php";s:11:"action=edit";}s:5:"forms";a:1:{s:7:"edittag";a:1:{s:6:"fields";a:3:{s:4:"name";a:0:{}s:11:"description";a:0:{}s:6:"parent";a:1:{s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:13:"edit-tag-exec";a:1:{s:3:"src";s:31:"./admin/js/edit-tag-exec.min.js";}}}s:9:"edit-tags";a:5:{s:14:"preg_delimiter";s:1:"#";s:5:"pages";a:1:{s:13:"edit-tags.php";s:21:"^(?!.*action=edit).*$";}s:7:"anchors";a:1:{s:12:"posts-filter";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:3:{s:6:"addtag";a:1:{s:6:"fields";a:3:{s:8:"tag-name";a:0:{}s:15:"tag-description";a:0:{}s:6:"parent";a:1:{s:6:"encode";s:7:"display";}}}s:8:"col-left";a:1:{s:6:"fields";a:1:{s:8:"tagcloud";a:2:{s:6:"jquery";s:13:".tagcloud > a";s:6:"encode";s:7:"display";}}}s:8:"the-list";a:1:{s:6:"fields";a:2:{s:9:"row-title";a:2:{s:6:"jquery";s:10:".row-title";s:6:"encode";s:7:"display";}s:11:"description";a:2:{s:6:"jquery";s:12:".description";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:14:"edit-tags-exec";a:1:{s:3:"src";s:32:"./admin/js/edit-tags-exec.min.js";}}}s:9:"nav-menus";a:4:{s:5:"pages";a:1:{s:13:"nav-menus.php";s:23:"action=edit|menu=\\d+|^$";}s:7:"anchors";a:1:{s:12:"menu-to-edit";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:2:{s:15:"update-nav-menu";a:1:{s:6:"fields";a:5:{s:5:"title";a:1:{s:6:"jquery";s:27:"[id^=edit-menu-item-title-]";}s:10:"attr-title";a:1:{s:6:"jquery";s:32:"[id^=edit-menu-item-attr-title-]";}s:11:"description";a:1:{s:6:"jquery";s:33:"[id^=edit-menu-item-description-]";}s:10:"span.title";a:2:{s:6:"jquery";s:20:"span.menu-item-title";s:6:"encode";s:7:"display";}s:16:"link-to-original";a:2:{s:6:"jquery";s:20:".link-to-original >a";s:6:"encode";s:7:"display";}}}s:14:"side-sortables";a:1:{s:6:"fields";a:2:{s:11:"label.title";a:2:{s:6:"jquery";s:21:"label.menu-item-title";s:6:"encode";s:7:"display";}s:23:"accordion-section-title";a:2:{s:6:"jquery";s:26:"h3.accordion-section-title";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:14:"nav-menus-exec";a:1:{s:3:"src";s:32:"./admin/js/nav-menus-exec.min.js";}}}s:9:"all-pages";a:1:{s:7:"filters";a:1:{s:4:"text";a:1:{s:11:"admin_title";s:2:"20";}}}}', 'yes'),
(428, 'qtranslate_front_config', 'a:1:{s:9:"all-pages";a:1:{s:7:"filters";a:3:{s:4:"text";a:11:{s:12:"widget_title";s:2:"20";s:11:"widget_text";s:2:"20";s:9:"the_title";s:2:"20";s:20:"category_description";s:2:"20";s:9:"list_cats";s:2:"20";s:16:"wp_dropdown_cats";s:2:"20";s:9:"term_name";s:2:"20";s:18:"get_comment_author";s:2:"20";s:10:"the_author";s:2:"20";s:9:"tml_title";s:2:"20";s:16:"term_description";s:2:"20";}s:4:"term";a:10:{s:7:"cat_row";s:1:"0";s:8:"cat_rows";s:1:"0";s:19:"wp_get_object_terms";s:1:"0";s:16:"single_cat_title";s:1:"0";s:16:"single_tag_title";s:1:"0";s:17:"single_term_title";s:1:"0";s:12:"the_category";s:1:"0";s:8:"get_term";s:1:"0";s:9:"get_terms";s:1:"0";s:12:"get_category";s:1:"0";}s:3:"url";a:16:{s:16:"author_feed_link";s:2:"10";s:11:"author_link";s:2:"10";s:27:"get_comment_author_url_link";s:2:"10";s:23:"post_comments_feed_link";s:2:"10";s:8:"day_link";s:2:"10";s:10:"month_link";s:2:"10";s:9:"year_link";s:2:"10";s:9:"page_link";s:2:"10";s:9:"post_link";s:2:"10";s:13:"category_link";s:2:"10";s:18:"category_feed_link";s:2:"10";s:8:"tag_link";s:2:"10";s:9:"term_link";s:2:"10";s:13:"the_permalink";s:2:"10";s:9:"feed_link";s:2:"10";s:13:"tag_feed_link";s:2:"10";}}}}', 'yes'),
(429, 'widget_qtranslate', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(430, 'qtranslate_next_thanks', '1548846946', 'yes'),
(431, 'qtranslate_next_update_mo', '1534245346', 'yes'),
(432, 'qtranslate_ignore_file_types', 'gif,jpg,jpeg,png,svg,pdf,swf,tif,rar,zip,7z,mpg,divx,mpeg,avi,css,js,mp3,mp4,apk', 'yes'),
(437, 'acf_qtranslate', 'a:2:{s:30:"translate_standard_field_types";s:1:"1";s:13:"show_on_pages";s:0:"";}', 'yes'),
(446, '_site_transient_timeout_theme_roots', '1533815389', 'no'),
(447, '_site_transient_theme_roots', 'a:4:{s:3:"nbk";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(448, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1533813591;s:7:"checked";a:4:{s:3:"nbk";s:0:"";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:1:{s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.7";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip";}}s:12:"translations";a:0:{}}', 'no'),
(449, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1533813592;s:7:"checked";a:9:{s:41:"navz-photo-gallery/navz-photo-gallery.php";s:5:"1.6.3";s:30:"advanced-custom-fields/acf.php";s:6:"4.4.12";s:33:"acf-qtranslate/acf-qtranslate.php";s:6:"1.7.23";s:19:"akismet/akismet.php";s:5:"4.0.3";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.0.3";s:22:"cyr3lat/cyr-to-lat.php";s:3:"3.5";s:27:"qtranslate-x/qtranslate.php";s:7:"3.4.6.8";s:27:"wp-super-cache/wp-cache.php";s:5:"1.6.2";s:24:"wordpress-seo/wp-seo.php";s:3:"7.8";}s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.6";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":12:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"7.9.1";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.7.9.1.zip";s:5:"icons";a:3:{s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347";s:2:"1x";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435";}s:11:"banners_rtl";a:2:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435";}s:6:"tested";s:5:"4.9.8";s:12:"requires_php";s:5:"5.2.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:41:"navz-photo-gallery/navz-photo-gallery.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/navz-photo-gallery";s:4:"slug";s:18:"navz-photo-gallery";s:6:"plugin";s:41:"navz-photo-gallery/navz-photo-gallery.php";s:11:"new_version";s:5:"1.6.3";s:3:"url";s:49:"https://wordpress.org/plugins/navz-photo-gallery/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/navz-photo-gallery.1.6.3.zip";s:5:"icons";a:1:{s:2:"1x";s:71:"https://ps.w.org/navz-photo-gallery/assets/icon-128x128.png?rev=1561241";}s:7:"banners";a:1:{s:2:"1x";s:73:"https://ps.w.org/navz-photo-gallery/assets/banner-772x250.png?rev=1561242";}s:11:"banners_rtl";a:0:{}}s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:33:"acf-qtranslate/acf-qtranslate.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/acf-qtranslate";s:4:"slug";s:14:"acf-qtranslate";s:6:"plugin";s:33:"acf-qtranslate/acf-qtranslate.php";s:11:"new_version";s:6:"1.7.23";s:3:"url";s:45:"https://wordpress.org/plugins/acf-qtranslate/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/acf-qtranslate.1.7.23.zip";s:5:"icons";a:1:{s:7:"default";s:58:"https://s.w.org/plugins/geopattern-icon/acf-qtranslate.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.3";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.3.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:22:"cyr3lat/cyr-to-lat.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/cyr3lat";s:4:"slug";s:7:"cyr3lat";s:6:"plugin";s:22:"cyr3lat/cyr-to-lat.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:38:"https://wordpress.org/plugins/cyr3lat/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip";s:5:"icons";a:1:{s:7:"default";s:51:"https://s.w.org/plugins/geopattern-icon/cyr3lat.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:27:"qtranslate-x/qtranslate.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/qtranslate-x";s:4:"slug";s:12:"qtranslate-x";s:6:"plugin";s:27:"qtranslate-x/qtranslate.php";s:11:"new_version";s:7:"3.4.6.8";s:3:"url";s:43:"https://wordpress.org/plugins/qtranslate-x/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/qtranslate-x.3.4.6.8.zip";s:5:"icons";a:1:{s:7:"default";s:63:"https://s.w.org/plugins/geopattern-icon/qtranslate-x_f9f9f9.svg";}s:7:"banners";a:2:{s:2:"2x";s:68:"https://ps.w.org/qtranslate-x/assets/banner-1544x500.png?rev=1286019";s:2:"1x";s:67:"https://ps.w.org/qtranslate-x/assets/banner-772x250.png?rev=1286019";}s:11:"banners_rtl";a:0:{}}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-super-cache";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:5:"1.6.2";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-super-cache.1.6.2.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422";s:2:"1x";s:67:"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414";s:2:"1x";s:69:"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '[text name class:form_name placeholder "Ф.И.О"]\n[email email class:form_email placeholder "E-mail"]\n[text subject class:form_subject placeholder "Тема"]\n[textarea message class:form_message placeholder "Введите сообщение..."]\n[submit class:form_submit "Отправить"]'),
(4, 5, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:28:"NBK Ukraine "[your-subject]"";s:6:"sender";s:36:"[your-name] <wordpress@nbkwordpress>";s:9:"recipient";s:19:"i.artuh@softvel.com";s:4:"body";s:193:"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта NBK Ukraine (http://nbkwordpress)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:28:"NBK Ukraine "[your-subject]"";s:6:"sender";s:36:"NBK Ukraine <wordpress@nbkwordpress>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:134:"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта NBK Ukraine (http://nbkwordpress)";s:18:"additional_headers";s:29:"Reply-To: i.artuh@softvel.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(6, 5, '_messages', 'a:23:{s:12:"mail_sent_ok";s:92:"Спасибо за Ваше сообщение. Оно успешно отправлено.";s:12:"mail_sent_ng";s:144:"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.";s:16:"validation_error";s:180:"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.";s:4:"spam";s:144:"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.";s:12:"accept_terms";s:132:"Вы должны принять условия и положения перед отправкой вашего сообщения.";s:16:"invalid_required";s:60:"Поле обязательно для заполнения.";s:16:"invalid_too_long";s:39:"Поле слишком длинное.";s:17:"invalid_too_short";s:41:"Поле слишком короткое.";s:12:"invalid_date";s:45:"Формат даты некорректен.";s:14:"date_too_early";s:74:"Введённая дата слишком далеко в прошлом.";s:13:"date_too_late";s:74:"Введённая дата слишком далеко в будущем.";s:13:"upload_failed";s:90:"При загрузке файла произошла неизвестная ошибка.";s:24:"upload_file_type_invalid";s:81:"Вам не разрешено загружать файлы этого типа.";s:21:"upload_file_too_large";s:39:"Файл слишком большой.";s:23:"upload_failed_php_error";s:67:"При загрузке файла произошла ошибка.";s:14:"invalid_number";s:47:"Формат числа некорректен.";s:16:"number_too_small";s:68:"Число меньше минимально допустимого.";s:16:"number_too_large";s:70:"Число больше максимально допустимого.";s:23:"quiz_answer_not_correct";s:69:"Неверный ответ на проверочный вопрос.";s:17:"captcha_not_match";s:35:"Код введен неверно.";s:13:"invalid_email";s:62:"Неверно введён электронный адрес.";s:11:"invalid_url";s:53:"Введён некорректный URL адрес.";s:11:"invalid_tel";s:70:"Введён некорректный телефонный номер.";}'),
(7, 5, '_additional_settings', ''),
(8, 5, '_locale', 'ru_RU'),
(9, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(10, 5, '_wp_old_slug', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1'),
(11, 3, '_wp_trash_meta_status', 'draft'),
(12, 3, '_wp_trash_meta_time', '1532001459'),
(13, 3, '_wp_desired_post_slug', 'privacy-policy'),
(14, 2, '_wp_trash_meta_status', 'publish'),
(15, 2, '_wp_trash_meta_time', '1532001459'),
(16, 2, '_wp_desired_post_slug', 'sample-page'),
(17, 1, '_wp_trash_meta_status', 'publish'),
(18, 1, '_wp_trash_meta_time', '1532001465'),
(19, 1, '_wp_desired_post_slug', 'privet-mir'),
(20, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(21, 9, '_edit_last', '1'),
(22, 9, '_yoast_wpseo_content_score', '30'),
(23, 9, '_edit_lock', '1532088070:1'),
(24, 11, '_edit_last', '1'),
(25, 11, '_edit_lock', '1533646887:1'),
(26, 11, '_yoast_wpseo_content_score', '30'),
(27, 11, '_wp_page_template', 'about-page.php'),
(28, 13, '_edit_last', '1'),
(29, 13, '_edit_lock', '1532005844:1'),
(30, 13, '_wp_page_template', 'catalog-page.php'),
(31, 13, '_yoast_wpseo_content_score', '30'),
(32, 15, '_edit_last', '1'),
(33, 15, '_wp_page_template', 'contacts-page.php'),
(34, 15, '_yoast_wpseo_content_score', '30'),
(35, 15, '_edit_lock', '1532002275:1'),
(36, 17, '_edit_last', '1'),
(37, 17, '_wp_page_template', 'tovar-page.php'),
(38, 17, '_yoast_wpseo_content_score', '30'),
(39, 17, '_edit_lock', '1532005888:1'),
(40, 19, '_edit_last', '1'),
(41, 19, 'field_5b508c6563cb3', 'a:11:{s:3:"key";s:19:"field_5b508c6563cb3";s:5:"label";s:15:"Слайдер1";s:4:"name";s:7:"slider1";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(42, 19, 'field_5b508c7b63cb4', 'a:11:{s:3:"key";s:19:"field_5b508c7b63cb4";s:5:"label";s:15:"Слайдер2";s:4:"name";s:7:"slider2";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(43, 19, 'field_5b508c8563cb5', 'a:11:{s:3:"key";s:19:"field_5b508c8563cb5";s:5:"label";s:15:"Слайдер3";s:4:"name";s:7:"slider3";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(44, 19, 'field_5b508c9463cb6', 'a:11:{s:3:"key";s:19:"field_5b508c9463cb6";s:5:"label";s:15:"Слайдер4";s:4:"name";s:7:"slider4";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(45, 19, 'field_5b508ca863cb7', 'a:11:{s:3:"key";s:19:"field_5b508ca863cb7";s:5:"label";s:28:"Фото параллакс1";s:4:"name";s:13:"img_parallax1";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(46, 19, 'field_5b508d9663cb8', 'a:14:{s:3:"key";s:19:"field_5b508d9663cb8";s:5:"label";s:36:"Заглавие Параллакс1";s:4:"name";s:15:"title_parallax1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(47, 19, 'field_5b508daa63cb9', 'a:14:{s:3:"key";s:19:"field_5b508daa63cb9";s:5:"label";s:30:"Текст Параллакс1";s:4:"name";s:14:"text_parallax1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(48, 19, 'field_5b508db863cba', 'a:14:{s:3:"key";s:19:"field_5b508db863cba";s:5:"label";s:32:"Ссылка Параллакс1";s:4:"name";s:14:"link_parallax1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(49, 19, 'field_5b508dc663cbb', 'a:11:{s:3:"key";s:19:"field_5b508dc663cbb";s:5:"label";s:28:"Фото параллакс2";s:4:"name";s:13:"img_parallax2";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(51, 19, 'position', 'normal'),
(52, 19, 'layout', 'no_box'),
(53, 19, 'hide_on_screen', ''),
(54, 19, '_edit_lock', '1532095953:1'),
(55, 19, 'field_5b508df89c6c7', 'a:14:{s:3:"key";s:19:"field_5b508df89c6c7";s:5:"label";s:36:"Заглавие Параллакс2";s:4:"name";s:15:"title_parallax2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'),
(56, 19, 'field_5b508e079c6c8', 'a:14:{s:3:"key";s:19:"field_5b508e079c6c8";s:5:"label";s:30:"Текст параллакс2";s:4:"name";s:14:"text_parallax2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'),
(57, 19, 'field_5b508e159c6c9', 'a:14:{s:3:"key";s:19:"field_5b508e159c6c9";s:5:"label";s:32:"Ссылка Параллакс2";s:4:"name";s:14:"link_parallax2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:12;}'),
(60, 20, '_edit_last', '1'),
(61, 20, 'field_5b5090920be71', 'a:13:{s:3:"key";s:19:"field_5b5090920be71";s:5:"label";s:24:"Преимущества";s:4:"name";s:10:"advantages";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(62, 20, 'field_5b5091670be72', 'a:13:{s:3:"key";s:19:"field_5b5091670be72";s:5:"label";s:62:"Уровень эксплуатационных свойств";s:4:"name";s:20:"level_of_performance";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(63, 20, 'field_5b5091860be73', 'a:13:{s:3:"key";s:19:"field_5b5091860be73";s:5:"label";s:50:"Соответствует требованиям:";s:4:"name";s:12:"requirements";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(64, 20, 'field_5b5091a90be74', 'a:13:{s:3:"key";s:19:"field_5b5091a90be74";s:5:"label";s:38:"Официально одобрено:";s:4:"name";s:19:"officially_approved";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(66, 20, 'position', 'normal'),
(67, 20, 'layout', 'no_box'),
(68, 20, 'hide_on_screen', ''),
(69, 20, '_edit_lock', '1532193848:1'),
(70, 20, 'field_5b50930cdfb8f', 'a:10:{s:3:"key";s:19:"field_5b50930cdfb8f";s:5:"label";s:33:"Описание продукта";s:4:"name";s:19:"description_product";s:4:"type";s:4:"file";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(72, 21, '_edit_last', '1'),
(73, 21, 'field_5b50936af861d', 'a:11:{s:3:"key";s:19:"field_5b50936af861d";s:5:"label";s:17:"Бренд Texaco";s:4:"name";s:12:"brend_texaco";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(74, 21, 'field_5b5094d5f861e', 'a:11:{s:3:"key";s:19:"field_5b5094d5f861e";s:5:"label";s:27:"О компании Chevron";s:4:"name";s:15:"company_chevron";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(75, 21, 'field_5b5094eaf861f', 'a:11:{s:3:"key";s:19:"field_5b5094eaf861f";s:5:"label";s:28:"Картинка1(блок1)";s:4:"name";s:10:"img_block1";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(76, 21, 'field_5b509507f8620', 'a:11:{s:3:"key";s:19:"field_5b509507f8620";s:5:"label";s:27:"Картинка(блок2)";s:4:"name";s:10:"img_block2";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(77, 21, 'field_5b509515f8621', 'a:11:{s:3:"key";s:19:"field_5b509515f8621";s:5:"label";s:21:"Текст(блок1)";s:4:"name";s:11:"text_block1";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(78, 21, 'field_5b509525f8622', 'a:11:{s:3:"key";s:19:"field_5b509525f8622";s:5:"label";s:21:"Текст(блок2)";s:4:"name";s:11:"text_block2";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(80, 21, 'position', 'normal'),
(81, 21, 'layout', 'no_box'),
(82, 21, 'hide_on_screen', ''),
(83, 21, '_edit_lock', '1533646868:1'),
(85, 22, '_edit_lock', '1532009281:1'),
(86, 22, '_wp_trash_meta_status', 'publish'),
(87, 22, '_wp_trash_meta_time', '1532009287'),
(88, 5, '_config_errors', 'a:3:{s:9:"form.body";a:1:{i:0;a:2:{s:4:"code";i:107;s:4:"args";a:3:{s:7:"message";s:128:"Использованы недопустимые названия (%names%) элементов управления формы.";s:6:"params";a:1:{s:5:"names";s:6:""name"";}s:4:"link";s:63:"https://contactform7.com/configuration-errors/unavailable-names";}}}s:11:"mail.sender";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:0:"";s:6:"params";a:0:{}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:125:"Был использован некорректный синтаксис почтового адреса в поле %name%.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}'),
(89, 32, '_menu_item_type', 'post_type'),
(90, 32, '_menu_item_menu_item_parent', '0'),
(91, 32, '_menu_item_object_id', '9'),
(92, 32, '_menu_item_object', 'page'),
(93, 32, '_menu_item_target', ''),
(94, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 32, '_menu_item_xfn', ''),
(96, 32, '_menu_item_url', ''),
(97, 32, '_menu_item_orphaned', '1532082773'),
(98, 33, '_menu_item_type', 'post_type'),
(99, 33, '_menu_item_menu_item_parent', '0'),
(100, 33, '_menu_item_object_id', '9'),
(101, 33, '_menu_item_object', 'page'),
(102, 33, '_menu_item_target', ''),
(103, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 33, '_menu_item_xfn', ''),
(105, 33, '_menu_item_url', ''),
(106, 33, '_menu_item_orphaned', '1532082773'),
(107, 34, '_menu_item_type', 'post_type'),
(108, 34, '_menu_item_menu_item_parent', '0'),
(109, 34, '_menu_item_object_id', '13'),
(110, 34, '_menu_item_object', 'page'),
(111, 34, '_menu_item_target', ''),
(112, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 34, '_menu_item_xfn', ''),
(114, 34, '_menu_item_url', ''),
(116, 35, '_menu_item_type', 'post_type'),
(117, 35, '_menu_item_menu_item_parent', '0'),
(118, 35, '_menu_item_object_id', '15'),
(119, 35, '_menu_item_object', 'page'),
(120, 35, '_menu_item_target', ''),
(121, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(122, 35, '_menu_item_xfn', ''),
(123, 35, '_menu_item_url', ''),
(125, 36, '_menu_item_type', 'post_type'),
(126, 36, '_menu_item_menu_item_parent', '0'),
(127, 36, '_menu_item_object_id', '11'),
(128, 36, '_menu_item_object', 'page'),
(129, 36, '_menu_item_target', ''),
(130, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(131, 36, '_menu_item_xfn', ''),
(132, 36, '_menu_item_url', ''),
(134, 37, '_menu_item_type', 'post_type'),
(135, 37, '_menu_item_menu_item_parent', '0'),
(136, 37, '_menu_item_object_id', '17'),
(137, 37, '_menu_item_object', 'page'),
(138, 37, '_menu_item_target', ''),
(139, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(140, 37, '_menu_item_xfn', ''),
(141, 37, '_menu_item_url', ''),
(142, 37, '_menu_item_orphaned', '1532082773'),
(143, 38, '_menu_item_type', 'post_type'),
(144, 38, '_menu_item_menu_item_parent', '0'),
(145, 38, '_menu_item_object_id', '9'),
(146, 38, '_menu_item_object', 'page'),
(147, 38, '_menu_item_target', ''),
(148, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(149, 38, '_menu_item_xfn', ''),
(150, 38, '_menu_item_url', ''),
(152, 39, '_menu_item_type', 'custom'),
(153, 39, '_menu_item_menu_item_parent', '0'),
(154, 39, '_menu_item_object_id', '39'),
(155, 39, '_menu_item_object', 'custom'),
(156, 39, '_menu_item_target', ''),
(157, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(158, 39, '_menu_item_xfn', ''),
(159, 39, '_menu_item_url', 'http://подбор%20масла'),
(161, 40, '_wp_attached_file', '2018/07/certificate.jpg'),
(162, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1358;s:6:"height";i:1920;s:4:"file";s:23:"2018/07/certificate.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"certificate-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"certificate-212x300.jpg";s:5:"width";i:212;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"certificate-768x1086.jpg";s:5:"width";i:768;s:6:"height";i:1086;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"certificate-724x1024.jpg";s:5:"width";i:724;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(163, 41, '_wp_attached_file', '2018/07/License.jpg'),
(164, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2480;s:6:"height";i:3508;s:4:"file";s:19:"2018/07/License.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"License-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"License-212x300.jpg";s:5:"width";i:212;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"License-768x1086.jpg";s:5:"width";i:768;s:6:"height";i:1086;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"License-724x1024.jpg";s:5:"width";i:724;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(165, 42, 'img_block1', '40'),
(166, 42, '_img_block1', 'field_5b5094eaf861f'),
(167, 42, 'text_block1', '<p class="text_bold text_upper">NBK Ukraine</p>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.</p>'),
(168, 42, '_text_block1', 'field_5b509515f8621'),
(169, 42, 'img_block2', '41'),
(170, 42, '_img_block2', 'field_5b509507f8620'),
(171, 42, 'text_block2', '<p class="text_bold text_upper">NBK Ukraine</p>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.</p>'),
(172, 42, '_text_block2', 'field_5b509525f8622'),
(173, 42, 'brend_texaco', '<p>Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!</p>\r\n	<p>Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!</p>'),
(174, 42, '_brend_texaco', 'field_5b50936af861d'),
(175, 42, 'company_chevron', '<p>Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!</p>\r\n	<p>Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!</p>\r\n	<ul>\r\n		<li>Рандомный текст!</li>\r\n		<li>Рандомный текст!</li>\r\n		<li>Рандомный текст!</li>\r\n		<li>Рандомный текст!</li>\r\n	</ul>'),
(176, 42, '_company_chevron', 'field_5b5094d5f861e'),
(177, 11, 'img_block1', '40'),
(178, 11, '_img_block1', 'field_5b5094eaf861f'),
(179, 11, 'text_block1', '[:ua]<p class="text_bold text_upper">NBK Ukraineddcdd11111</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:ru]<p class="text_bold text_upper">NBK Ukraineddcdd11111222</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:]'),
(180, 11, '_text_block1', 'field_5b509515f8621'),
(181, 11, 'img_block2', '41'),
(182, 11, '_img_block2', 'field_5b509507f8620'),
(183, 11, 'text_block2', '<p class="text_bold text_upper">NBK Ukraine</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.'),
(184, 11, '_text_block2', 'field_5b509525f8622'),
(185, 11, 'brend_texaco', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!'),
(186, 11, '_brend_texaco', 'field_5b50936af861d'),
(187, 11, 'company_chevron', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n<ul>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n</ul>'),
(188, 11, '_company_chevron', 'field_5b5094d5f861e'),
(191, 43, 'img_block1', '40'),
(192, 43, '_img_block1', 'field_5b5094eaf861f'),
(193, 43, 'text_block1', '<p class="text_bold text_upper">NBK Ukraine</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.'),
(194, 43, '_text_block1', 'field_5b509515f8621'),
(195, 43, 'img_block2', '41'),
(196, 43, '_img_block2', 'field_5b509507f8620'),
(197, 43, 'text_block2', '<p class="text_bold text_upper">NBK Ukraine</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.'),
(198, 43, '_text_block2', 'field_5b509525f8622'),
(199, 43, 'brend_texaco', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n\r\nРандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!'),
(200, 43, '_brend_texaco', 'field_5b50936af861d'),
(201, 43, 'company_chevron', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n\r\nРандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n<ul>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n</ul>'),
(202, 43, '_company_chevron', 'field_5b5094d5f861e'),
(203, 44, '_wp_attached_file', '2018/07/slider2.jpg'),
(204, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:631;s:4:"file";s:19:"2018/07/slider2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slider2-300x99.jpg";s:5:"width";i:300;s:6:"height";i:99;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider2-768x252.jpg";s:5:"width";i:768;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"slider2-1024x337.jpg";s:5:"width";i:1024;s:6:"height";i:337;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(205, 45, '_wp_attached_file', '2018/07/slider3.jpg'),
(206, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:631;s:4:"file";s:19:"2018/07/slider3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slider3-300x99.jpg";s:5:"width";i:300;s:6:"height";i:99;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider3-768x252.jpg";s:5:"width";i:768;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"slider3-1024x337.jpg";s:5:"width";i:1024;s:6:"height";i:337;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(207, 9, '_wp_page_template', 'default'),
(208, 46, 'slider1', ''),
(209, 46, '_slider1', 'field_5b508c6563cb3'),
(210, 46, 'slider2', ''),
(211, 46, '_slider2', 'field_5b508c7b63cb4'),
(212, 46, 'slider3', ''),
(213, 46, '_slider3', 'field_5b508c8563cb5'),
(214, 46, 'slider4', ''),
(215, 46, '_slider4', 'field_5b508c9463cb6'),
(216, 46, 'img_parallax1', '44'),
(217, 46, '_img_parallax1', 'field_5b508ca863cb7'),
(218, 46, 'title_parallax1', 'Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче'),
(219, 46, '_title_parallax1', 'field_5b508d9663cb8'),
(220, 46, 'text_parallax1', 'еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче'),
(221, 46, '_text_parallax1', 'field_5b508daa63cb9'),
(222, 46, 'link_parallax1', 'https://www.facebook.com/groups/frontend.magazine/'),
(223, 46, '_link_parallax1', 'field_5b508db863cba'),
(224, 46, 'img_parallax2', '45'),
(225, 46, '_img_parallax2', 'field_5b508dc663cbb'),
(226, 46, 'title_parallax2', 'Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче'),
(227, 46, '_title_parallax2', 'field_5b508df89c6c7'),
(228, 46, 'text_parallax2', 'еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче'),
(229, 46, '_text_parallax2', 'field_5b508e079c6c8'),
(230, 46, 'link_parallax2', 'https://www.facebook.com/groups/frontend.magazine/'),
(231, 46, '_link_parallax2', 'field_5b508e159c6c9'),
(232, 9, 'slider1', ''),
(233, 9, '_slider1', 'field_5b508c6563cb3'),
(234, 9, 'slider2', ''),
(235, 9, '_slider2', 'field_5b508c7b63cb4'),
(236, 9, 'slider3', ''),
(237, 9, '_slider3', 'field_5b508c8563cb5'),
(238, 9, 'slider4', ''),
(239, 9, '_slider4', 'field_5b508c9463cb6'),
(240, 9, 'img_parallax1', '44'),
(241, 9, '_img_parallax1', 'field_5b508ca863cb7'),
(242, 9, 'title_parallax1', 'Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче'),
(243, 9, '_title_parallax1', 'field_5b508d9663cb8'),
(244, 9, 'text_parallax1', 'еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче'),
(245, 9, '_text_parallax1', 'field_5b508daa63cb9'),
(246, 9, 'link_parallax1', 'https://www.facebook.com/groups/frontend.magazine/'),
(247, 9, '_link_parallax1', 'field_5b508db863cba'),
(248, 9, 'img_parallax2', '45'),
(249, 9, '_img_parallax2', 'field_5b508dc663cbb'),
(250, 9, 'title_parallax2', 'Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче'),
(251, 9, '_title_parallax2', 'field_5b508df89c6c7'),
(252, 9, 'text_parallax2', 'еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче'),
(253, 9, '_text_parallax2', 'field_5b508e079c6c8'),
(254, 9, 'link_parallax2', 'https://www.facebook.com/groups/frontend.magazine/'),
(255, 9, '_link_parallax2', 'field_5b508e159c6c9');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(256, 19, 'field_5b51c3792afbe', 'a:9:{s:3:"key";s:19:"field_5b51c3792afbe";s:5:"label";s:14:"Слайдер";s:4:"name";s:13:"slider_header";s:4:"type";s:13:"photo_gallery";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"edit_modal";s:7:"Default";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(258, 19, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"9";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(259, 47, '_wp_attached_file', '2018/07/slider1.jpg'),
(260, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:631;s:4:"file";s:19:"2018/07/slider1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slider1-300x99.jpg";s:5:"width";i:300;s:6:"height";i:99;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider1-768x252.jpg";s:5:"width";i:768;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"slider1-1024x337.jpg";s:5:"width";i:1024;s:6:"height";i:337;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(261, 9, 'slider_header', '47,45,44'),
(262, 48, '_edit_last', '1'),
(263, 48, '_edit_lock', '1533640488:1'),
(264, 48, '_thumbnail_id', '45'),
(266, 48, '_yoast_wpseo_content_score', '60'),
(267, 48, '_yoast_wpseo_primary_category', '2'),
(269, 51, '_edit_last', '1'),
(270, 51, '_edit_lock', '1532251370:1'),
(271, 51, 'advantages', 'Преимущества данного товара рандомный текст!'),
(272, 51, '_advantages', 'field_5b5090920be71'),
(273, 51, 'level_of_performance', 'Уровень эксплуатационных свойств данного товара его рандомный текст!'),
(274, 51, '_level_of_performance', 'field_5b5091670be72'),
(275, 51, 'requirements', 'Соответствует требованиям данным товар рандомный текст!!!'),
(276, 51, '_requirements', 'field_5b5091860be73'),
(277, 51, 'officially_approved', 'Официально одобрено рандомный текст данного товара!!!'),
(278, 51, '_officially_approved', 'field_5b5091a90be74'),
(279, 51, 'description_product', ''),
(280, 51, '_description_product', 'field_5b50930cdfb8f'),
(281, 51, '_yoast_wpseo_primary_product_taxonomy', '4'),
(282, 51, '_yoast_wpseo_content_score', '30'),
(283, 52, '_wp_attached_file', '2018/07/category9.png'),
(284, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:160;s:6:"height";i:128;s:4:"file";s:21:"2018/07/category9.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"category9-150x128.png";s:5:"width";i:150;s:6:"height";i:128;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(285, 51, '_thumbnail_id', '52'),
(286, 20, 'field_5b51ee6882bdf', 'a:14:{s:3:"key";s:19:"field_5b51ee6882bdf";s:5:"label";s:8:"Цена";s:4:"name";s:5:"price";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(287, 20, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"product";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(288, 51, 'price', '560.23'),
(289, 51, '_price', 'field_5b51ee6882bdf'),
(290, 54, '_edit_last', '1'),
(291, 54, '_edit_lock', '1532252215:1'),
(292, 54, 'price', ''),
(293, 54, '_price', 'field_5b51ee6882bdf'),
(294, 54, 'advantages', ''),
(295, 54, '_advantages', 'field_5b5090920be71'),
(296, 54, 'level_of_performance', ''),
(297, 54, '_level_of_performance', 'field_5b5091670be72'),
(298, 54, 'requirements', ''),
(299, 54, '_requirements', 'field_5b5091860be73'),
(300, 54, 'officially_approved', ''),
(301, 54, '_officially_approved', 'field_5b5091a90be74'),
(302, 54, 'description_product', ''),
(303, 54, '_description_product', 'field_5b50930cdfb8f'),
(304, 57, 'img_block1', '40'),
(305, 57, '_img_block1', 'field_5b5094eaf861f'),
(306, 57, 'text_block1', '[:ua]<p class="text_bold text_upper">ТОВ «НБК Україна»</p>\r\n<span lang="UK" xml:lang="UK">Незалежна компанія, основним видом діяльності якої є імпорт, дистрибуція, а також інформаційно-технічний супровід продукції </span>Texaco<span lang="UK" xml:lang="UK"> на території України. </span>Ми є єдиним в Україні авторизованим дистриб''ютором мастильних матеріалів, спеціалізованих сервісних продуктів і охолоджувальних рідин Texaco.\r\n\r\nНаша компанія працює на підставі прямого контракту з компанією Chevron, яка протягом більш н<span lang="UK" xml:lang="UK">іж</span>ста років займає лідируючі позиції серед найбільших світових н<span lang="UK" xml:lang="UK">а</span>фтогазовидобувних компаній, розробників передових технологій і виробників високоякісних базових олив, синтетичних рідин і готової мастильної продукції.\r\n\r\nПоставки продукції здійснюються безпосередньо з логістичного центру Chevron в Бельгії, де розташований Європейський технологічний центр і виробляється продукція Texaco для країн європейського регіону (блендінговий завод Chevron в м. Гент).\r\n\r\nВся продукція, що поставляється в Україну, виробляється за оригінальними технологіями і має найвищий рівень якості, що підтверджено багаторічним споживчим досвідом практичного застосування, використанням оригінальних олив та рідин Texaco при первинній заливці і рекомендаціями від багатьох всесвітньо відомих виробників автотехніки та промислового обладнання<span lang="UK" xml:lang="UK">.</span>[:ru]<p class="text_bold text_upper">NBK Ukraine</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:]'),
(307, 57, '_text_block1', 'field_5b509515f8621'),
(308, 57, 'img_block2', '41'),
(309, 57, '_img_block2', 'field_5b509507f8620'),
(310, 57, 'text_block2', '[:ua]<p class="text_bold text_upper">Бренд Texaco</p>\r\nБренд Texaco прийшов до Європи понад сто років тому. Сьогодні він є частиною корпорації Chevron, має власне виробництво і науково-дослідні лабораторії по всьому світу. В рамках міжнародної корпорації продукція розробляється відповідно до вимог провідних виробників техніки та обладнання (OEM), Асоціації Європейських Виробників Автомобілів (ACEA) і Американського Інституту Палива (API). Мастильні матеріали Texaco виробляються на основі базових масел преміум-класу (група II і III) з використанням запатентованої технології багатостадійного гідропроцессінгу і з додаванням унікального пакету присадок. Корпорація, яка випускає мастильні матеріали Texaco, зробила революційний крок, розробивши кристально-чисті базові оливи II і III групи.\r\n\r\nНа сьогоднішній день Texaco є світовим лідером за обсягом виробництва базових масел вищого ступеня очищення. Виробничі потужності зосереджені в Бельгії. Науково-дослідний центр з лабораторією, яка забезпечена найсучаснішим обладнанням, розташований в Генті. Чудові експлуатаційні характеристики роблять лінійку продукції Texaco практично бездоганною.\r\n\r\nHavoline і Ursa - основні напрямки моторних мастильних матеріалів виробника, якість яких не тільки відповідає допускам і схваленням професійних асоціацій двигунобудування, а й перевершують їх за деякими показниками. Корпорація випускає високоякісні мастильні матеріали для легкових авто, комерційного транспорту, а також всіх видів спецтехніки. Компанія Texaco безперервно веде співпрацю зі світовими лідерами і асоціаціями двигунобудування, збирає і аналізує рекомендації автовласників. В результаті цього вдається створити унікальну продукцію, яка відповідає найвищим стандартам якості.[:ru]<p class="text_bold text_upper">NBK Ukraine</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:]'),
(311, 57, '_text_block2', 'field_5b509525f8622'),
(312, 57, 'brend_texaco', '[:ua]Про компанiю Chevron\r\n\r\nКорпорація Chevron веде свою історію з 1879 року, коли в Лос-Анджелесі була зареєстрована компанія «Пасифік Кост Ойл Компані» - родоначальник нинішнього гіганта світової енергетики. У 1900 році молода компанія, що розвивалася доволі швидко, була придбана Джоном Рокфеллером і увійшла до складу його тресту «Стандарт Ойл». У 1911 році фірма перетворилася в «Стандарт Ойл Компані оф Каліфорнія». У 20-30-х роках компанія почала інвестувати в міжнародну геологорозвідку і відкрила перші великі нафтові родовища в Бахрейні і Саудівській Аравії.\r\n\r\nУ 1936 році «Standart Oil» разом з компанією «Texaco» створили компанію «Caltex», що дозволило вийти на ринки Азії, Африки та Європи. Після Другої Світової війни активна геологорозвідувальна діяльність компанії призвела до відкриття нових багатих родовищ в Індонезії, Австралії, в Північному морі біля берегів Великобританії і в Мексиканській затоці.\r\n\r\nУ 1984 році «Стандарт Ойл Компані оф Каліфорнія» змінила свою назву, задіявши свій старий логотип Chevron, добре відомий мільйонам покупців палива і олив в усьому світі.\r\n\r\nУ 2001 році відбулося злиття компаній Шеврон і Тексако, в результаті чого була утворена найбільша в світі енергетична корпорація ChevronTexaco.\r\n\r\n9 травня 2005 року компанія ChevronTexaco була перетворена в Chevron Corporation.\r\n\r\nСьогодні Chevron Corporation - одна з найбільших в світі інтегрованих енергетичних компаній, яка охоплює всі ланки нафтового бізнесу: від геологорозвідки і видобутку нафти до переробки, транспортування і збуту нафтопродуктів і мастильних матеріалів по всьому світу через мережу офіційних дистриб''юторів. Корпорація Chevron активно представлена ​​більш ніж в 180 країнах світу.\r\n\r\nОсновні напрямки діяльності Chevron:\r\n\r\n• геологорозвідка родовищ;\r\n\r\n• видобуток і транспортування нафти, газу і газового конденсату;\r\n\r\n• виробництво і продаж палива;\r\n\r\n• виробництво і продаж електроенергії;\r\n\r\n• виробництво і продаж присадок для палива і олив;\r\n\r\n• виготовлення та продаж мастильних матеріалів.\r\n\r\nПовна лінійка мастильних матеріалів і охолоджуючих рідин (в тому числі Havoline, Delo і URSA) продається по всьому світу під брендами Chevron, Texaco і Caltex. Ці преміальні продукти допомагають поліпшити економію палива і подовжити період між замінами масла.\r\n\r\nНа сьогоднішній день компанії Chevron довіряють брендування масел своїм логотипом такі відомі виробники, як Volvo, DAF, Toyota. Роблячи вибір на користь мастильних матеріалів Chevron, Ви отримуєте продукт з гарантовано високою якістю, який допоможе зберегти Вашу техніку в чудовому стані на довгий час.[:ru]Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n\r\nРандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!![:]'),
(313, 57, '_brend_texaco', 'field_5b50936af861d'),
(314, 57, 'company_chevron', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n\r\nРандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n<ul>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n</ul>'),
(315, 57, '_company_chevron', 'field_5b5094d5f861e'),
(316, 58, 'img_block1', '40'),
(317, 58, '_img_block1', 'field_5b5094eaf861f'),
(318, 58, 'text_block1', '[:ua]<p class="text_bold text_upper">ТОВ «НБК Україна»</p>\r\n<span lang="UK" xml:lang="UK">Незалежна компанія, основним видом діяльності якої є імпорт, дистрибуція, а також інформаційно-технічний супровід продукції </span>Texaco<span lang="UK" xml:lang="UK"> на території України. </span>Ми є єдиним в Україні авторизованим дистриб''ютором мастильних матеріалів, спеціалізованих сервісних продуктів і охолоджувальних рідин Texaco.\r\n\r\nНаша компанія працює на підставі прямого контракту з компанією Chevron, яка протягом більш н<span lang="UK" xml:lang="UK">іж</span>ста років займає лідируючі позиції серед найбільших світових н<span lang="UK" xml:lang="UK">а</span>фтогазовидобувних компаній, розробників передових технологій і виробників високоякісних базових олив, синтетичних рідин і готової мастильної продукції.\r\n\r\nПоставки продукції здійснюються безпосередньо з логістичного центру Chevron в Бельгії, де розташований Європейський технологічний центр і виробляється продукція Texaco для країн європейського регіону (блендінговий завод Chevron в м. Гент).\r\n\r\nВся продукція, що поставляється в Україну, виробляється за оригінальними технологіями і має найвищий рівень якості, що підтверджено багаторічним споживчим досвідом практичного застосування, використанням оригінальних олив та рідин Texaco при первинній заливці і рекомендаціями від багатьох всесвітньо відомих виробників автотехніки та промислового обладнання<span lang="UK" xml:lang="UK">.</span>[:ru]<p class="text_bold text_upper">NBK Ukrained</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:]'),
(319, 58, '_text_block1', 'field_5b509515f8621'),
(320, 58, 'img_block2', '41'),
(321, 58, '_img_block2', 'field_5b509507f8620'),
(322, 58, 'text_block2', '[:ua]<p class="text_bold text_upper">Бренд Texaco</p>\r\nБренд Texaco прийшов до Європи понад сто років тому. Сьогодні він є частиною корпорації Chevron, має власне виробництво і науково-дослідні лабораторії по всьому світу. В рамках міжнародної корпорації продукція розробляється відповідно до вимог провідних виробників техніки та обладнання (OEM), Асоціації Європейських Виробників Автомобілів (ACEA) і Американського Інституту Палива (API). Мастильні матеріали Texaco виробляються на основі базових масел преміум-класу (група II і III) з використанням запатентованої технології багатостадійного гідропроцессінгу і з додаванням унікального пакету присадок. Корпорація, яка випускає мастильні матеріали Texaco, зробила революційний крок, розробивши кристально-чисті базові оливи II і III групи.\r\n\r\nНа сьогоднішній день Texaco є світовим лідером за обсягом виробництва базових масел вищого ступеня очищення. Виробничі потужності зосереджені в Бельгії. Науково-дослідний центр з лабораторією, яка забезпечена найсучаснішим обладнанням, розташований в Генті. Чудові експлуатаційні характеристики роблять лінійку продукції Texaco практично бездоганною.\r\n\r\nHavoline і Ursa - основні напрямки моторних мастильних матеріалів виробника, якість яких не тільки відповідає допускам і схваленням професійних асоціацій двигунобудування, а й перевершують їх за деякими показниками. Корпорація випускає високоякісні мастильні матеріали для легкових авто, комерційного транспорту, а також всіх видів спецтехніки. Компанія Texaco безперервно веде співпрацю зі світовими лідерами і асоціаціями двигунобудування, збирає і аналізує рекомендації автовласників. В результаті цього вдається створити унікальну продукцію, яка відповідає найвищим стандартам якості.[:ru]<p class="text_bold text_upper">NBK Ukraine</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:]'),
(323, 58, '_text_block2', 'field_5b509525f8622'),
(324, 58, 'brend_texaco', '[:ua]Про компанiю Chevron\r\n\r\nКорпорація Chevron веде свою історію з 1879 року, коли в Лос-Анджелесі була зареєстрована компанія «Пасифік Кост Ойл Компані» - родоначальник нинішнього гіганта світової енергетики. У 1900 році молода компанія, що розвивалася доволі швидко, була придбана Джоном Рокфеллером і увійшла до складу його тресту «Стандарт Ойл». У 1911 році фірма перетворилася в «Стандарт Ойл Компані оф Каліфорнія». У 20-30-х роках компанія почала інвестувати в міжнародну геологорозвідку і відкрила перші великі нафтові родовища в Бахрейні і Саудівській Аравії.\r\n\r\nУ 1936 році «Standart Oil» разом з компанією «Texaco» створили компанію «Caltex», що дозволило вийти на ринки Азії, Африки та Європи. Після Другої Світової війни активна геологорозвідувальна діяльність компанії призвела до відкриття нових багатих родовищ в Індонезії, Австралії, в Північному морі біля берегів Великобританії і в Мексиканській затоці.\r\n\r\nУ 1984 році «Стандарт Ойл Компані оф Каліфорнія» змінила свою назву, задіявши свій старий логотип Chevron, добре відомий мільйонам покупців палива і олив в усьому світі.\r\n\r\nУ 2001 році відбулося злиття компаній Шеврон і Тексако, в результаті чого була утворена найбільша в світі енергетична корпорація ChevronTexaco.\r\n\r\n9 травня 2005 року компанія ChevronTexaco була перетворена в Chevron Corporation.\r\n\r\nСьогодні Chevron Corporation - одна з найбільших в світі інтегрованих енергетичних компаній, яка охоплює всі ланки нафтового бізнесу: від геологорозвідки і видобутку нафти до переробки, транспортування і збуту нафтопродуктів і мастильних матеріалів по всьому світу через мережу офіційних дистриб''юторів. Корпорація Chevron активно представлена ​​більш ніж в 180 країнах світу.\r\n\r\nОсновні напрямки діяльності Chevron:\r\n\r\n• геологорозвідка родовищ;\r\n\r\n• видобуток і транспортування нафти, газу і газового конденсату;\r\n\r\n• виробництво і продаж палива;\r\n\r\n• виробництво і продаж електроенергії;\r\n\r\n• виробництво і продаж присадок для палива і олив;\r\n\r\n• виготовлення та продаж мастильних матеріалів.\r\n\r\nПовна лінійка мастильних матеріалів і охолоджуючих рідин (в тому числі Havoline, Delo і URSA) продається по всьому світу під брендами Chevron, Texaco і Caltex. Ці преміальні продукти допомагають поліпшити економію палива і подовжити період між замінами масла.\r\n\r\nНа сьогоднішній день компанії Chevron довіряють брендування масел своїм логотипом такі відомі виробники, як Volvo, DAF, Toyota. Роблячи вибір на користь мастильних матеріалів Chevron, Ви отримуєте продукт з гарантовано високою якістю, який допоможе зберегти Вашу техніку в чудовому стані на довгий час.[:ru]Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n\r\nРандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!![:]'),
(325, 58, '_brend_texaco', 'field_5b50936af861d'),
(326, 58, 'company_chevron', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n\r\nРандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n<ul>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n</ul>'),
(327, 58, '_company_chevron', 'field_5b5094d5f861e'),
(328, 60, 'img_block1', '40'),
(329, 60, '_img_block1', 'field_5b5094eaf861f'),
(330, 60, 'text_block1', '[:ru]<p class="text_bold text_upper">NBK Ukrainedd</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:ua]<p class="text_bold text_upper">NBK Ukrained</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:]'),
(331, 60, '_text_block1', 'field_5b509515f8621'),
(332, 60, 'img_block2', '41'),
(333, 60, '_img_block2', 'field_5b509507f8620'),
(334, 60, 'text_block2', '<p class="text_bold text_upper">NBK Ukraine</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.'),
(335, 60, '_text_block2', 'field_5b509525f8622'),
(336, 60, 'brend_texaco', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!'),
(337, 60, '_brend_texaco', 'field_5b50936af861d'),
(338, 60, 'company_chevron', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n<ul>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n</ul>'),
(339, 60, '_company_chevron', 'field_5b5094d5f861e'),
(340, 61, 'img_block1', '40'),
(341, 61, '_img_block1', 'field_5b5094eaf861f'),
(342, 61, 'text_block1', '[:ru]<p class="text_bold text_upper">NBK Ukraineddанлпр</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:ua]<p class="text_bold text_upper">NBK Ukraineddcdd</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:]'),
(343, 61, '_text_block1', 'field_5b509515f8621'),
(344, 61, 'img_block2', '41'),
(345, 61, '_img_block2', 'field_5b509507f8620'),
(346, 61, 'text_block2', '<p class="text_bold text_upper">NBK Ukraine</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.'),
(347, 61, '_text_block2', 'field_5b509525f8622'),
(348, 61, 'brend_texaco', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!'),
(349, 61, '_brend_texaco', 'field_5b50936af861d'),
(350, 61, 'company_chevron', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n<ul>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n</ul>'),
(351, 61, '_company_chevron', 'field_5b5094d5f861e'),
(352, 62, 'img_block1', '40'),
(353, 62, '_img_block1', 'field_5b5094eaf861f');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(354, 62, 'text_block1', '[:ua]<p class="text_bold text_upper">NBK Ukraineddcdd11111</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:ru]<p class="text_bold text_upper">NBK Ukraineddcddвввв</p>\r\nLorem ipsum dolor sit amаet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:]'),
(355, 62, '_text_block1', 'field_5b509515f8621'),
(356, 62, 'img_block2', '41'),
(357, 62, '_img_block2', 'field_5b509507f8620'),
(358, 62, 'text_block2', '<p class="text_bold text_upper">NBK Ukraine</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.'),
(359, 62, '_text_block2', 'field_5b509525f8622'),
(360, 62, 'brend_texaco', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!'),
(361, 62, '_brend_texaco', 'field_5b50936af861d'),
(362, 62, 'company_chevron', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n<ul>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n</ul>'),
(363, 62, '_company_chevron', 'field_5b5094d5f861e'),
(364, 63, '_edit_last', '1'),
(366, 63, 'position', 'normal'),
(367, 63, 'layout', 'no_box'),
(368, 63, 'hide_on_screen', ''),
(369, 63, '_edit_lock', '1533645548:1'),
(370, 64, '_edit_last', '1'),
(371, 64, '_wp_page_template', 'default'),
(372, 64, '_edit_lock', '1533646848:1'),
(374, 63, 'field_5b6993729f26b', 'a:13:{s:3:"key";s:19:"field_5b6993729f26b";s:5:"label";s:4:"test";s:4:"name";s:4:"test";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(375, 63, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"64";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(376, 66, 'test', '[:ua]текстЮА[:ru]текст[:]'),
(377, 66, '_test', 'field_5b6993729f26b'),
(378, 64, 'test', '[:ua]текстЮА[:ru]текст[:]'),
(379, 64, '_test', 'field_5b6993729f26b'),
(380, 21, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"11";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(381, 67, 'img_block1', '40'),
(382, 67, '_img_block1', 'field_5b5094eaf861f'),
(383, 67, 'text_block1', '[:ua]<p class="text_bold text_upper">NBK Ukraineddcdd11111</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:ru]<p class="text_bold text_upper">NBK Ukraineddcdd11111222</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.[:]'),
(384, 67, '_text_block1', 'field_5b509515f8621'),
(385, 67, 'img_block2', '41'),
(386, 67, '_img_block2', 'field_5b509507f8620'),
(387, 67, 'text_block2', '<p class="text_bold text_upper">NBK Ukraine</p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.'),
(388, 67, '_text_block2', 'field_5b509525f8622'),
(389, 67, 'brend_texaco', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!'),
(390, 67, '_brend_texaco', 'field_5b50936af861d'),
(391, 67, 'company_chevron', 'Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!\r\n<ul>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n 	<li>Рандомный текст!</li>\r\n</ul>'),
(392, 67, '_company_chevron', 'field_5b5094d5f861e');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-18 11:17:25', '2018-07-18 08:17:25', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', 'privet-mir__trashed', '', '', '2018-07-19 14:57:45', '2018-07-19 11:57:45', '', 0, 'http://nbkwordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-18 11:17:25', '2018-07-18 08:17:25', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://nbkwordpress/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-07-19 14:57:39', '2018-07-19 11:57:39', '', 0, 'http://nbkwordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-18 11:17:25', '2018-07-18 08:17:25', '<h2>Кто мы</h2><p>Наш адрес сайта: http://nbkwordpress.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email ("хеш") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность "Запомнить меня", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-07-19 14:57:39', '2018-07-19 11:57:39', '', 0, 'http://nbkwordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-07-18 11:21:20', '2018-07-18 08:21:20', '[text name class:form_name placeholder "Ф.И.О"]\r\n[email email class:form_email placeholder "E-mail"]\r\n[text subject class:form_subject placeholder "Тема"]\r\n[textarea message class:form_message placeholder "Введите сообщение..."]\r\n[submit class:form_submit "Отправить"]\n1\nNBK Ukraine "[your-subject]"\n[your-name] <wordpress@nbkwordpress>\ni.artuh@softvel.com\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта NBK Ukraine (http://nbkwordpress)\nReply-To: [your-email]\n\n\n\n\nNBK Ukraine "[your-subject]"\nNBK Ukraine <wordpress@nbkwordpress>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта NBK Ukraine (http://nbkwordpress)\nReply-To: i.artuh@softvel.com\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nКод введен неверно.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'modal_form', '', 'publish', 'closed', 'closed', '', 'kontaktnaya-forma-1', '', '', '2018-07-20 13:24:23', '2018-07-20 10:24:23', '', 0, 'http://nbkwordpress/?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2018-07-19 14:57:39', '2018-07-19 11:57:39', '<h2>Кто мы</h2><p>Наш адрес сайта: http://nbkwordpress.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email ("хеш") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность "Запомнить меня", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-07-19 14:57:39', '2018-07-19 11:57:39', '', 3, 'http://nbkwordpress/2018/07/19/3-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-07-19 14:57:39', '2018-07-19 11:57:39', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://nbkwordpress/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-07-19 14:57:39', '2018-07-19 11:57:39', '', 2, 'http://nbkwordpress/2018/07/19/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-07-19 14:57:45', '2018-07-19 11:57:45', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-07-19 14:57:45', '2018-07-19 11:57:45', '', 1, 'http://nbkwordpress/2018/07/19/1-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-07-19 14:58:08', '2018-07-19 11:58:08', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2018-07-20 14:12:51', '2018-07-20 11:12:51', '', 0, 'http://nbkwordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-07-19 14:58:08', '2018-07-19 11:58:08', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-19 14:58:08', '2018-07-19 11:58:08', '', 9, 'http://nbkwordpress/2018/07/19/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-07-19 15:00:53', '2018-07-19 12:00:53', '', '[:ua]Про нас[:ru]О нас[:]', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2018-08-07 16:03:44', '2018-08-07 13:03:44', '', 0, 'http://nbkwordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-07-19 15:00:53', '2018-07-19 12:00:53', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-07-19 15:00:53', '2018-07-19 12:00:53', '', 11, 'http://nbkwordpress/2018/07/19/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-07-19 15:08:20', '2018-07-19 12:08:20', '', 'Каталог', '', 'publish', 'closed', 'closed', '', 'katalog', '', '', '2018-07-19 15:08:20', '2018-07-19 12:08:20', '', 0, 'http://nbkwordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-07-19 15:08:20', '2018-07-19 12:08:20', '', 'Каталог', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-07-19 15:08:20', '2018-07-19 12:08:20', '', 13, 'http://nbkwordpress/2018/07/19/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-07-19 15:11:42', '2018-07-19 12:11:42', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2018-07-19 15:11:42', '2018-07-19 12:11:42', '', 0, 'http://nbkwordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-07-19 15:11:42', '2018-07-19 12:11:42', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-07-19 15:11:42', '2018-07-19 12:11:42', '', 15, 'http://nbkwordpress/2018/07/19/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-07-19 15:13:48', '2018-07-19 12:13:48', '', 'Товар', '', 'publish', 'closed', 'closed', '', 'tovar', '', '', '2018-07-19 15:13:48', '2018-07-19 12:13:48', '', 0, 'http://nbkwordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-07-19 15:13:48', '2018-07-19 12:13:48', '', 'Товар', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-07-19 15:13:48', '2018-07-19 12:13:48', '', 17, 'http://nbkwordpress/2018/07/19/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-07-19 16:10:50', '2018-07-19 13:10:50', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'acf_glavnaya', '', '', '2018-07-20 14:12:19', '2018-07-20 11:12:19', '', 0, 'http://nbkwordpress/?post_type=acf&#038;p=19', 0, 'acf', '', 0),
(20, 1, '2018-07-19 16:27:44', '2018-07-19 13:27:44', '', 'Товар', '', 'publish', 'closed', 'closed', '', 'acf_tovar', '', '', '2018-07-20 17:15:16', '2018-07-20 14:15:16', '', 0, 'http://nbkwordpress/?post_type=acf&#038;p=20', 0, 'acf', '', 0),
(21, 1, '2018-07-19 16:42:16', '2018-07-19 13:42:16', '', 'О нас', '', 'publish', 'closed', 'closed', '', 'acf_o-nas', '', '', '2018-08-07 16:03:28', '2018-08-07 13:03:28', '', 0, 'http://nbkwordpress/?post_type=acf&#038;p=21', 0, 'acf', '', 0),
(22, 1, '2018-07-19 17:08:07', '2018-07-19 14:08:07', '{\n    "nbk::name": {\n        "value": "\\u0422\\u041e\\u0412\\u0410\\u0420\\u0418\\u0421\\u0422\\u0412\\u041e \\u0417 \\u041e\\u0411\\u041c\\u0415\\u0416\\u0415\\u041d\\u041d\\u041e\\u042e \\u0412I\\u0414\\u041f\\u041e\\u0412I\\u0414\\u0410\\u041b\\u042c\\u041dI\\u0421\\u0422\\u042e \\"\\u041d\\u0411\\u041a \\u0423\\u041a\\u0420\\u0410\\u0407\\u041d\\u0410\\"",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-07-19 14:07:29"\n    },\n    "nbk::mailing_address": {\n        "value": "01004, \\u043c.\\u041a\\u0438\\u0457\\u0432",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-07-19 14:07:33"\n    },\n    "nbk::street": {\n        "value": "\\u0432\\u0443\\u043b.\\u0427\\u0435\\u0440\\u0432\\u043e\\u043d\\u043e\\u0430\\u0440\\u043ci\\u0439\\u0441\\u044c\\u043a\\u0430, 9/2, \\u043e\\u0444i\\u0441 74",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-07-19 14:07:38"\n    },\n    "nbk::telephone": {\n        "value": "(044) 496 31 30",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-07-19 14:07:51"\n    },\n    "nbk::fax": {\n        "value": "(044) 496 52 19",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-07-19 14:07:56"\n    },\n    "nbk::email": {\n        "value": "office@nbk-ukr.com",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-07-19 14:08:01"\n    },\n    "nbk::name_manager": {\n        "value": "\\u041e\\u0445\\u0440i\\u043c\\u0435\\u043d\\u043a\\u043e \\u0413\\u0430\\u043d\\u043d\\u0430 \\u0413\\u0440\\u0438\\u0433\\u043e\\u0440i\\u0432\\u043d\\u0430",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-07-19 14:08:07"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3b2ac865-a828-47aa-9621-3bb741500a01', '', '', '2018-07-19 17:08:07', '2018-07-19 14:08:07', '', 0, 'http://nbkwordpress/?p=22', 0, 'customize_changeset', '', 0),
(32, 1, '2018-07-20 13:32:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-20 13:32:53', '0000-00-00 00:00:00', '', 0, 'http://nbkwordpress/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2018-07-20 13:32:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-20 13:32:53', '0000-00-00 00:00:00', '', 0, 'http://nbkwordpress/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-07-20 13:34:00', '2018-07-20 10:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-07-20 13:37:55', '2018-07-20 10:37:55', '', 0, 'http://nbkwordpress/?p=34', 3, 'nav_menu_item', '', 0),
(35, 1, '2018-07-20 13:34:00', '2018-07-20 10:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-07-20 13:37:55', '2018-07-20 10:37:55', '', 0, 'http://nbkwordpress/?p=35', 5, 'nav_menu_item', '', 0),
(36, 1, '2018-07-20 13:34:00', '2018-07-20 10:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2018-07-20 13:37:55', '2018-07-20 10:37:55', '', 0, 'http://nbkwordpress/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2018-07-20 13:32:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-20 13:32:53', '0000-00-00 00:00:00', '', 0, 'http://nbkwordpress/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-07-20 13:34:00', '2018-07-20 10:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2018-07-20 13:37:55', '2018-07-20 10:37:55', '', 0, 'http://nbkwordpress/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2018-07-20 13:34:00', '2018-07-20 10:34:00', '', 'Подбор масла', '', 'publish', 'closed', 'closed', '', 'podbor-masla', '', '', '2018-07-20 13:37:55', '2018-07-20 10:37:55', '', 0, 'http://nbkwordpress/?p=39', 4, 'nav_menu_item', '', 0),
(40, 1, '2018-07-20 13:50:07', '2018-07-20 10:50:07', '', 'certificate', '', 'inherit', 'open', 'closed', '', 'certificate', '', '', '2018-07-20 13:50:07', '2018-07-20 10:50:07', '', 11, 'http://nbkwordpress/wp-content/uploads/2018/07/certificate.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-07-20 13:50:15', '2018-07-20 10:50:15', '', 'License', '', 'inherit', 'open', 'closed', '', 'license', '', '', '2018-07-20 13:50:15', '2018-07-20 10:50:15', '', 11, 'http://nbkwordpress/wp-content/uploads/2018/07/License.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-07-20 13:51:27', '2018-07-20 10:51:27', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-07-20 13:51:27', '2018-07-20 10:51:27', '', 11, 'http://nbkwordpress/2018/07/20/11-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-07-20 13:54:19', '2018-07-20 10:54:19', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-07-20 13:54:19', '2018-07-20 10:54:19', '', 11, 'http://nbkwordpress/2018/07/20/11-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-07-20 14:05:54', '2018-07-20 11:05:54', '', 'slider2', '', 'inherit', 'open', 'closed', '', 'slider2', '', '', '2018-07-20 14:05:54', '2018-07-20 11:05:54', '', 9, 'http://nbkwordpress/wp-content/uploads/2018/07/slider2.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-07-20 14:06:06', '2018-07-20 11:06:06', '', 'slider3', '', 'inherit', 'open', 'closed', '', 'slider3', '', '', '2018-07-20 14:06:06', '2018-07-20 11:06:06', '', 9, 'http://nbkwordpress/wp-content/uploads/2018/07/slider3.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-07-20 14:07:21', '2018-07-20 11:07:21', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-20 14:07:21', '2018-07-20 11:07:21', '', 9, 'http://nbkwordpress/2018/07/20/9-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-07-20 14:12:45', '2018-07-20 11:12:45', '', 'slider1', '', 'inherit', 'open', 'closed', '', 'slider1', '', '', '2018-07-20 14:12:45', '2018-07-20 11:12:45', '', 9, 'http://nbkwordpress/wp-content/uploads/2018/07/slider1.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-07-20 15:04:15', '2018-07-20 12:04:15', 'Описание описание описание описание описание описание описание описание', 'Название', '', 'publish', 'open', 'open', '', 'nazvanie', '', '', '2018-07-20 15:04:15', '2018-07-20 12:04:15', '', 0, 'http://nbkwordpress/?p=48', 0, 'post', '', 0),
(49, 1, '2018-07-20 15:04:15', '2018-07-20 12:04:15', 'Описание описание описание описание описание описание описание описание', 'Название', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-07-20 15:04:15', '2018-07-20 12:04:15', '', 48, 'http://nbkwordpress/2018/07/20/48-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-07-20 16:56:46', '2018-07-20 13:56:46', 'Полное описание данного товара', 'Название товара!', '', 'publish', 'closed', 'closed', '', 'nazvanie-tovara', '', '', '2018-07-21 19:11:18', '2018-07-21 16:11:18', '', 0, 'http://nbkwordpress/?post_type=product&#038;p=51', 0, 'product', '', 0),
(52, 1, '2018-07-20 16:59:44', '2018-07-20 13:59:44', '', 'category9', '', 'inherit', 'open', 'closed', '', 'category9', '', '', '2018-07-20 16:59:44', '2018-07-20 13:59:44', '', 51, 'http://nbkwordpress/wp-content/uploads/2018/07/category9.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2018-07-22 12:25:43', '2018-07-22 09:25:43', '', 'Название товара коммерческого транспорта', '', 'publish', 'closed', 'closed', '', 'nazvanie-tovara-kommercheskogo-transporta', '', '', '2018-07-22 12:25:43', '2018-07-22 09:25:43', '', 0, 'http://nbkwordpress/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2018-08-07 13:19:42', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-07 13:19:42', '0000-00-00 00:00:00', '', 0, 'http://nbkwordpress/?p=55', 0, 'post', '', 0),
(56, 1, '2018-08-07 13:36:51', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 13:36:51', '0000-00-00 00:00:00', '', 0, 'http://nbkwordpress/?post_type=product&p=56', 0, 'product', '', 0),
(57, 1, '2018-08-07 14:22:40', '2018-08-07 11:22:40', '', '[:ua]Про нас[:ru]О нас[:]', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-07 14:22:40', '2018-08-07 11:22:40', '', 11, 'http://nbkwordpress/11-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-08-07 15:21:01', '2018-08-07 12:21:01', '', '[:ua]Про нас[:ru]О нас[:]', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-07 15:21:01', '2018-08-07 12:21:01', '', 11, 'http://nbkwordpress/11-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-08-07 15:26:39', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 15:26:39', '0000-00-00 00:00:00', '', 0, 'http://nbkwordpress/?page_id=59', 0, 'page', '', 0),
(60, 1, '2018-08-07 15:36:43', '2018-08-07 12:36:43', '', '[:ru]О нас[:ua]Про нас[:]', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-07 15:36:43', '2018-08-07 12:36:43', '', 11, 'http://nbkwordpress/11-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-08-07 15:37:39', '2018-08-07 12:37:39', '', '[:ru]О нас[:ua]Про нас[:]', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-07 15:37:39', '2018-08-07 12:37:39', '', 11, 'http://nbkwordpress/11-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-08-07 15:39:50', '2018-08-07 12:39:50', '', '[:ua]Про нас[:ru]О нас[:]', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-07 15:39:50', '2018-08-07 12:39:50', '', 11, 'http://nbkwordpress/11-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-08-07 15:40:37', '2018-08-07 12:40:37', '', 'тест', '', 'publish', 'closed', 'closed', '', 'acf_test', '', '', '2018-08-07 15:41:30', '2018-08-07 12:41:30', '', 0, 'http://nbkwordpress/?post_type=acf&#038;p=63', 0, 'acf', '', 0),
(64, 1, '2018-08-07 15:40:58', '2018-08-07 12:40:58', '[:ua]текстЮА[:ru]текст[:]', '[:ua]тестЮА[:ru]тест[:]', '', 'publish', 'closed', 'closed', '', 'testyua', '', '', '2018-08-07 15:41:48', '2018-08-07 12:41:48', '', 0, 'http://nbkwordpress/?page_id=64', 0, 'page', '', 0),
(65, 1, '2018-08-07 15:40:58', '2018-08-07 12:40:58', '[:ua]текстЮА[:ru]текст[:]', '[:ua]тестЮА[:ru]тест[:]', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-08-07 15:40:58', '2018-08-07 12:40:58', '', 64, 'http://nbkwordpress/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-08-07 15:41:48', '2018-08-07 12:41:48', '[:ua]текстЮА[:ru]текст[:]', '[:ua]тестЮА[:ru]тест[:]', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-08-07 15:41:48', '2018-08-07 12:41:48', '', 64, 'http://nbkwordpress/64-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-08-07 16:03:44', '2018-08-07 13:03:44', '', '[:ua]Про нас[:ru]О нас[:]', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-07 16:03:44', '2018-08-07 13:03:44', '', 11, 'http://nbkwordpress/11-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0),
(2, 'Новости', 'news', 0),
(3, 'menu_header', 'menu_header', 0),
(4, 'для Легкових автомобiлiв', 'legkovye', 0),
(5, 'для Комерцiйного транспорту', 'dlya-komertsijnogo-transportu', 0),
(6, 'Трансмiсшйнi оливи та рiдини', 'transmisshjni-olivi-ta-ridini', 0),
(7, 'для Тракторiв та позашляхової технiки', 'dlya-traktoriv-ta-pozashlyahovoyi-tehniki', 0),
(8, 'для Мототехнiки та двигунiв для човнiв', 'dlya-mototehniki-ta-dviguniv-dlya-chovniv', 0),
(9, 'для двигунiв морських суден та тепловозiв', 'dlya-dviguniv-morskih-suden-ta-teplovoziv', 0),
(10, 'для Промислового застосування', 'dlya-promislovogo-zastosuvannya', 0),
(11, 'Пластичнi мастила', 'plastichni-mastila', 0),
(12, 'Гальмiвнi та охолоджуючi рiдини', 'galmivni-ta-oholodzhuyuchi-ridini', 0),
(13, 'Спецiалiзованi сервiснi продукти', 'spetsializovani-servisni-produkti', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(34, 3, 0),
(35, 3, 0),
(36, 3, 0),
(38, 3, 0),
(39, 3, 0),
(48, 2, 0),
(51, 4, 0),
(54, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'product_taxonomy', '', 0, 1),
(5, 5, 'product_taxonomy', '', 0, 1),
(6, 6, 'product_taxonomy', '', 0, 0),
(7, 7, 'product_taxonomy', '', 0, 0),
(8, 8, 'product_taxonomy', '', 0, 0),
(9, 9, 'product_taxonomy', '', 0, 0),
(10, 10, 'product_taxonomy', '', 0, 0),
(11, 11, 'product_taxonomy', '', 0, 0),
(12, 12, 'product_taxonomy', '', 0, 0),
(13, 13, 'product_taxonomy', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"15b7ba1530ae367704e58b08c839f1c2224f7fc93e817ac9ea104f60dae87e2c";a:4:{s:10:"expiration";i:1533809980;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1533637180;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '55'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(20, 1, '_yoast_wpseo_profile_updated', '1532001815'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:20:"add-product_taxonomy";}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1'),
(25, 1, 'wp_user-settings-time', '1532084055'),
(26, 1, 'closedpostboxes_product', 'a:0:{}'),
(27, 1, 'metaboxhidden_product', 'a:3:{i:0;s:6:"acf_19";i:1;s:6:"acf_21";i:2;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BGv2QBCxBWuz.n0DQWSloU8n3v2xUu1', 'admin', 'i.artuh@softvel.com', '', '2018-07-18 08:17:25', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_links`
--

CREATE TABLE IF NOT EXISTS `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_meta`
--

CREATE TABLE IF NOT EXISTS `wp_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(9, 0, 0),
(11, 0, 0),
(13, 0, 0),
(15, 0, 0),
(17, 0, 0),
(48, 0, 0),
(51, 0, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Индексы таблицы `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=450;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=393;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
