-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2015 at 01:25 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `backfeed`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-08-10 14:43:02', '2015-08-10 14:43:02', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
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
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mc4wp_log`
--

CREATE TABLE IF NOT EXISTS `wp_mc4wp_log` (
  `ID` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `list_ids` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `success` tinyint(1) DEFAULT '1',
  `data` text,
  `related_object_ID` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://new.backfeed.cc', 'yes'),
(2, 'home', 'http://new.backfeed.cc', 'yes'),
(3, 'blogname', 'Backfeed', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@backfeed.cc', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:53:"BF-Collaborative-Tagline/WP-Collaborative-Tagline.php";i:1;s:11:"acf/acf.php";i:2;s:45:"mailchimp-for-wp-pro/mailchimp-for-wp-pro.php";i:3;s:13:"soil/soil.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'backfeed', 'yes'),
(42, 'stylesheet', 'backfeed', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33055', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
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
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31536', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";N;s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:7:{i:1440499985;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"2b8c7f2cec272332aa887b58e7ba4bee";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:68;}}}}i:1440513782;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1440513789;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1440529920;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1440534500;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:20:"wp_batch_split_terms";a:70:{i:1440429595;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440429725;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440429785;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440429846;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440429861;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492648;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492649;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492650;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492654;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492660;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492672;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492735;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492822;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492845;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492852;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492855;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492863;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492867;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492868;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492874;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492883;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440492947;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493068;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493143;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493147;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493148;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493214;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493334;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493394;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493500;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493515;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493523;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493553;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493587;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493647;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493707;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493733;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493735;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493738;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493739;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493858;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440493979;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440494006;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440494084;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440494095;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440494096;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440494098;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440494218;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440494572;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440499390;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440499454;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440499574;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440499694;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440499807;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440499867;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440499987;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440500108;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440500229;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440500348;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440501185;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440501193;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440501250;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440501309;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440501376;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440501436;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440501556;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440501676;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440501736;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440501857;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440501977;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}s:7:"version";i:2;}', 'yes'),
(99, '_transient_random_seed', '6d14eab827f9abe1df088621947d9383', 'yes'),
(100, 'nonce_key', 'mIgU}B)grx!VK;UyILGmiT`agm6Kw9)A#yZyr0[~(qSw|75D;Zk_&dtF4|IG=Rv#', 'yes'),
(101, 'nonce_salt', '_y>-+l@O9M!dfC6>~Fom dn.gvctD3fLmMOssFKV|:y?lXxQpc?:GgeKjGiMD%D{', 'yes'),
(112, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:16:"info@backfeed.cc";s:7:"version";s:5:"4.2.4";s:9:"timestamp";i:1439217784;}', 'yes'),
(113, 'auth_key', 'h%x4NhJ~s$SeaU&54oM9Y*Qc?1c85%AKux@]2@Swg9D!-v02%E`FP9B?q{Dottan', 'yes'),
(114, 'auth_salt', '[PwcE &g#oS!4),Z0w0skmPix$+nmxx$Q&%u.W?v05P->$N0(>OJ!_i1WV5sT`L[', 'yes'),
(115, 'logged_in_key', '}wA{$>nO(9h9);k:0h$)<KZj_?W?r749%pZd#DvRpND0p6*A}/&RjXpgW9zeElZD', 'yes'),
(116, 'logged_in_salt', 'Q9kd,iG1m;>+OQnu1J$ut>06^3k36h.N^%BU~(bh j#l_:u6I2[DF9EOFSouyrN@', 'yes'),
(140, '_transient_twentyfifteen_categories', '1', 'yes'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(161, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1439289813;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(162, 'current_theme', 'Sage Starter Theme', 'yes'),
(163, 'theme_mods_backfeed', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:18:"primary_navigation";i:2;}}', 'yes'),
(164, 'theme_switched', '', 'yes'),
(167, 'acf_version', '5.2.2', 'yes'),
(212, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(213, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(214, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(216, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(218, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(343, '_site_transient_timeout_browser_dfb567abc98cdebfcd7a14e5c20a7a10', '1441033054', 'yes'),
(344, '_site_transient_browser_dfb567abc98cdebfcd7a14e5c20a7a10', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:11:"46.0.2486.0";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(347, '_transient_timeout_acf_pro_get_remote_info', '1440535771', 'no'),
(348, '_transient_acf_pro_get_remote_info', 'a:15:{s:4:"name";s:26:"Advanced Custom Fields Pro";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:36:"http://www.advancedcustomfields.com/";s:7:"version";s:5:"5.3.0";s:6:"author";s:13:"elliot condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:3:"4.3";s:4:"tags";a:30:{i:0;s:5:"5.2.9";i:1;s:5:"5.2.8";i:2;s:5:"5.2.7";i:3;s:5:"5.2.6";i:4;s:5:"5.2.5";i:5;s:5:"5.2.4";i:6;s:5:"5.2.3";i:7;s:5:"5.2.2";i:8;s:5:"5.2.1";i:9;s:5:"5.2.0";i:10;s:5:"5.1.9";i:11;s:5:"5.1.8";i:12;s:5:"5.1.7";i:13;s:5:"5.1.6";i:14;s:5:"5.1.5";i:15;s:5:"5.1.4";i:16;s:5:"5.1.3";i:17;s:5:"5.1.2";i:18;s:5:"5.1.1";i:19;s:5:"5.1.0";i:20;s:5:"5.0.9";i:21;s:5:"5.0.8";i:22;s:5:"5.0.7";i:23;s:5:"5.0.6";i:24;s:5:"5.0.5";i:25;s:5:"5.0.4";i:26;s:5:"5.0.3";i:27;s:5:"5.0.2";i:28;s:5:"5.0.1";i:29;s:5:"5.0.0";}s:6:"tagged";s:151:"custom, field, custom field, advanced, simple fields, magic fields, more fields, repeater, matrix, post, type, text, textarea, file, image, edit, admin";s:11:"description";s:4328:"<p>Advanced Custom Fields is the perfect solution for any WordPress website which needs more flexible data like other Content Management Systems. </p>\n<ul><li>Visually create your Fields</li><li>Select from multiple input types (text, textarea, wysiwyg, image, file, page link, post object, relationship, select, checkbox, radio buttons, date picker, true / false, repeater, flexible content, gallery and more to come!)</li><li>Assign your fields to multiple edit pages (via custom location rules)</li><li>Easily load data through a simple and friendly API</li><li>Uses the native WordPress custom post type for ease of use and fast processing</li><li>Uses the native WordPress metadata for ease of use and fast processing</li></ul>\n<h4> Field Types </h4>\n<ul><li>Text (type text, api returns text)</li><li>Text Area (type text, api returns text)</li><li>Number (type number, api returns integer)</li><li>Email (type email, api returns text)</li><li>Password (type password, api returns text)</li><li>WYSIWYG (a WordPress wysiwyg editor, api returns html)</li><li>Image (upload an image, api returns the url)</li><li>File (upload a file, api returns the url)</li><li>Select (drop down list of choices, api returns chosen item)</li><li>Checkbox (tickbox list of choices, api returns array of choices)</li><li>Radio Buttons ( radio button list of choices, api returns chosen item)</li><li>True / False (tick box with message, api returns true or false)</li><li>Page Link (select 1 or more page, post or custom post types, api returns the selected url)</li><li>Post Object (select 1 or more page, post or custom post types, api returns the selected post objects)</li><li>Relationship (search, select and order post objects with a tidy interface, api returns the selected post objects)</li><li>Taxonomy (select taxonomy terms with options to load, display and save, api returns the selected term objects)</li><li>User (select 1 or more WP users, api returns the selected user objects)</li><li>Google Maps (interactive map, api returns lat,lng,address data)</li><li>Date Picker (jquery date picker, options for format, api returns string)</li><li>Color Picker (WP color swatch picker)</li><li>Tab (Group fields into tabs)</li><li>Message (Render custom messages into the fields)</li><li>Repeater (ability to create repeatable blocks of fields!)</li><li>Flexible Content (ability to create flexible blocks of fields!)</li><li>Gallery (Add, edit and order multiple images in 1 simple field)</li><li>[Custom](<a href="http://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)">www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)</a> (Create your own field type!)</li></ul>\n<h4> Tested on </h4>\n<ul><li>Mac Firefox 	:)</li><li>Mac Safari 	:)</li><li>Mac Chrome	:)</li><li>PC Safari 	:)</li><li>PC Chrome		:)</li><li>PC Firefox	:)</li><li>iPhone Safari :)</li><li>iPad Safari 	:)</li><li>PC ie7		:S</li></ul>\n<h4> Website </h4>\n<p><a href="http://www.advancedcustomfields.com/">www.advancedcustomfields.com/</a></p>\n<h4> Documentation </h4>\n<ul><li>[Getting Started](<a href="http://www.advancedcustomfields.com/resources/#getting-started)">www.advancedcustomfields.com/resources/#getting-started)</a></li><li>[Field Types](<a href="http://www.advancedcustomfields.com/resources/#field-types)">www.advancedcustomfields.com/resources/#field-types)</a></li><li>[Functions](<a href="http://www.advancedcustomfields.com/resources/#functions)">www.advancedcustomfields.com/resources/#functions)</a></li><li>[Actions](<a href="http://www.advancedcustomfields.com/resources/#actions)">www.advancedcustomfields.com/resources/#actions)</a></li><li>[Filters](<a href="http://www.advancedcustomfields.com/resources/#filters)">www.advancedcustomfields.com/resources/#filters)</a></li><li>[How to guides](<a href="http://www.advancedcustomfields.com/resources/#how-to)">www.advancedcustomfields.com/resources/#how-to)</a></li><li>[Tutorials](<a href="http://www.advancedcustomfields.com/resources/#tutorials)">www.advancedcustomfields.com/resources/#tutorials)</a></li></ul>\n<h4> Bug Submission and Forum Support </h4>\n<p><a href="http://support.advancedcustomfields.com/">support.advancedcustomfields.com/</a></p>\n<h4> Please Vote and Enjoy </h4>\n<p>Your votes really make a difference! Thanks.</p>\n";s:12:"installation";s:467:"<ol><li>Upload <code>advanced-custom-fields</code> to the <code>/wp-content/plugins/</code> directory</li><li>Activate the plugin through the <code>Plugins</code> menu in WordPress</li><li>Click on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li>Your custom field group will now appear on the page / post / template you specified in the field group''s location rules!</li><li>Read the documentation to display your data: </li></ol>\n";s:9:"changelog";s:7246:"<h4> 5.3.0 </h4>\n<ul><li>WYSIWYG field: Fixed <code>Visual/Text</code> toggle bug with WP 4.3</li><li>Select field: Fixed Select2 bug hiding selected choices</li></ul>\n<h4> 5.2.9 </h4>\n<ul><li>Field group: Added new <code>status</code> setting to enable/disable</li><li>Field group: Added new <code>description</code> setting shown to developers when viewing the field group list</li><li>Field group: Moved <code>Show field keys</code> Screen Option within existing <code>Show on Screen</code> checkboxes</li><li>Tab field: Fixed missing min-height to left aligned tab wrapper</li><li>Relationship field: Added timeout to reduce AJAX requests whilst typing in search</li><li>Flexible Content field: Fixed minor JS bug where removing a layout would not update the order numbers</li><li>Core: Fixed bug validating uppercase file extensions</li><li>Core: Renamed menu items</li><li>Core: Replace sprite icons with font</li><li>Core: Added new setting <code>export_textdomain</code> to add __() to generated export code</li><li>Core: Fixed conflict with Post Type Order plugin causing issues when querying posts</li><li>Core: Fixed conflict with WPML causing issues when querying posts</li><li>Core: Added compatibility for WP 4.3</li><li>Core: Minor fixes and improvements</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li></ul>\n<h4> 5.2.8 </h4>\n<ul><li>Image field: Added selection restrictions in media popup (width, height, size, type)</li><li>File field: Same as above</li><li>Gallery field: Same as above</li><li>Tab field: Added new <code>endpoint</code> setting - allows multiple tab groups</li><li>Tab field: Improved CSS/JS to allow individual tab groups to use different alignments (left/top)</li><li>Repeater field: Added logic to delete nested sub field values (grand children)</li><li>Options page: Added new <code>autoload</code> setting</li><li>Core: Added new filter <code>acf/prepare_field</code></li><li>Core: Added upload validation logic to ignore filetype case sensitivity</li><li>Core: Fixed upload issue when filesize restriction contained a decimal place</li><li>Core: Improved validation/save JS compatibility with 3rd party plugins</li><li>Core: Updated Select2 library to v3.5.2</li><li>Core: Fixed bug hiding Select2 choices when multiple found with the same label</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Italian translation - thanks to Davide Pantè & Francesco Mazzola</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updating Finnish translation - thanks to Sauli Rajala</li></ul>\n<h4> 5.2.7 </h4>\n<ul><li>Taxonomy field: Split setting <code>load_save_terms</code> into <code>load_terms</code> and <code>save_terms</code></li><li>Select field: Fixed bug causing values containing <code>,</code> to fail</li><li>Checkbox field: Fixed bug causing values containing <code>,</code> to fail</li><li>Checkbox field: Added new <code>toggle all</code> setting</li><li>User field: Added new filters <code>acf/fields/user/result</code> and <code>acf/fields/user/search_columns</code></li><li>Gallery field: Added logic to increase sidebar width when space is available</li><li>Options page: Added new <code>post_id</code> setting to customise where values are loaded and saved</li><li>API: Improved `get_field()` to better handle no value</li><li>API: Optimised asset loading when using the `acf_form()` function</li><li>API: Added new function `delete_sub_field()`</li><li>Core: Added new `acf/init` action when ACF has loaded all functionality</li><li>Core: Added compatibility with Select2 language translations</li><li>Core: Changed compatibility filter default to false</li><li>Core: Minor fixes and improvements</li><li>Language: Updated German translation - thanks to Thomas Meyer</li><li>Language: Updated French Translation - thanks to Maxime Bernard-Jacquet</li><li>Language: Updated Persian translation - thanks to Kamel</li></ul>\n<h4> 5.2.6 </h4>\n<ul><li>Core: Improved validation logic to display HTML5 validation messages</li><li>Core: Improved conditional logic performance for large field groups</li><li>Core: Removed updates menu item when not activated as a plugin (included within theme)</li><li>Core: Fixed various JS performance issues</li><li>Core: Minor fixes and improvements</li><li>Core: Added compatibility for saving widget in <code>accessibility mode</code></li><li>Language: Added Finnish translation - thanks to Sauli Rajala</li></ul>\n<h4> 5.2.5 </h4>\n<ul><li>Core: Fixed JS error preventing changes to large field groups</li><li>Language: Added Romanian translation - thanks to Eduard Ungureanu</li></ul>\n<h4> 5.2.4 </h4>\n<ul><li>WYSIWYG field: Fixed bug where new editor is not focused when adding media</li><li>Core: Added new <code>uploader</code> setting to `acf_form()` options for basic upload inputs</li><li>Core: Fixed Multisite loop when WordPress MU Domain Mapping plugin is active</li><li>Core: Improved CSS when editing taxonomy terms and users</li><li>Core: Fixed validation bugs when clicking save or preview </li><li>Core: Added compatibility with WPML translations when field group is not set as a translatable post type</li><li>Core: Many minor fixes and improvements</li></ul>\n<h4> 5.2.3 </h4>\n<ul><li>Taxonomy field: Added button and popup to create new terms</li><li>Taxonomy field: Added new <code>Create Terms</code> setting to prevent popup</li><li>Core: Added network database upgrade admin page and functionality</li><li>Core: Increased required WP version from 3.5 to 3.6</li><li>Core: Fixed Select2 dependancy conflict with WooCommerce</li><li>Core: Fixed WPML bug where field group translation information is lost</li><li>Core: Fixed conditional logic bug where showing a parent field would override sub field conditional logic</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Persian translation - thanks to Kamel</li></ul>\n<h4> 5.2.2 </h4>\n<ul><li>Image field: Fixed UI bug when image has been removed via media library</li><li>Relationship field: Added new minimum selection setting</li><li>Select field: Fixed bug when searching for a numeric value</li><li>Tab field: Fixed conditional logic bug</li><li>Field group: Added compatibility for custom status in <code>Post Status</code> location rule</li><li>Core: Added new `show_updates` setting to prevent plugin updates</li><li>Core: Added compatibility for 3rd party update management websites</li><li>Core: Added spinner when saving taxonomy term, user and front end form</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Slovak translation - thanks to Ján Fajčák</li></ul>\n<p> </p>\n<h4> 5.2.1 </h4>\n<ul><li>Core: Fixed bug where <code>Taxonomy</code> field group location rule would change to <code>Post Taxonomy</code></li><li>Core: Fixed bug where field group postboxes would disappear from post edit screen</li><li>Core: Fixed bug where <code>Uploaded to post</code> setting would not work on front end image/file/gallery fields</li><li>Core: Fixed bug where multiple conditional logic tabs would not display correctly</li><li>Language: Updated Japanese translation - thanks to Shogo Kato</li></ul>\n";s:14:"upgrade_notice";s:550:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="http://www.advancedcustomfields.com/resources/acfcompatibility/">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";}', 'no'),
(355, '_site_transient_timeout_theme_roots', '1440494373', 'yes'),
(356, '_site_transient_theme_roots', 'a:1:{s:8:"backfeed";s:7:"/themes";}', 'yes'),
(361, 'finished_splitting_shared_terms', '0', 'yes'),
(363, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1440493945;s:7:"checked";a:1:{s:8:"backfeed";s:5:"8.2.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(364, 'db_upgraded', '', 'yes'),
(368, 'rewrite_rules', 'a:89:{s:10:"tagline/?$";s:27:"index.php?post_type=tagline";s:40:"tagline/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=tagline&feed=$matches[1]";s:35:"tagline/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=tagline&feed=$matches[1]";s:27:"tagline/page/([0-9]{1,})/?$";s:45:"index.php?post_type=tagline&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"tagline/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"tagline/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"tagline/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"tagline/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"tagline/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"tagline/([^/]+)/trackback/?$";s:34:"index.php?tagline=$matches[1]&tb=1";s:36:"tagline/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?tagline=$matches[1]&paged=$matches[2]";s:43:"tagline/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?tagline=$matches[1]&cpage=$matches[2]";s:28:"tagline/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?tagline=$matches[1]&page=$matches[2]";s:24:"tagline/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"tagline/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"tagline/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"tagline/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"tagline/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(369, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.3.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.3-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.3";s:7:"version";s:3:"4.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1440492790;s:15:"version_checked";s:3:"4.3";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 19:10:20";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/zh_CN.zip";s:10:"autoupdate";b:1;}}}', 'yes'),
(373, 'can_compress_scripts', '1', 'yes'),
(375, '_transient_timeout_plugin_slugs', '1440587535', 'no'),
(376, '_transient_plugin_slugs', 'a:4:{i:0;s:11:"acf/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:45:"mailchimp-for-wp-pro/mailchimp-for-wp-pro.php";i:3;s:13:"soil/soil.php";}', 'no'),
(378, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1440503403', 'yes'),
(379, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5223";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3269";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3204";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2734";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2503";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2001";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1906";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1836";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1787";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1769";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1738";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1728";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1621";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1419";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1357";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1299";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1207";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1165";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1150";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1021";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"975";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"942";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"932";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"896";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"865";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"853";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"806";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"791";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"767";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"743";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"738";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"736";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"695";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"687";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"682";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"669";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"649";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"645";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"640";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"639";}}', 'yes'),
(385, 'mc4wp', 'a:1:{s:7:"api_key";s:37:"80efb40b91a7d4b3de269ddc3c15b2ff-us11";}', 'yes'),
(386, 'mc4wp_checkbox', 'a:15:{s:5:"label";s:30:"Sign me up for the newsletter!";s:8:"precheck";i:1;s:3:"css";i:0;s:20:"show_at_comment_form";i:0;s:25:"show_at_registration_form";i:0;s:22:"show_at_multisite_form";i:0;s:23:"show_at_buddypress_form";i:0;s:20:"show_at_edd_checkout";i:0;s:28:"show_at_woocommerce_checkout";i:0;s:21:"show_at_bbpress_forms";i:0;s:5:"lists";a:0:{}s:12:"double_optin";i:1;s:12:"send_welcome";i:0;s:15:"update_existing";i:0;s:20:"woocommerce_position";s:5:"order";}', 'yes'),
(387, 'mc4wp_form', 'a:18:{s:3:"css";i:0;s:18:"custom_theme_color";s:4:"#1af";s:4:"ajax";i:1;s:12:"double_optin";i:1;s:15:"update_existing";i:0;s:17:"replace_interests";i:1;s:12:"send_welcome";i:0;s:15:"text_subscribed";s:89:"Thank you, your sign-up request was successful! Please check your email inbox to confirm.";s:10:"text_error";s:51:"Oops. Something went wrong. Please try again later.";s:18:"text_invalid_email";s:37:"Please provide a valid email address.";s:23:"text_already_subscribed";s:53:"Given email address is already subscribed, thank you!";s:20:"text_invalid_captcha";s:28:"Please complete the CAPTCHA.";s:27:"text_required_field_missing";s:35:"Please fill in the required fields.";s:17:"text_unsubscribed";s:35:"You were successfully unsubscribed.";s:19:"text_not_subscribed";s:38:"Given email address is not subscribed.";s:8:"redirect";s:0:"";s:18:"hide_after_success";i:0;s:15:"send_email_copy";i:0;}', 'yes'),
(388, 'mc4wp_default_form_id', '69', 'yes'),
(389, 'mc4wp_license', 'a:4:{s:3:"key";s:32:"29b3d1938f66907d850c9d91fd69165f";s:6:"status";s:7:"invalid";s:11:"expiry_date";s:19:"2016-07-22 15:55:52";s:11:"show_notice";b:1;}', 'yes'),
(390, 'mc4wp_license_manager_version', '2', 'yes'),
(392, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1440501133;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.3.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:0:{}}', 'yes'),
(393, 'mc4wp_log_db_version', '1.1', 'yes'),
(394, 'mc4wp_version', '2.7.9', 'yes'),
(407, '_transient_timeout_mc4wp_mailchimp_lists', '1440579491', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(408, '_transient_mc4wp_mailchimp_lists', 'a:3:{s:10:"040512b5ed";O:8:"stdClass":5:{s:2:"id";s:10:"040512b5ed";s:4:"name";s:19:"Backfeed Newsletter";s:16:"subscriber_count";i:114;s:10:"merge_vars";a:3:{i:0;O:8:"stdClass":4:{s:4:"name";s:13:"Email Address";s:10:"field_type";s:5:"email";s:3:"req";b:1;s:3:"tag";s:5:"EMAIL";}i:1;O:8:"stdClass":4:{s:4:"name";s:10:"First Name";s:10:"field_type";s:4:"text";s:3:"req";b:0;s:3:"tag";s:5:"FNAME";}i:2;O:8:"stdClass":4:{s:4:"name";s:9:"Last Name";s:10:"field_type";s:4:"text";s:3:"req";b:0;s:3:"tag";s:5:"LNAME";}}s:18:"interest_groupings";a:0:{}}s:10:"3e3248d370";O:8:"stdClass":5:{s:2:"id";s:10:"3e3248d370";s:4:"name";s:10:"Test Group";s:16:"subscriber_count";i:4;s:10:"merge_vars";a:3:{i:0;O:8:"stdClass":4:{s:4:"name";s:13:"Email Address";s:10:"field_type";s:5:"email";s:3:"req";b:1;s:3:"tag";s:5:"EMAIL";}i:1;O:8:"stdClass":4:{s:4:"name";s:10:"First Name";s:10:"field_type";s:4:"text";s:3:"req";b:0;s:3:"tag";s:5:"FNAME";}i:2;O:8:"stdClass":4:{s:4:"name";s:9:"Last Name";s:10:"field_type";s:4:"text";s:3:"req";b:0;s:3:"tag";s:5:"LNAME";}}s:18:"interest_groupings";a:0:{}}s:10:"bdf32f08dd";O:8:"stdClass":5:{s:2:"id";s:10:"bdf32f08dd";s:4:"name";s:18:"Ouishare fest 2015";s:16:"subscriber_count";i:14;s:10:"merge_vars";a:3:{i:0;O:8:"stdClass":4:{s:4:"name";s:13:"Email Address";s:10:"field_type";s:5:"email";s:3:"req";b:1;s:3:"tag";s:5:"EMAIL";}i:1;O:8:"stdClass":4:{s:4:"name";s:10:"First Name";s:10:"field_type";s:4:"text";s:3:"req";b:0;s:3:"tag";s:5:"FNAME";}i:2;O:8:"stdClass":4:{s:4:"name";s:9:"Last Name";s:10:"field_type";s:4:"text";s:3:"req";b:0;s:3:"tag";s:5:"LNAME";}}s:18:"interest_groupings";a:0:{}}}', 'no'),
(409, '_transient_timeout_mc4wp_mailchimp_lists_fallback', '1441702691', 'no'),
(410, '_transient_mc4wp_mailchimp_lists_fallback', 'a:3:{s:10:"040512b5ed";O:8:"stdClass":5:{s:2:"id";s:10:"040512b5ed";s:4:"name";s:19:"Backfeed Newsletter";s:16:"subscriber_count";i:114;s:10:"merge_vars";a:3:{i:0;O:8:"stdClass":4:{s:4:"name";s:13:"Email Address";s:10:"field_type";s:5:"email";s:3:"req";b:1;s:3:"tag";s:5:"EMAIL";}i:1;O:8:"stdClass":4:{s:4:"name";s:10:"First Name";s:10:"field_type";s:4:"text";s:3:"req";b:0;s:3:"tag";s:5:"FNAME";}i:2;O:8:"stdClass":4:{s:4:"name";s:9:"Last Name";s:10:"field_type";s:4:"text";s:3:"req";b:0;s:3:"tag";s:5:"LNAME";}}s:18:"interest_groupings";a:0:{}}s:10:"3e3248d370";O:8:"stdClass":5:{s:2:"id";s:10:"3e3248d370";s:4:"name";s:10:"Test Group";s:16:"subscriber_count";i:4;s:10:"merge_vars";a:3:{i:0;O:8:"stdClass":4:{s:4:"name";s:13:"Email Address";s:10:"field_type";s:5:"email";s:3:"req";b:1;s:3:"tag";s:5:"EMAIL";}i:1;O:8:"stdClass":4:{s:4:"name";s:10:"First Name";s:10:"field_type";s:4:"text";s:3:"req";b:0;s:3:"tag";s:5:"FNAME";}i:2;O:8:"stdClass":4:{s:4:"name";s:9:"Last Name";s:10:"field_type";s:4:"text";s:3:"req";b:0;s:3:"tag";s:5:"LNAME";}}s:18:"interest_groupings";a:0:{}}s:10:"bdf32f08dd";O:8:"stdClass":5:{s:2:"id";s:10:"bdf32f08dd";s:4:"name";s:18:"Ouishare fest 2015";s:16:"subscriber_count";i:14;s:10:"merge_vars";a:3:{i:0;O:8:"stdClass":4:{s:4:"name";s:13:"Email Address";s:10:"field_type";s:5:"email";s:3:"req";b:1;s:3:"tag";s:5:"EMAIL";}i:1;O:8:"stdClass":4:{s:4:"name";s:10:"First Name";s:10:"field_type";s:4:"text";s:3:"req";b:0;s:3:"tag";s:5:"FNAME";}i:2;O:8:"stdClass":4:{s:4:"name";s:9:"Last Name";s:10:"field_type";s:4:"text";s:3:"req";b:0;s:3:"tag";s:5:"LNAME";}}s:18:"interest_groupings";a:0:{}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://backfeed.dev/'),
(10, 4, '_menu_item_orphaned', '1439471095'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1439471096'),
(38, 8, '_menu_item_type', 'custom'),
(39, 8, '_menu_item_menu_item_parent', '0'),
(40, 8, '_menu_item_object_id', '8'),
(41, 8, '_menu_item_object', 'custom'),
(42, 8, '_menu_item_target', ''),
(43, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(44, 8, '_menu_item_xfn', ''),
(45, 8, '_menu_item_url', '#about'),
(46, 8, '_menu_item_orphaned', '1439471231'),
(47, 9, '_menu_item_type', 'custom'),
(48, 9, '_menu_item_menu_item_parent', '0'),
(49, 9, '_menu_item_object_id', '9'),
(50, 9, '_menu_item_object', 'custom'),
(51, 9, '_menu_item_target', ''),
(52, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 9, '_menu_item_xfn', ''),
(54, 9, '_menu_item_url', '#vision'),
(55, 9, '_menu_item_orphaned', '1439471253'),
(56, 10, '_menu_item_type', 'custom'),
(57, 10, '_menu_item_menu_item_parent', '0'),
(58, 10, '_menu_item_object_id', '10'),
(59, 10, '_menu_item_object', 'custom'),
(60, 10, '_menu_item_target', ''),
(61, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 10, '_menu_item_xfn', ''),
(63, 10, '_menu_item_url', '#use-cases'),
(64, 10, '_menu_item_orphaned', '1439472618'),
(65, 11, '_menu_item_type', 'custom'),
(66, 11, '_menu_item_menu_item_parent', '0'),
(67, 11, '_menu_item_object_id', '11'),
(68, 11, '_menu_item_object', 'custom'),
(69, 11, '_menu_item_target', ''),
(70, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 11, '_menu_item_xfn', ''),
(72, 11, '_menu_item_url', '#technology'),
(73, 11, '_menu_item_orphaned', '1439472661'),
(74, 12, '_menu_item_type', 'custom'),
(75, 12, '_menu_item_menu_item_parent', '0'),
(76, 12, '_menu_item_object_id', '12'),
(77, 12, '_menu_item_object', 'custom'),
(78, 12, '_menu_item_target', ''),
(79, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(80, 12, '_menu_item_xfn', ''),
(81, 12, '_menu_item_url', '#team'),
(82, 12, '_menu_item_orphaned', '1439472674'),
(83, 13, '_menu_item_type', 'custom'),
(84, 13, '_menu_item_menu_item_parent', '0'),
(85, 13, '_menu_item_object_id', '13'),
(86, 13, '_menu_item_object', 'custom'),
(87, 13, '_menu_item_target', ''),
(88, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(89, 13, '_menu_item_xfn', ''),
(90, 13, '_menu_item_url', '#about'),
(92, 14, '_menu_item_type', 'custom'),
(93, 14, '_menu_item_menu_item_parent', '0'),
(94, 14, '_menu_item_object_id', '14'),
(95, 14, '_menu_item_object', 'custom'),
(96, 14, '_menu_item_target', ''),
(97, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 14, '_menu_item_xfn', ''),
(99, 14, '_menu_item_url', '#vision'),
(101, 15, '_menu_item_type', 'custom'),
(102, 15, '_menu_item_menu_item_parent', '0'),
(103, 15, '_menu_item_object_id', '15'),
(104, 15, '_menu_item_object', 'custom'),
(105, 15, '_menu_item_target', ''),
(106, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(107, 15, '_menu_item_xfn', ''),
(108, 15, '_menu_item_url', '#use-cases'),
(110, 16, '_menu_item_type', 'custom'),
(111, 16, '_menu_item_menu_item_parent', '0'),
(112, 16, '_menu_item_object_id', '16'),
(113, 16, '_menu_item_object', 'custom'),
(114, 16, '_menu_item_target', ''),
(115, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(116, 16, '_menu_item_xfn', ''),
(117, 16, '_menu_item_url', '#technology'),
(119, 17, '_menu_item_type', 'custom'),
(120, 17, '_menu_item_menu_item_parent', '0'),
(121, 17, '_menu_item_object_id', '17'),
(122, 17, '_menu_item_object', 'custom'),
(123, 17, '_menu_item_target', ''),
(124, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(125, 17, '_menu_item_xfn', ''),
(126, 17, '_menu_item_url', '#team'),
(128, 18, '_menu_item_type', 'custom'),
(129, 18, '_menu_item_menu_item_parent', '0'),
(130, 18, '_menu_item_object_id', '18'),
(131, 18, '_menu_item_object', 'custom'),
(132, 18, '_menu_item_target', ''),
(133, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(134, 18, '_menu_item_xfn', ''),
(135, 18, '_menu_item_url', '#partners'),
(137, 22, 'vote_score', '3.021484375'),
(138, 22, 'tagline_id', '20'),
(139, 20, 'tagline_value', '3.021484375'),
(140, 23, 'vote_score', '3.521484375'),
(141, 23, 'tagline_id', ''),
(142, 24, 'vote_score', '3.708984375'),
(143, 24, 'tagline_id', ''),
(144, 25, 'vote_score', '2.22265625'),
(145, 25, 'tagline_id', ''),
(146, 26, 'vote_score', '2.09765625'),
(147, 26, 'tagline_id', '21'),
(148, 21, 'tagline_value', '3.671484375'),
(149, 27, 'vote_score', '4.7578125'),
(150, 27, 'tagline_id', '21'),
(151, 28, 'vote_score', '3.833984375'),
(152, 28, 'tagline_id', '21'),
(153, 29, 'vote_score', '4.9453125'),
(154, 29, 'tagline_id', '21'),
(155, 31, 'vote_score', '2.72265625'),
(156, 31, 'tagline_id', '21'),
(157, 33, '_edit_last', '1'),
(159, 33, 'position', 'normal'),
(160, 33, 'layout', 'no_box'),
(161, 33, 'hide_on_screen', ''),
(162, 33, '_edit_lock', '1439497715:1'),
(163, 33, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"team-members";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(164, 34, '_edit_lock', '1439500578:1'),
(165, 34, '_edit_last', '1'),
(166, 47, '_edit_last', '1'),
(167, 47, 'name', 'Ore Landau'),
(168, 47, '_name', 'field_55ccffd4db038'),
(169, 47, 'role', 'Chief Unicorn'),
(170, 47, '_role', 'field_55ccffe4db039'),
(171, 47, 'avatar', '50'),
(172, 47, '_avatar', 'field_55ccffeedb03a'),
(173, 47, 'description', 'Web developer with a special hunch for Front-End UI/UX development'),
(174, 47, '_description', 'field_55cd007adb03b'),
(175, 47, 'social_links_0_social_network', 'facebook-official'),
(176, 47, '_social_links_0_social_network', 'field_55cd00e1db03d'),
(177, 47, 'social_links_0_social_url', 'http://facebook.com/Ore4444'),
(178, 47, '_social_links_0_social_url', 'field_55cd01f7db03f'),
(179, 47, 'social_links', '4'),
(180, 47, '_social_links', 'field_55cd00b9db03c'),
(181, 47, '_edit_lock', '1439500553:1'),
(182, 48, '_wp_attached_file', '2015/08/matan.png'),
(183, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:17:"2015/08/matan.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(184, 49, '_wp_attached_file', '2015/08/michel.png'),
(185, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:18:"2015/08/michel.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(186, 50, '_wp_attached_file', '2015/08/ore.png'),
(187, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:15:"2015/08/ore.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(188, 51, '_wp_attached_file', '2015/08/phillipe.png'),
(189, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:20:"2015/08/phillipe.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(190, 52, '_wp_attached_file', '2015/08/primavera.png'),
(191, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:21:"2015/08/primavera.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(192, 53, '_wp_attached_file', '2015/08/shahar.png'),
(193, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:18:"2015/08/shahar.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(194, 54, '_wp_attached_file', '2015/08/tal.png'),
(195, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:15:"2015/08/tal.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(196, 55, '_wp_attached_file', '2015/08/yaniv.png'),
(197, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:17:"2015/08/yaniv.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(198, 56, '_wp_attached_file', '2015/08/zeev.png'),
(199, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:16:"2015/08/zeev.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(200, 57, '_wp_attached_file', '2015/08/adam.png'),
(201, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:16:"2015/08/adam.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(202, 58, '_wp_attached_file', '2015/08/dana.png'),
(203, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:16:"2015/08/dana.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(204, 59, '_wp_attached_file', '2015/08/jordan.png'),
(205, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:18:"2015/08/jordan.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(206, 47, 'social_links_1_social_network', 'twitter-square'),
(207, 47, '_social_links_1_social_network', 'field_55cd00e1db03d'),
(208, 47, 'social_links_1_social_url', 'http://twitter.com/Ore4444'),
(209, 47, '_social_links_1_social_url', 'field_55cd01f7db03f'),
(210, 47, 'social_links_2_social_network', 'linkedin-square'),
(211, 47, '_social_links_2_social_network', 'field_55cd00e1db03d'),
(212, 47, 'social_links_2_social_url', 'http://linkedin.com/in/Ore4444'),
(213, 47, '_social_links_2_social_url', 'field_55cd01f7db03f'),
(214, 47, 'social_links_3_social_network', 'google-plus-square'),
(215, 47, '_social_links_3_social_network', 'field_55cd00e1db03d'),
(216, 47, 'social_links_3_social_url', 'https://plus.google.com/u/0/+OreLandau/posts'),
(217, 47, '_social_links_3_social_url', 'field_55cd01f7db03f'),
(218, 61, '_edit_last', '1'),
(219, 61, '_edit_lock', '1439501913:1'),
(220, 65, '_wp_attached_file', '2015/08/partner1.png'),
(221, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:137;s:6:"height";i:137;s:4:"file";s:20:"2015/08/partner1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(222, 64, '_edit_last', '1'),
(223, 64, '_edit_lock', '1439500782:1'),
(224, 64, 'logo', '65'),
(225, 64, '_logo', 'field_55cd0964ef8f6'),
(226, 64, 'website', 'http://ouishare.net/en'),
(227, 64, '_website', 'field_55cd097aef8f7'),
(228, 67, '_edit_last', '1'),
(229, 67, '_edit_lock', '1440428293:1'),
(232, 69, '_mc4wp_settings', 'a:1:{s:5:"lists";a:0:{}}'),
(233, 70, '_mc4wp_settings', 'a:1:{s:5:"lists";a:0:{}}'),
(234, 71, '_edit_last', '1'),
(235, 71, '_mc4wp_settings', 'a:15:{s:5:"lists";a:1:{s:10:"040512b5ed";s:10:"040512b5ed";}s:15:"send_email_copy";s:1:"0";s:19:"email_copy_receiver";s:16:"info@backfeed.cc";s:12:"double_optin";s:0:"";s:15:"update_existing";s:0:"";s:4:"ajax";s:0:"";s:18:"hide_after_success";s:0:"";s:8:"redirect";s:0:"";s:15:"text_subscribed";s:0:"";s:10:"text_error";s:0:"";s:18:"text_invalid_email";s:0:"";s:23:"text_already_subscribed";s:0:"";s:27:"text_required_field_missing";s:0:"";s:17:"text_unsubscribed";s:0:"";s:19:"text_not_subscribed";s:0:"";}'),
(236, 71, '_edit_lock', '1440499330:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-08-10 14:43:02', '2015-08-10 14:43:02', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-08-10 14:43:02', '2015-08-10 14:43:02', '', 0, 'http://new.backfeed.cc/?p=1', 0, 'post', '', 1),
(2, 1, '2015-08-10 14:43:02', '2015-08-10 14:43:02', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://new.backfeed.cc/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-08-10 14:43:02', '2015-08-10 14:43:02', '', 0, 'http://new.backfeed.cc/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-08-13 13:04:55', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2015-08-13 13:04:55', '0000-00-00 00:00:00', '', 0, 'http://backfeed.dev/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2015-08-13 13:04:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-08-13 13:04:55', '0000-00-00 00:00:00', '', 0, 'http://backfeed.dev/?p=5', 1, 'nav_menu_item', '', 0),
(8, 1, '2015-08-13 13:07:10', '0000-00-00 00:00:00', '', 'About', '', 'draft', 'open', 'open', '', '', '', '', '2015-08-13 13:07:10', '0000-00-00 00:00:00', '', 0, 'http://backfeed.dev/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2015-08-13 13:07:32', '0000-00-00 00:00:00', '', 'Vision', '', 'draft', 'open', 'open', '', '', '', '', '2015-08-13 13:07:32', '0000-00-00 00:00:00', '', 0, 'http://backfeed.dev/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2015-08-13 13:30:16', '0000-00-00 00:00:00', '', 'Use Cases', '', 'draft', 'open', 'open', '', '', '', '', '2015-08-13 13:30:16', '0000-00-00 00:00:00', '', 0, 'http://backfeed.dev/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2015-08-13 13:31:01', '0000-00-00 00:00:00', '', 'Tech', '', 'draft', 'open', 'open', '', '', '', '', '2015-08-13 13:31:01', '0000-00-00 00:00:00', '', 0, 'http://backfeed.dev/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2015-08-13 13:31:13', '0000-00-00 00:00:00', '', 'Team', '', 'draft', 'open', 'open', '', '', '', '', '2015-08-13 13:31:13', '0000-00-00 00:00:00', '', 0, 'http://backfeed.dev/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2015-08-13 14:36:09', '2015-08-13 14:36:09', '', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2015-08-13 14:57:11', '2015-08-13 14:57:11', '', 0, 'http://backfeed.dev/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2015-08-13 14:36:09', '2015-08-13 14:36:09', '', 'Vision', '', 'publish', 'open', 'open', '', 'vision', '', '', '2015-08-13 14:57:11', '2015-08-13 14:57:11', '', 0, 'http://backfeed.dev/?p=14', 2, 'nav_menu_item', '', 0),
(15, 1, '2015-08-13 14:36:10', '2015-08-13 14:36:10', '', 'Use Cases', '', 'publish', 'open', 'open', '', 'use-cases', '', '', '2015-08-13 14:57:11', '2015-08-13 14:57:11', '', 0, 'http://backfeed.dev/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2015-08-13 14:36:10', '2015-08-13 14:36:10', '', 'Tech', '', 'publish', 'open', 'open', '', 'tech', '', '', '2015-08-13 14:57:11', '2015-08-13 14:57:11', '', 0, 'http://backfeed.dev/?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2015-08-13 14:36:10', '2015-08-13 14:36:10', '', 'Team', '', 'publish', 'open', 'open', '', 'team', '', '', '2015-08-13 14:57:11', '2015-08-13 14:57:11', '', 0, 'http://backfeed.dev/?p=17', 5, 'nav_menu_item', '', 0),
(18, 1, '2015-08-13 14:36:10', '2015-08-13 14:36:10', '', 'Partners', '', 'publish', 'open', 'open', '', 'partners', '', '', '2015-08-13 14:57:11', '2015-08-13 14:57:11', '', 0, 'http://backfeed.dev/?p=18', 6, 'nav_menu_item', '', 0),
(19, 0, '2015-08-13 15:27:01', '2015-08-13 15:27:01', '', 'knmbhbvmghjj', '', 'publish', 'open', 'open', '', 'knmbhbvmghjj', '', '', '2015-08-13 15:27:01', '2015-08-13 15:27:01', '', 0, 'http://backfeed.dev/tagline/knmbhbvmghjj/', 0, 'tagline', '', 0),
(20, 1, '2015-08-13 15:27:29', '2015-08-13 15:27:29', '', 'ngkjhygfki', '', 'publish', 'open', 'open', '', 'ngkjhygfki', '', '', '2015-08-13 15:27:29', '2015-08-13 15:27:29', '', 0, 'http://backfeed.dev/tagline/ngkjhygfki/', 0, 'tagline', '', 0),
(21, 1, '2015-08-13 15:27:39', '2015-08-13 15:27:39', '', '21658746', '', 'publish', 'open', 'open', '', '21658746', '', '', '2015-08-13 15:27:39', '2015-08-13 15:27:39', '', 0, 'http://backfeed.dev/tagline/21658746/', 0, 'tagline', '', 0),
(22, 1, '2015-08-13 15:27:47', '2015-08-13 15:27:47', '', '', '', 'publish', 'open', 'open', '', '22', '', '', '2015-08-13 15:27:47', '2015-08-13 15:27:47', '', 0, 'http://backfeed.dev/2015/08/13/22/', 0, 'tagline_vote', '', 0),
(23, 0, '2015-08-13 15:28:03', '2015-08-13 15:28:03', '', '', '', 'publish', 'open', 'open', '', '23', '', '', '2015-08-13 15:28:03', '2015-08-13 15:28:03', '', 0, 'http://backfeed.dev/2015/08/13/23/', 0, 'tagline_vote', '', 0),
(24, 0, '2015-08-13 15:28:06', '2015-08-13 15:28:06', '', '', '', 'publish', 'open', 'open', '', '24', '', '', '2015-08-13 15:28:06', '2015-08-13 15:28:06', '', 0, 'http://backfeed.dev/2015/08/13/24/', 0, 'tagline_vote', '', 0),
(25, 0, '2015-08-13 15:28:07', '2015-08-13 15:28:07', '', '', '', 'publish', 'open', 'open', '', '25', '', '', '2015-08-13 15:28:07', '2015-08-13 15:28:07', '', 0, 'http://backfeed.dev/2015/08/13/25/', 0, 'tagline_vote', '', 0),
(26, 1, '2015-08-13 15:39:59', '2015-08-13 15:39:59', '', '', '', 'publish', 'open', 'open', '', '26', '', '', '2015-08-13 15:39:59', '2015-08-13 15:39:59', '', 0, 'http://backfeed.dev/2015/08/13/26/', 0, 'tagline_vote', '', 0),
(27, 1, '2015-08-13 15:41:36', '2015-08-13 15:41:36', '', '', '', 'publish', 'open', 'open', '', '27', '', '', '2015-08-13 15:41:36', '2015-08-13 15:41:36', '', 0, 'http://backfeed.dev/2015/08/13/27/', 0, 'tagline_vote', '', 0),
(28, 0, '2015-08-13 16:20:50', '2015-08-13 16:20:50', '', '', '', 'publish', 'open', 'open', '', '28', '', '', '2015-08-13 16:20:50', '2015-08-13 16:20:50', '', 0, 'http://backfeed.dev/2015/08/13/28/', 0, 'tagline_vote', '', 0),
(29, 0, '2015-08-13 16:23:14', '2015-08-13 16:23:14', '', '', '', 'publish', 'open', 'open', '', '29', '', '', '2015-08-13 16:23:14', '2015-08-13 16:23:14', '', 0, 'http://backfeed.dev/2015/08/13/29/', 0, 'tagline_vote', '', 0),
(30, 0, '2015-08-13 16:23:29', '2015-08-13 16:23:29', '', '564', '', 'publish', 'open', 'open', '', '564', '', '', '2015-08-13 16:23:29', '2015-08-13 16:23:29', '', 0, 'http://backfeed.dev/tagline/564/', 0, 'tagline', '', 0),
(31, 0, '2015-08-13 16:25:17', '2015-08-13 16:25:17', '', '', '', 'publish', 'open', 'open', '', '31', '', '', '2015-08-13 16:25:17', '2015-08-13 16:25:17', '', 0, 'http://backfeed.dev/2015/08/13/31/', 0, 'tagline_vote', '', 0),
(32, 0, '2015-08-13 16:25:52', '2015-08-13 16:25:52', '', 'jmyhgjghy', '', 'publish', 'open', 'open', '', 'jmyhgjghy', '', '', '2015-08-13 16:25:52', '2015-08-13 16:25:52', '', 0, 'http://backfeed.dev/tagline/jmyhgjghy/', 0, 'tagline', '', 0),
(33, 1, '2015-08-13 20:28:34', '2015-08-13 20:28:34', '', 'Team Members', '', 'publish', 'closed', 'closed', '', 'acf_team-members', '', '', '2015-08-13 20:28:34', '2015-08-13 20:28:34', '', 0, 'http://backfeed.dev/?post_type=acf&#038;p=33', 0, 'acf', '', 0),
(34, 1, '2015-08-13 20:36:17', '2015-08-13 20:36:17', 'a:6:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"team-members";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:9:"permalink";}}', 'Team Member', 'team-member', 'publish', 'closed', 'closed', '', 'group_55ccffc12d8a5', '', '', '2015-08-13 21:18:34', '2015-08-13 21:18:34', '', 0, 'http://backfeed.dev/?post_type=acf-field-group&#038;p=34', 0, 'acf-field-group', '', 0),
(35, 1, '2015-08-13 20:46:42', '2015-08-13 20:46:42', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Name', 'name', 'publish', 'open', 'open', '', 'field_55ccffd4db038', '', '', '2015-08-13 20:46:42', '2015-08-13 20:46:42', '', 34, 'http://backfeed.dev/?post_type=acf-field&p=35', 0, 'acf-field', '', 0),
(36, 1, '2015-08-13 20:46:42', '2015-08-13 20:46:42', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Role', 'role', 'publish', 'open', 'open', '', 'field_55ccffe4db039', '', '', '2015-08-13 21:18:34', '2015-08-13 21:18:34', '', 34, 'http://backfeed.dev/?post_type=acf-field&#038;p=36', 1, 'acf-field', '', 0),
(37, 1, '2015-08-13 20:46:42', '2015-08-13 20:46:42', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Avatar', 'avatar', 'publish', 'open', 'open', '', 'field_55ccffeedb03a', '', '', '2015-08-13 21:18:34', '2015-08-13 21:18:34', '', 34, 'http://backfeed.dev/?post_type=acf-field&#038;p=37', 2, 'acf-field', '', 0),
(38, 1, '2015-08-13 20:46:42', '2015-08-13 20:46:42', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";i:140;s:4:"rows";i:2;s:9:"new_lines";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Description', 'description', 'publish', 'open', 'open', '', 'field_55cd007adb03b', '', '', '2015-08-13 20:46:42', '2015-08-13 20:46:42', '', 34, 'http://backfeed.dev/?post_type=acf-field&p=38', 3, 'acf-field', '', 0),
(39, 1, '2015-08-13 20:46:42', '2015-08-13 20:46:42', 'a:9:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:15:"Add Social Icon";}', 'Social Links', 'social_links', 'publish', 'open', 'open', '', 'field_55cd00b9db03c', '', '', '2015-08-13 21:10:46', '2015-08-13 21:10:46', '', 34, 'http://backfeed.dev/?post_type=acf-field&#038;p=39', 4, 'acf-field', '', 0),
(40, 1, '2015-08-13 20:46:42', '2015-08-13 20:46:42', 'a:14:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:5:{s:17:"facebook-official";s:8:"Facebook";s:14:"twitter-square";s:7:"Twitter";s:6:"medium";s:6:"Medium";s:15:"linkedin-square";s:8:"LinkedIn";s:18:"google-plus-square";s:7:"Google+";}s:13:"default_value";a:1:{s:0:"";s:0:"";}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:1;s:4:"ajax";i:0;s:11:"placeholder";s:0:"";s:8:"disabled";i:0;s:8:"readonly";i:0;}', 'Social Network', 'social_network', 'publish', 'open', 'open', '', 'field_55cd00e1db03d', '', '', '2015-08-13 21:10:46', '2015-08-13 21:10:46', '', 39, 'http://backfeed.dev/?post_type=acf-field&#038;p=40', 0, 'acf-field', '', 0),
(41, 1, '2015-08-13 20:46:42', '2015-08-13 20:46:42', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'URL', 'social_url', 'publish', 'open', 'open', '', 'field_55cd01f7db03f', '', '', '2015-08-13 20:46:42', '2015-08-13 20:46:42', '', 39, 'http://backfeed.dev/?post_type=acf-field&p=41', 1, 'acf-field', '', 0),
(47, 1, '2015-08-13 20:50:03', '2015-08-13 20:50:03', '', 'Ore Landau', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2015-08-13 21:13:56', '2015-08-13 21:13:56', '', 0, 'http://backfeed.dev/?post_type=team-members&#038;p=47', 0, 'team-members', '', 0),
(48, 1, '2015-08-13 20:51:38', '2015-08-13 20:51:38', '', 'matan', '', 'inherit', 'open', 'open', '', 'matan', '', '', '2015-08-13 20:51:38', '2015-08-13 20:51:38', '', 47, 'http://backfeed.dev/wp-content/uploads/2015/08/matan.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2015-08-13 20:51:39', '2015-08-13 20:51:39', '', 'michel', '', 'inherit', 'open', 'open', '', 'michel', '', '', '2015-08-13 20:51:39', '2015-08-13 20:51:39', '', 47, 'http://backfeed.dev/wp-content/uploads/2015/08/michel.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2015-08-13 20:51:39', '2015-08-13 20:51:39', '', 'ore', '', 'inherit', 'open', 'open', '', 'ore', '', '', '2015-08-13 20:51:39', '2015-08-13 20:51:39', '', 47, 'http://backfeed.dev/wp-content/uploads/2015/08/ore.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2015-08-13 20:51:40', '2015-08-13 20:51:40', '', 'phillipe', '', 'inherit', 'open', 'open', '', 'phillipe', '', '', '2015-08-13 20:51:40', '2015-08-13 20:51:40', '', 47, 'http://backfeed.dev/wp-content/uploads/2015/08/phillipe.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2015-08-13 20:51:41', '2015-08-13 20:51:41', '', 'primavera', '', 'inherit', 'open', 'open', '', 'primavera', '', '', '2015-08-13 20:51:41', '2015-08-13 20:51:41', '', 47, 'http://backfeed.dev/wp-content/uploads/2015/08/primavera.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2015-08-13 20:51:42', '2015-08-13 20:51:42', '', 'shahar', '', 'inherit', 'open', 'open', '', 'shahar', '', '', '2015-08-13 20:51:42', '2015-08-13 20:51:42', '', 47, 'http://backfeed.dev/wp-content/uploads/2015/08/shahar.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2015-08-13 20:51:43', '2015-08-13 20:51:43', '', 'tal', '', 'inherit', 'open', 'open', '', 'tal', '', '', '2015-08-13 20:51:43', '2015-08-13 20:51:43', '', 47, 'http://backfeed.dev/wp-content/uploads/2015/08/tal.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2015-08-13 20:51:43', '2015-08-13 20:51:43', '', 'yaniv', '', 'inherit', 'open', 'open', '', 'yaniv', '', '', '2015-08-13 20:51:43', '2015-08-13 20:51:43', '', 47, 'http://backfeed.dev/wp-content/uploads/2015/08/yaniv.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2015-08-13 20:51:44', '2015-08-13 20:51:44', '', 'zeev', '', 'inherit', 'open', 'open', '', 'zeev', '', '', '2015-08-13 20:51:44', '2015-08-13 20:51:44', '', 47, 'http://backfeed.dev/wp-content/uploads/2015/08/zeev.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2015-08-13 20:51:45', '2015-08-13 20:51:45', '', 'adam', '', 'inherit', 'open', 'open', '', 'adam', '', '', '2015-08-13 20:51:45', '2015-08-13 20:51:45', '', 47, 'http://backfeed.dev/wp-content/uploads/2015/08/adam.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2015-08-13 20:51:46', '2015-08-13 20:51:46', '', 'dana', '', 'inherit', 'open', 'open', '', 'dana', '', '', '2015-08-13 20:51:46', '2015-08-13 20:51:46', '', 47, 'http://backfeed.dev/wp-content/uploads/2015/08/dana.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2015-08-13 20:51:47', '2015-08-13 20:51:47', '', 'jordan', '', 'inherit', 'open', 'open', '', 'jordan', '', '', '2015-08-13 20:51:47', '2015-08-13 20:51:47', '', 47, 'http://backfeed.dev/wp-content/uploads/2015/08/jordan.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2015-08-13 21:18:05', '2015-08-13 21:18:05', 'a:6:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"partners";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:9:"permalink";}}', 'Partner', 'partner', 'publish', 'closed', 'closed', '', 'group_55cd095d7898a', '', '', '2015-08-13 21:18:49', '2015-08-13 21:18:49', '', 0, 'http://backfeed.dev/?post_type=acf-field-group&#038;p=61', 0, 'acf-field-group', '', 0),
(62, 1, '2015-08-13 21:18:05', '2015-08-13 21:18:05', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', 'logo', 'publish', 'open', 'open', '', 'field_55cd0964ef8f6', '', '', '2015-08-13 21:18:05', '2015-08-13 21:18:05', '', 61, 'http://backfeed.dev/?post_type=acf-field&p=62', 0, 'acf-field', '', 0),
(63, 1, '2015-08-13 21:18:05', '2015-08-13 21:18:05', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Website', 'website', 'publish', 'open', 'open', '', 'field_55cd097aef8f7', '', '', '2015-08-13 21:18:05', '2015-08-13 21:18:05', '', 61, 'http://backfeed.dev/?post_type=acf-field&p=63', 1, 'acf-field', '', 0),
(64, 1, '2015-08-13 21:19:41', '2015-08-13 21:19:41', '', 'OuiShare', '', 'publish', 'closed', 'closed', '', 'ouishare', '', '', '2015-08-13 21:19:41', '2015-08-13 21:19:41', '', 0, 'http://backfeed.dev/?post_type=partners&#038;p=64', 0, 'partners', '', 0),
(65, 1, '2015-08-13 21:19:08', '2015-08-13 21:19:08', '', 'partner1', '', 'inherit', 'open', 'open', '', 'partner1', '', '', '2015-08-13 21:19:08', '2015-08-13 21:19:08', '', 64, 'http://backfeed.dev/wp-content/uploads/2015/08/partner1.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2015-08-24 14:57:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-24 14:57:35', '0000-00-00 00:00:00', '', 0, 'http://backfeed.dev/?p=66', 0, 'post', '', 0),
(67, 1, '2015-08-24 14:58:13', '0000-00-00 00:00:00', '', 'Matan Field', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-08-24 14:58:13', '2015-08-24 14:58:13', '', 0, 'http://backfeed.dev/?post_type=team-members&#038;p=67', 0, 'team-members', '', 0),
(69, 1, '2015-08-25 08:53:13', '2015-08-25 08:53:13', '<p>\n	<label>Email address: </label>\n	<input type="email" name="EMAIL" placeholder="Your email address" required />\n</p>\n\n<p>\n	<input type="submit" value="Sign up" />\n</p>', 'Default form', '', 'publish', 'closed', 'closed', '', 'default-form', '', '', '2015-08-25 08:53:13', '2015-08-25 08:53:13', '', 0, 'http://backfeed.dev/2015/08/25/default-form/', 0, 'mc4wp-form', '', 0),
(70, 1, '2015-08-25 08:53:13', '2015-08-25 08:53:13', '<p>\n	<input type="email" name="EMAIL" required placeholder="Your email address" />\n	<input type="submit" value="Sign up" />\n</p>', 'Short form', '', 'publish', 'closed', 'closed', '', 'short-form', '', '', '2015-08-25 08:53:13', '2015-08-25 08:53:13', '', 0, 'http://backfeed.dev/2015/08/25/short-form/', 0, 'mc4wp-form', '', 0),
(71, 1, '2015-08-25 09:07:53', '2015-08-25 09:07:53', '<div class="form-group">\r\n      <p class="form-control-static">Sign up to get the latest on Backfeed and the new developments in the blockchain space:</p>\r\n    </div>\r\n    <div class="form-group">\r\n      <div class="input-group">\r\n        <input required type="email" name="EMAIL" class="form-control" placeholder="enter your email" />\r\n      <span class="input-group-btn">\r\n        <button class="btn btn-primary" type="button">Subscribe</button>\r\n      </span>\r\n      </div><!-- /input-group -->\r\n    </div>', 'Header', '', 'publish', 'closed', 'closed', '', 'header', '', '', '2015-08-25 09:13:55', '2015-08-25 09:13:55', '<div class="form-group">\r\n      <p class="form-control-static">Sign up to get the latest on Backfeed and the new developments in the blockchain space:</p>\r\n    </div>\r\n    <div class="form-group">\r\n      <div class="input-group">\r\n        <input required type="email" name="EMAIL" class="form-control" placeholder="enter your email" />\r\n      <span class="input-group-btn">\r\n        <button class="btn btn-primary" type="button">Subscribe</button>\r\n      </span>\r\n      </div><!-- /input-group -->\r\n    </div>', 0, 'http://backfeed.dev/?post_type=mc4wp-form&#038;p=71', 0, 'mc4wp-form', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Menu', 'header-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'back'),
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
(14, 1, 'session_tokens', 'a:2:{s:64:"16af5dca6e83ad713a74f0672f7f18c5129c53a432173652bdb1c043291356a9";a:4:{s:10:"expiration";i:1440499395;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2471.2 Safari/537.36";s:5:"login";i:1439289795;}s:64:"3ad513a5ccdc191652ab1e3bad75c86aaf157e709e2ba61e7b689b9b0eea624f";a:4:{s:10:"expiration";i:1440601052;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36";s:5:"login";i:1440428252;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '66'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1439499112'),
(20, 1, 'meta-box-order_mc4wp-form', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:50:"mc4wp-form-settings,submitdiv,mc4wp-form-variables";s:6:"normal";s:71:"mc4wp-optional-settings,acf-group_55cd095d7898a,acf-group_55ccffc12d8a5";s:8:"advanced";s:0:"";}'),
(21, 1, 'screen_layout_mc4wp-form', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'back', '$P$BtVNRkn3pOHl5tarLvHyEZMo6CCUj8/', 'back', 'info@backfeed.cc', '', '2015-08-10 14:43:02', '', 0, 'back');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_mc4wp_log`
--
ALTER TABLE `wp_mc4wp_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mc4wp_log`
--
ALTER TABLE `wp_mc4wp_log`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=441;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=237;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
