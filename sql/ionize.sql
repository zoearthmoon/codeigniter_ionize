-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生日期: 2014 年 03 月 06 日 16:14
-- 伺服器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `ionize`
--
CREATE DATABASE IF NOT EXISTS `ionize` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ionize`;

-- --------------------------------------------------------

--
-- 表的結構 `api_key`
--

CREATE TABLE IF NOT EXISTS `api_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `api_log`
--

CREATE TABLE IF NOT EXISTS `api_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `date_log` datetime DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `authorized` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `author` varchar(55) DEFAULT NULL,
  `updater` varchar(55) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `publish_on` datetime DEFAULT NULL,
  `publish_off` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `logical_date` datetime DEFAULT NULL,
  `indexed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id_category` int(11) unsigned DEFAULT NULL,
  `comment_allow` char(1) DEFAULT '0',
  `comment_autovalid` char(1) DEFAULT '0',
  `comment_expire` datetime DEFAULT NULL,
  `flag` smallint(1) DEFAULT '0',
  `has_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_article`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- 轉存資料表中的資料 `article`
--

INSERT INTO `article` (`id_article`, `name`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `indexed`, `id_category`, `comment_allow`, `comment_autovalid`, `comment_expire`, `flag`, `has_url`) VALUES
(1, '404', 'demo', 'zoearth', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-17 04:06:17', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(4, 'welcome-to-ionize', 'demo', 'demo', '2012-11-17 12:48:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-11-20 17:05:20', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(5, 'article-1', 'demo', 'demo', '2012-11-17 13:58:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:47:36', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(6, 'article-2', 'demo', 'demo', '2012-11-17 13:58:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:47:57', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(7, 'article-3', 'demo', 'demo', '2012-11-17 13:59:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:52:39', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(8, 'article-4', 'demo', 'demo', '2012-11-17 13:59:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:52:46', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(9, 'article-5', 'demo', 'demo', '2012-11-17 14:10:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:52:52', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(10, 'article-6', 'demo', 'demo', '2012-11-17 14:17:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:52:58', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(11, 'easy-edition', 'demo', 'zoearth', '2012-11-21 10:44:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-19 01:31:18', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(12, 'multilingual', 'demo', 'zoearth', '2012-11-21 10:46:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-17 03:22:10', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(13, 'userfriendly', 'demo', 'zoearth', '2012-11-21 10:46:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-17 03:48:55', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(14, 'template-system', 'demo', 'zoearth', '2012-11-21 10:47:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-17 06:49:23', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(15, 'about-us', 'demo', 'demo', '2012-11-21 11:42:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-27 01:15:33', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(16, 'footer-resources', 'demo', 'demo', '2012-11-21 11:52:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:33:05', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(17, 'service-1', 'demo', 'zoearth', '2012-12-06 14:34:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-17 05:54:20', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(18, 'service-2', 'demo', 'demo', '2012-12-06 14:38:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:00:37', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(19, 'service-3', 'demo', 'demo', '2012-12-06 14:38:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:00:47', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(20, 'service-4', 'demo', 'demo', '2012-12-06 14:39:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:00:54', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(24, 'contact-informations', 'demo', 'demo', '2012-12-07 10:01:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 14:39:02', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(26, 'our-location', 'demo', 'demo', '2012-12-07 10:07:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 20:04:28', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(27, 'whats-ionize', 'demo', 'demo', '2012-12-21 16:27:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:27:54', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(28, 'can-i-help', 'demo', 'demo', '2012-12-21 16:30:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:30:10', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(29, 'send-us-a-message', 'demo', 'demo', '2012-12-21 17:04:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:04:43', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(30, 'not-logged-in', 'demo', 'demo', '2012-12-22 10:54:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-22 10:54:43', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(31, 'hello', 'demo', 'demo', '2012-12-22 11:15:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-22 11:42:04', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1),
(32, '403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', '0', NULL, 0, 1),
(33, 'vvvvvvvvv', 'zoearth', NULL, '2014-02-17 03:03:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-17 03:03:36', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- 表的結構 `article_category`
--

CREATE TABLE IF NOT EXISTS `article_category` (
  `id_article` int(11) unsigned NOT NULL,
  `id_category` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `article_category`
--

INSERT INTO `article_category` (`id_article`, `id_category`) VALUES
(4, 1),
(5, 1),
(5, 2),
(6, 2);

-- --------------------------------------------------------

--
-- 表的結構 `article_comment`
--

CREATE TABLE IF NOT EXISTS `article_comment` (
  `id_article_comment` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `content` text,
  `ip` varchar(40) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'If comment comes from admin, set to 1',
  PRIMARY KEY (`id_article_comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `article_lang`
--

CREATE TABLE IF NOT EXISTS `article_lang` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(3) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_article`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `article_lang`
--

INSERT INTO `article_lang` (`id_article`, `lang`, `url`, `title`, `subtitle`, `meta_title`, `content`, `meta_keywords`, `meta_description`, `online`) VALUES
(1, 'en', '404', 'Can''t find requested page', '', '', '<p>Maecenas massa. varius non accumsan nec, commodo vitae felis! Quisque luctus, lorem vel elementum aliquam, lorem nulla dignissim velit, id placerat libero ipsum eget sapien. Cras erat risus, pellentesque ut auctor quis, fringilla vel elit. Cras nisl dolor, vulputate eget molestie ut, sollicitudin non dui.</p><h4>Reasons</h4><ul><li>Lorem ipsum dolor sit amet</li><li>Consectetur adipiscing elit</li><li>Nulla volutpat aliquam velit<ul><li>Phasellus iaculis neque</li><li>Purus sodales ultricies</li><li>Vestibulum laoreet porttitor sem</li><li>Ac tristique libero volutpat at</li></ul></li><li>Faucibus porta lacus fringilla vel</li></ul>', '', '', 1),
(1, 'zht', '404', '', '', '', '這是404頁面', '', '', 1),
(4, 'en', 'the-power-of-php', 'The power of PHP', '', '', '<p>The Ionize CMS uses CodeIgniter, a powerful and lightweight PHP framework. For CodeIgniter developpers, starting developping on Ionize will be really easy as building a CI application !</p>', '', '', 1),
(4, 'zht', 'the-power-of-php', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 'en', 'article-1', 'One blog post', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', 1),
(5, 'zht', 'article-1', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 'en', 'article-2', 'Another blog post', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', 1),
(6, 'zht', 'article-2', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, 'en', 'article-3', 'We got something...', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', 1),
(7, 'zht', 'article-3', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, 'en', 'article-4', 'Say it differently', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', 1),
(8, 'zht', 'article-4', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(9, 'en', 'article-5', '10 incredible items !', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', 1),
(9, 'zht', 'article-5', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, 'en', 'article-6', 'Send mail to your friends !', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', 1),
(10, 'zht', 'article-6', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(11, 'en', 'easy-edition', 'Easy edition', '', '', '<p>Copy / paste content from any word processing software. Inline links are automatically converted to hyperlinks. Emails are safely encoded to avoid spam.</p>', '', '', 1),
(11, 'zht', 'easy-edition', 'easy-editioneasy-editioneasy-editioneasy', 'easy-edition', 'easy-edition', '<p>easy-editioneasy-editioneasy-editioneasy-editioneasy-editioneasy-edition</p>\n<p>easy-editioneasy-editioneasy-editioneasy-editioneasy-editioneasy-editioneasy-edition</p>\n<p>easy-editioneasy-editioneasy-editioneasy-editioneasy-edition</p>', '', '', 1),
(12, 'en', 'multilingual', 'Multilingual', '', '', '<p>You can create as much languages as you need for your website. Every content can be translated : posts, static elements in templates, media data, etc.</p>', '', '', 1),
(12, 'zht', 'multilingual', 'multilingual', 'multilingual', 'multilingual', 'multilingual', '', '', 1),
(13, 'en', 'userfriendly', 'Userfriendly', '', '', '<p>Your website structure is logical. Managing elements such as pages, articles or medias is easily done by drag''n''drop!</p>', '', '', 1),
(13, 'zht', 'userfriendly-url', 'userfriendly', 'userfriendly', '', 'userfriendly\ncccccccc', '', '', 1),
(14, 'en', 'template-system', 'Template System', '', '', '<p>Each page or article can have a dedicated template, templates can be embeded in each others. The tag language of Ionize is simple and fully documented.</p>', '', '', 1),
(14, 'zht', 'template-system', 'template-system', 'template-system', 'template-system', '<p>testtestsetsetstestsetsetest testsetsetsett</p>', '', '', 1),
(15, 'en', 'about-us-1', 'About Us', '', '', '<p>Duis diam tortor, suscipit sed varius id, dictum interdum tortor. Vivamus vel sapien vitae metus aliquet vehicula. Cras nec odio a dui sagittis semper? Nullam non luctus nisl. Cras ante ante, elementum a porta sit amet, aliquet in felis. Cras dictum metus non felis fermentum in mattis nisl dignissim. Suspendisse suscipit diam id ipsum elementum sed commodo massa ullamcorper. Curabitur tincidunt enim at ipsum aliquam a sagittis eros vulputate. Etiam elementum gravida ipsum eget congue. Pellentesque tempus facilisis odio, at porta nibh pulvinar vel.</p><p>Donec rutrum lectus eget enim aliquet in sollicitudin elit vestibulum. Sed iaculis mi quis ipsum congue elementum. Proin turpis urna, rutrum id vehicula et, cursus vel purus. Proin tincidunt, odio sed congue ultricies. Risus erat rhoncus leo, in fringilla elit libero vel metus. Sed adipiscing, orci vitae iaculis laoreet, ante nibh facilisis sem, ac pulvinar nunc risus sit amet nisl.</p>', '', '', 1),
(15, 'zht', 'about-us-1', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(16, 'en', 'footer-resources', 'Online resources', '', '', '<p><strong>Community</strong> : Ionize''s forum<br /><strong>Project hosting</strong> : Ionize on github</p><p><strong>Last version</strong> : Download Ionize</p><p><strong>Contact</strong> : team@ionizecms.com</p>', '', '', 1),
(16, 'zht', 'footer-resources', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(17, 'en', 'some-of-our-services', 'What we do for you', '', '', '<p>Suspendisse nec erat lacus? Morbi pharetra elit ac nibh ornare a vulputate urna dictum?</p><p>Vestibulum eu justo sit amet nulla adipiscing imperdiet. Nullam venenatis tortor nec mauris viverra at rutrum lacus ultricies. Sed condimentum aliquet congue! Aenean sed justo sapien.</p><p>Fusce ut turpis mauris. Phasellus ac felis arcu, semper rhoncus nisi? Quisque tortor nisl; convallis et varius vel, ullamcorper sit amet neque. Sed semper aliquam rutrum.</p><p>Phasellus ac nisl et quam laoreet interdum ultrices vel dui. Mauris et urna sed tortor molestie blandit quis vel sapien. Cras tempus sollicitudin magna eu faucibus. Nulla dapibus pharetra dapibus.</p>', '', '', 1),
(17, 'zht', 'some-of-our-services', 'some-of-our-services', 'some-of-our-services', 'some-of-our-services', '<p>some-of-our-servicessome-of-our-servicessome-of-our-services</p>\n<p>some-of-our-servicessome-of-our-servicessome-of-our-services</p>', '', '', 1),
(18, 'en', 'service-1', 'Service 1', '', '', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Nulla volutpat aliquam velit</p><p>Phasellus iaculis neque purus sodales ultricies vestibulum laoreet porttitor sem ac tristique libero volutpat at</p><p>Faucibus porta lacus fringilla vel.</p>', '', '', 1),
(18, 'zht', 'service-1', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(19, 'en', 'service-2', 'Service 2', '', '', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Nulla volutpat aliquam velit</p><p>Phasellus iaculis neque purus sodales ultricies vestibulum laoreet porttitor sem ac tristique libero volutpat at</p><p>Faucibus porta lacus fringilla vel.</p>', '', '', 1),
(19, 'zht', 'service-2', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(20, 'en', 'service-3', 'Service 3', '', '', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Nulla volutpat aliquam velit</p><p>Phasellus iaculis neque purus sodales ultricies vestibulum laoreet porttitor sem ac tristique libero volutpat at</p><p>Faucibus porta lacus fringilla vel.</p>', '', '', 1),
(20, 'zht', 'service-3', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(24, 'en', 'contact-informations', 'Contact Informations', '', '', '<p><strong>Ionize CMS</strong><br /> 123 Flower street,<br /> 75005 Paris, France</p><p><strong>Tel</strong> : +33 012345678<strong><br />Email : </strong>team@ionizecms.com</p>', '', '', 1),
(24, 'zht', 'contact-informations', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(26, 'en', 'our-location', 'Our location', '', '', '<p><iframe width="100%" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.fr/maps?f=q&amp;source=s_q&amp;hl=fr&amp;geocode=&amp;aq=&amp;sll=48.876161,2.377124&amp;sspn=0.007296,0.018175&amp;gl=fr&amp;g=villa+Marcel+Lods&amp;ie=UTF8&amp;hq=&amp;ll=48.876161,2.377124&amp;spn=0.001824,0.004544&amp;t=m&amp;z=16&amp;output=embed"></iframe></p>', '', '', 1),
(26, 'zht', 'our-location', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(27, 'en', 'whats-ionize', 'What''s Ionize ?', '', '', '<p>Ionize is an Open Source content management system created by webdesigners for webdesigners.</p><p>Originally <a title="Ionize''s development agence internet" href="http://www.ionizecms.com/en/about">created by Partikule and Toopixel</a> for their clients, Ionize is today an OpenSource project, so everybody can build easy to maintain websites.</p>', NULL, NULL, 1),
(27, 'zht', 'whats-ionize', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(28, 'en', 'can-i-help', 'Can I help ?', '', '', '<p>Because talent is nothing without involvement, we are looking for motivated coders and webdesigners to join the project team.</p><p>You have a module idea ?<br />You want to make some improvement ?<br />You wants to get involved in a promising CMS ?</p>', '', '', 1),
(28, 'zht', 'can-i-help', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(29, 'en', 'send-us-a-message', 'Send us a message !', '', '', '', NULL, NULL, 1),
(29, 'zht', 'send-us-a-message', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(30, 'en', 'not-logged-in', 'Not logged in', '', '', '', NULL, NULL, 1),
(30, 'zht', 'not-logged-in', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(31, 'en', 'hello', 'Hello', '', '', '<p>Welcome to your account management page.</p>', '', '', 1),
(31, 'zht', 'hello', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(32, 'en', '403', '403', 'Forbidden', NULL, '<p>This content is forbidden.</p>', NULL, NULL, 1),
(32, 'zht', '403', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(33, 'en', 'vvvvvvvvv', '', '', '', '', NULL, NULL, 0),
(33, 'zht', 'vvvvvvvvv', 'VVVVVVVVV', 'VVVVVVVVV', 'VVVVVVVVV', 'VVVVVVVVVVVVVVVVVVVVVVVVVVV\nVVVVVVVVVVVVVVVVVV', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- 表的結構 `article_media`
--

CREATE TABLE IF NOT EXISTS `article_media` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) unsigned DEFAULT '9999',
  `url` varchar(255) DEFAULT NULL,
  `lang_display` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_article`,`id_media`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `article_media`
--

INSERT INTO `article_media` (`id_article`, `id_media`, `online`, `ordering`, `url`, `lang_display`) VALUES
(4, 3, 1, 1, NULL, NULL),
(5, 6, 1, 2, NULL, NULL),
(5, 7, 1, 3, NULL, NULL),
(5, 8, 1, 1, NULL, NULL),
(6, 5, 1, 1, NULL, NULL),
(7, 7, 1, 1, NULL, NULL),
(8, 3, 1, 1, NULL, NULL),
(9, 8, 1, 1, NULL, NULL),
(10, 4, 1, 1, NULL, NULL),
(15, 5, 1, 2, NULL, NULL),
(17, 3, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的結構 `article_tag`
--

CREATE TABLE IF NOT EXISTS `article_tag` (
  `id_article` int(11) unsigned NOT NULL,
  `id_tag` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_article`,`id_tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `article_tag`
--

INSERT INTO `article_tag` (`id_article`, `id_tag`) VALUES
(1, 0),
(5, 1),
(5, 3),
(6, 2),
(6, 4),
(7, 1),
(8, 4),
(9, 4),
(10, 1),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(17, 0);

-- --------------------------------------------------------

--
-- 表的結構 `article_type`
--

CREATE TABLE IF NOT EXISTS `article_type` (
  `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `description` text,
  `type_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
  `id_captcha` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(3) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_captcha`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  PRIMARY KEY (`id_category`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 轉存資料表中的資料 `category`
--

INSERT INTO `category` (`id_category`, `name`, `ordering`) VALUES
(1, 'ionize', 0),
(2, 'website', 0);

-- --------------------------------------------------------

--
-- 表的結構 `category_lang`
--

CREATE TABLE IF NOT EXISTS `category_lang` (
  `id_category` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(3) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  PRIMARY KEY (`id_category`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `category_lang`
--

INSERT INTO `category_lang` (`id_category`, `lang`, `title`, `subtitle`, `description`) VALUES
(1, 'en', 'Ionize CMS', '', ''),
(2, 'en', 'Website', '', '');

-- --------------------------------------------------------

--
-- 表的結構 `element`
--

CREATE TABLE IF NOT EXISTS `element` (
  `id_element` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_element_definition` int(11) unsigned NOT NULL,
  `parent` varchar(50) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_element`),
  KEY `idx_element_id_element_definition` (`id_element_definition`),
  KEY `idx_element_id_parent` (`id_parent`),
  KEY `idx_element_parent` (`parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 轉存資料表中的資料 `element`
--

INSERT INTO `element` (`id_element`, `id_element_definition`, `parent`, `id_parent`, `ordering`) VALUES
(1, 1, 'article', 11, 1);

-- --------------------------------------------------------

--
-- 表的結構 `element_definition`
--

CREATE TABLE IF NOT EXISTS `element_definition` (
  `id_element_definition` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_element_definition`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 轉存資料表中的資料 `element_definition`
--

INSERT INTO `element_definition` (`id_element_definition`, `name`, `description`, `ordering`) VALUES
(1, 'testelement', '', 0),
(2, '', '', 0);

-- --------------------------------------------------------

--
-- 表的結構 `element_definition_lang`
--

CREATE TABLE IF NOT EXISTS `element_definition_lang` (
  `id_element_definition` int(11) unsigned NOT NULL,
  `lang` varchar(3) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_element_definition`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `element_definition_lang`
--

INSERT INTO `element_definition_lang` (`id_element_definition`, `lang`, `title`) VALUES
(1, 'en', 'addSetup'),
(1, 'zht', '附加設定'),
(2, 'en', ''),
(2, 'zht', '');

-- --------------------------------------------------------

--
-- 表的結構 `event_log`
--

CREATE TABLE IF NOT EXISTS `event_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(50) DEFAULT NULL,
  `message` text,
  `id_user` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `extend_field`
--

CREATE TABLE IF NOT EXISTS `extend_field` (
  `id_extend_field` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(1) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `parent` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `translated` char(1) DEFAULT '0',
  `value` text,
  `default_value` varchar(255) DEFAULT NULL,
  `global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parents` varchar(300) NOT NULL DEFAULT '',
  `id_element_definition` int(11) unsigned NOT NULL DEFAULT '0',
  `block` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_extend_field`),
  KEY `idx_extend_field_parent` (`parent`),
  KEY `idx_extend_field_id_element_definition` (`id_element_definition`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 轉存資料表中的資料 `extend_field`
--

INSERT INTO `extend_field` (`id_extend_field`, `name`, `type`, `description`, `parent`, `ordering`, `translated`, `value`, `default_value`, `global`, `parents`, `id_element_definition`, `block`) VALUES
(1, 'addimg', '7', '附加圖片', 'page', 0, '0', '', '', 0, '0', 0, '0'),
(2, 'addpic', '1', '', '', 0, '0', '', '', 0, '0', 1, '0');

-- --------------------------------------------------------

--
-- 表的結構 `extend_fields`
--

CREATE TABLE IF NOT EXISTS `extend_fields` (
  `id_extend_fields` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_extend_field` int(11) unsigned NOT NULL,
  `parent` varchar(50) NOT NULL DEFAULT '',
  `id_parent` int(11) unsigned NOT NULL,
  `lang` char(3) NOT NULL DEFAULT '',
  `content` text,
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `id_element` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_extend_fields`),
  KEY `idx_extend_fields_id_parent` (`id_parent`),
  KEY `idx_extend_fields_lang` (`lang`),
  KEY `idx_extend_fields_id_extend_field` (`id_extend_field`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 轉存資料表中的資料 `extend_fields`
--

INSERT INTO `extend_fields` (`id_extend_fields`, `id_extend_field`, `parent`, `id_parent`, `lang`, `content`, `ordering`, `id_element`) VALUES
(1, 2, '', 11, '', '', 0, 1),
(2, 1, '', 13, '', '2014-02-13 16:07:46', 0, 0),
(3, 1, '', 14, '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的結構 `extend_field_lang`
--

CREATE TABLE IF NOT EXISTS `extend_field_lang` (
  `id_extend_field` int(11) unsigned NOT NULL,
  `lang` char(3) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_extend_field`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `extend_field_lang`
--

INSERT INTO `extend_field_lang` (`id_extend_field`, `lang`, `label`) VALUES
(1, 'en', 'addimg'),
(1, 'zht', '附加圖片'),
(2, 'en', '選單圖片'),
(2, 'zht', '選單圖片');

-- --------------------------------------------------------

--
-- 表的結構 `ion_sessions`
--

CREATE TABLE IF NOT EXISTS `ion_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) DEFAULT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `lang`
--

CREATE TABLE IF NOT EXISTS `lang` (
  `lang` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `online` char(1) DEFAULT '0',
  `def` char(1) DEFAULT '0',
  `ordering` int(11) DEFAULT NULL,
  `direction` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `lang`
--

INSERT INTO `lang` (`lang`, `name`, `online`, `def`, `ordering`, `direction`) VALUES
('en', 'english', '1', '0', 2, 1),
('zht', 'tw', '1', '1', 1, 1);

-- --------------------------------------------------------

--
-- 表的結構 `login_tracker`
--

CREATE TABLE IF NOT EXISTS `login_tracker` (
  `ip_address` varchar(32) NOT NULL,
  `first_time` int(11) unsigned NOT NULL,
  `failures` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`ip_address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `login_tracker`
--

INSERT INTO `login_tracker` (`ip_address`, `first_time`, `failures`) VALUES
('127.0.0.1', 1394121540, 3);

-- --------------------------------------------------------

--
-- 表的結構 `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id_media` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'file_name',
  `path` varchar(500) NOT NULL COMMENT 'Complete path to the medium, including media file name, excluding host name',
  `base_path` varchar(500) NOT NULL COMMENT 'medium folder base path, excluding host name',
  `copyright` varchar(128) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL COMMENT 'Medium date',
  `link` varchar(255) DEFAULT NULL COMMENT 'Link to a resource, attached to this medium',
  `square_crop` enum('tl','m','br') NOT NULL DEFAULT 'm',
  PRIMARY KEY (`id_media`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 轉存資料表中的資料 `media`
--

INSERT INTO `media` (`id_media`, `type`, `file_name`, `path`, `base_path`, `copyright`, `provider`, `date`, `link`, `square_crop`) VALUES
(3, 'picture', 'screenshot_ionize_dashboard.jpg', 'files/screenshot_ionize_dashboard.jpg', 'files/', NULL, NULL, '0000-00-00 00:00:00', NULL, 'm'),
(4, 'picture', 'IMG_8359.jpg', 'files/pictures/IMG_8359.jpg', 'files/pictures/', '', '', '0000-00-00 00:00:00', '', 'm'),
(5, 'picture', 'IMG_8447.jpg', 'files/pictures/IMG_8447.jpg', 'files/pictures/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(6, 'picture', 'IMG_8632.jpg', 'files/pictures/IMG_8632.jpg', 'files/pictures/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(7, 'picture', 'IMG_8645.jpg', 'files/pictures/IMG_8645.jpg', 'files/pictures/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(8, 'picture', 'IMG_8963.jpg', 'files/pictures/IMG_8963.jpg', 'files/pictures/', NULL, NULL, '0000-00-00 00:00:00', NULL, 'm'),
(9, 'picture', 'wall_e_headphones_vignette.jpg', 'files/wall_e_headphones_vignette.jpg', 'files/', NULL, NULL, '0000-00-00 00:00:00', NULL, 'm'),
(10, 'picture', 'ionize_article_095.jpg', 'files/ionize/ionize_article_095.jpg', 'files/ionize/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(11, 'picture', 'ionize_dashboard_095.jpg', 'files/ionize/ionize_dashboard_095.jpg', 'files/ionize/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(12, 'picture', 'ionize_languages_095.jpg', 'files/ionize/ionize_languages_095.jpg', 'files/ionize/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(13, 'picture', 'ionize_login_window_095.jpg', 'files/ionize/ionize_login_window_095.jpg', 'files/ionize/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(14, 'picture', 'ionize_multiple_windows_095.jpg', 'files/ionize/ionize_multiple_windows_095.jpg', 'files/ionize/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(15, 'picture', 'ionize_option_panel_095.jpg', 'files/ionize/ionize_option_panel_095.jpg', 'files/ionize/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(16, 'picture', 'ionize_page_edit_095.jpg', 'files/ionize/ionize_page_edit_095.jpg', 'files/ionize/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(17, 'picture', 'ionize_picture_data_095.jpg', 'files/ionize/ionize_picture_data_095.jpg', 'files/ionize/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(18, 'picture', 'plus.jpg', 'files/pictures/plus.jpg', 'files/pictures/', NULL, '', '0000-00-00 00:00:00', NULL, 'm');

-- --------------------------------------------------------

--
-- 表的結構 `media_lang`
--

CREATE TABLE IF NOT EXISTS `media_lang` (
  `lang` varchar(3) NOT NULL DEFAULT '',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `alt` varchar(500) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id_media`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `media_lang`
--

INSERT INTO `media_lang` (`lang`, `id_media`, `title`, `alt`, `description`) VALUES
('en', 4, 'Mingun', 'Alot of young munks live in a monastery next to the Hsinbyume pagoda', 'Alot of young munks live in a monastery next to the Hsinbyume pagoda'),
('en', 5, 'Mandalay', 'One working day in the historical capital of Burma.', 'One working day in the historical capital of Burma.'),
('en', 6, 'Monywa, Burma', 'In the mountain of Monywa, more than two thousand caves were built in honor of Budha.', 'In the mountain of Monywa, more than two thousand caves were built in honor of Budha.'),
('en', 7, 'Monywa wall paints', 'These 17th century wall painting are very well preserved because the caves were forgivven for centuries.', 'These 17th centruey wall painting are very well preserved because the caves were forgivven for centuries.'),
('en', 10, 'Edit Article', '', 'With Ionize CMS, edit instantly your content in all languages'),
('en', 11, 'Dashboard', '', 'Ionize CMS dashboard gives an overview of the last actions on your website'),
('en', 12, 'Nativelly Multilingual', '', 'Every language can be setup by the user !'),
('en', 13, 'Login Screen Ionize CMS', '', 'Ionize login of the Admin Panel'),
('en', 14, 'Windowed Workspace', '', 'Make work easier !'),
('en', 15, 'So Friendly !', '', 'Every component in Ionize CMS is userfriendly'),
('en', 16, '', '', ''),
('en', 17, '', '', '');

-- --------------------------------------------------------

--
-- 表的結構 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 轉存資料表中的資料 `menu`
--

INSERT INTO `menu` (`id_menu`, `name`, `title`, `ordering`) VALUES
(1, 'main', 'Main menu', NULL),
(2, 'system', 'System menu', NULL);

-- --------------------------------------------------------

--
-- 表的結構 `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id_module` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `with_admin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_module`),
  KEY `i_module_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `module_setting`
--

CREATE TABLE IF NOT EXISTS `module_setting` (
  `id_module_setting` int(11) NOT NULL AUTO_INCREMENT,
  `id_module` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'Setting name',
  `content` varchar(255) NOT NULL COMMENT 'Setting content',
  `lang` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_module_setting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `id_note` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `type` varchar(10) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id_note`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id_page` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) unsigned NOT NULL DEFAULT '0',
  `id_menu` int(11) unsigned NOT NULL DEFAULT '0',
  `id_type` smallint(2) NOT NULL DEFAULT '0',
  `id_subnav` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT '0',
  `level` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(55) DEFAULT NULL,
  `updater` varchar(55) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `publish_on` datetime DEFAULT NULL,
  `publish_off` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `logical_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `appears` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `has_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `view` varchar(50) DEFAULT NULL COMMENT 'Page view',
  `view_single` varchar(50) DEFAULT NULL COMMENT 'Single Article Page view',
  `article_list_view` varchar(50) DEFAULT NULL COMMENT 'Article list view for each article linked to this page',
  `article_view` varchar(50) DEFAULT NULL COMMENT 'Article detail view for each article linked to this page',
  `article_order` varchar(50) NOT NULL DEFAULT 'ordering' COMMENT 'Article order in this page. Can be "ordering", "date"',
  `article_order_direction` varchar(50) NOT NULL DEFAULT 'ASC',
  `link` varchar(255) DEFAULT '' COMMENT 'Link to internal / external resource',
  `link_type` varchar(25) DEFAULT NULL COMMENT '''page'', ''article'' or NULL',
  `link_id` varchar(20) NOT NULL DEFAULT '',
  `pagination` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Pagination use ?',
  `priority` int(1) unsigned NOT NULL DEFAULT '5' COMMENT 'Page priority',
  `used_by_module` tinyint(1) unsigned DEFAULT NULL,
  `deny_code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `idx_page_id_parent` (`id_parent`),
  KEY `idx_page_level` (`level`),
  KEY `idx_page_menu` (`id_menu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 轉存資料表中的資料 `page`
--

INSERT INTO `page` (`id_page`, `id_parent`, `id_menu`, `id_type`, `id_subnav`, `name`, `ordering`, `level`, `online`, `home`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `appears`, `has_url`, `view`, `view_single`, `article_list_view`, `article_view`, `article_order`, `article_order_direction`, `link`, `link_type`, `link_id`, `pagination`, `priority`, `used_by_module`, `deny_code`) VALUES
(1, 0, 2, 0, 0, '404', 0, 0, 1, 0, 'demo', 'demo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 14:42:05', '0000-00-00 00:00:00', 0, 1, '', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, NULL),
(2, 0, 1, 0, 0, 'welcome', 1, 0, 1, 1, 'demo', 'zoearth', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-17 07:46:37', '0000-00-00 00:00:00', 1, 1, 'page_home', '', '', '', 'ordering', 'ASC', '', '', '0', 0, 5, 0, '404'),
(3, 0, 1, 0, 0, 'about-ionize-cms', 5, 0, 1, 0, 'demo', 'demo', '2012-11-17 09:42:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-06 16:27:42', '0000-00-00 00:00:00', 1, 1, 'pages/page_standard', 'pages/page_standard', NULL, '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, NULL),
(4, 0, 1, 0, 0, 'contact', 6, 0, 1, 0, 'demo', 'demo', '2012-11-17 09:42:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 14:34:59', '0000-00-00 00:00:00', 1, 1, 'page_contact', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, NULL),
(6, 0, 1, 0, 0, 'blog', 2, 0, 1, 0, 'demo', 'zoearth', '2012-11-17 13:57:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-17 05:49:21', '0000-00-00 00:00:00', 1, 1, 'page_blog', 'page_blog_post', '', '', 'ordering', 'ASC', '', NULL, '', 3, 5, 0, '404'),
(8, 0, 1, 0, 0, 'services', 4, 0, 1, 0, 'demo', 'demo', '2012-11-20 22:12:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:53:44', '0000-00-00 00:00:00', 1, 1, '', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, NULL),
(9, 0, 2, 0, 0, 'footer', 1, 0, 1, 0, 'demo', 'demo', '2012-11-21 11:52:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-11-21 11:52:30', '0000-00-00 00:00:00', 0, 1, '', '', NULL, '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, NULL),
(10, 0, 1, 0, 0, 'my-account', 7, 0, 1, 0, 'demo', 'demo', '2012-12-21 20:11:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-22 10:53:57', '0000-00-00 00:00:00', 1, 1, 'page_my_account', '', NULL, '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, NULL),
(11, 0, 2, 0, 0, '401', 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(12, 0, 2, 0, 0, '403', 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(13, 2, 1, 0, 0, 'bb', 8, 1, 1, 0, 'zoearth', 'zoearth', '2014-02-17 03:10:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-02-17 09:07:02', '0000-00-00 00:00:00', 1, 1, '', '', NULL, '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(14, 2, 1, 0, 0, 'qq', 9, 1, 1, 0, 'zoearth', NULL, '2014-02-17 09:06:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的結構 `page_article`
--

CREATE TABLE IF NOT EXISTS `page_article` (
  `id_page` int(11) unsigned NOT NULL,
  `id_article` int(11) unsigned NOT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `view` varchar(50) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `id_type` int(11) unsigned DEFAULT NULL,
  `link_type` varchar(25) NOT NULL DEFAULT '',
  `link_id` varchar(20) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `main_parent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_page`,`id_article`),
  KEY `idx_page_article_id_type` (`id_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `page_article`
--

INSERT INTO `page_article` (`id_page`, `id_article`, `online`, `view`, `ordering`, `id_type`, `link_type`, `link_id`, `link`, `main_parent`) VALUES
(1, 1, 1, NULL, 0, NULL, '', '', '', 1),
(2, 12, 1, NULL, 3, 0, '', '', '', 1),
(2, 13, 1, NULL, 1, 0, '', '', '', 1),
(2, 14, 1, NULL, 2, 0, '', '', '', 1),
(3, 15, 1, NULL, 1, NULL, '', '', '', 1),
(4, 24, 1, NULL, 2, 4, '', '', '', 1),
(4, 26, 1, NULL, 3, 4, '', '', '', 1),
(4, 29, 1, NULL, 1, NULL, '', '', '', 1),
(6, 5, 1, NULL, 7, NULL, '', '', '', 1),
(6, 6, 1, NULL, 2, NULL, '', '', '', 1),
(6, 7, 1, NULL, 3, NULL, '', '', '', 1),
(6, 8, 1, NULL, 4, NULL, '', '', '', 1),
(6, 9, 1, NULL, 5, NULL, '', '', '', 1),
(6, 10, 1, NULL, 6, 0, '', '', '', 1),
(6, 17, 1, NULL, 1, NULL, '', '', '', 1),
(8, 18, 1, NULL, 1, 4, '', '', '', 1),
(8, 19, 1, NULL, 2, 4, '', '', '', 1),
(8, 20, 1, NULL, 3, 4, '', '', '', 1),
(9, 16, 1, NULL, 3, NULL, '', '', '', 1),
(9, 27, 1, NULL, 1, NULL, '', '', '', 1),
(9, 28, 1, NULL, 2, NULL, '', '', '', 1),
(10, 30, 1, NULL, 2, 5, '', '', '', 1),
(10, 31, 1, NULL, 1, 6, '', '', '', 1),
(12, 32, 1, NULL, 0, NULL, '', '', '', 0),
(13, 11, 1, NULL, 1, 0, '', '', '', 1);

-- --------------------------------------------------------

--
-- 表的結構 `page_lang`
--

CREATE TABLE IF NOT EXISTS `page_lang` (
  `lang` varchar(3) NOT NULL DEFAULT '',
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `subnav_title` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_page`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `page_lang`
--

INSERT INTO `page_lang` (`lang`, `id_page`, `url`, `link`, `title`, `subtitle`, `nav_title`, `subnav_title`, `meta_title`, `meta_description`, `meta_keywords`, `online`) VALUES
('en', 1, '404', '', '404', 'Can''t find requested page !', '', '', '', '', '', 1),
('zht', 1, '404', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 2, 'home', '', 'Ionize CMS', 'the most professional friendly CMS ever made.', 'Home', '', 'Welcome To Ionize CMS2', '', '', 1),
('zht', 2, 'home', '', '中文首頁', '中文首頁', 'twtw', '', 'twtwttwtwtwtwt', '', '', 1),
('en', 3, 'about-ionize-cms', '', 'About Us', 'Some info about us !', '', '', '', '', '', 1),
('zht', 3, 'about-ionize-cms', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 4, 'contact', '', 'Contact', 'Find us, send us one message', '', '', '', '', '', 1),
('zht', 4, 'contact', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 6, 'blog', '', 'Blog', 'Interesting stories ', '', '', '', '', '', 1),
('zht', 6, 'blog', '', '部落格', '部落格', '部落格', '', '部落格', '', '', 1),
('en', 8, 'services', '', 'Services', 'The very great services we can provide to make you happy', '', '', '', '', '', 1),
('zht', 8, 'services', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 9, 'footer', '', 'Footer', '', '', '', '', '', '', 1),
('zht', 9, 'footer', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 10, 'my-account', '', 'My account', '', '', '', '', '', '', 1),
('zht', 10, 'my-account', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 11, '401', '', '401', 'Login needed', '', '', NULL, NULL, NULL, 1),
('zht', 11, '401', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 12, '403', '', '403', 'Forbidden', '', '', NULL, NULL, NULL, 1),
('zht', 12, '403', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 13, 'bb', '', '', '', '', '', '', '', '', 1),
('zht', 13, 'bb', '', 'BB', 'BB', '', '', '', '', '', 1),
('en', 14, 'qq', '', 'QQ', 'QQ', 'QQ', '', 'QQ', NULL, NULL, 1),
('zht', 14, 'qq', '', 'QQ', 'QQ', 'QQ', '', 'QQ', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- 表的結構 `page_media`
--

CREATE TABLE IF NOT EXISTS `page_media` (
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) unsigned DEFAULT '9999',
  `lang_display` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_page`,`id_media`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `page_media`
--

INSERT INTO `page_media` (`id_page`, `id_media`, `online`, `ordering`, `lang_display`) VALUES
(2, 4, 1, 13, NULL),
(2, 5, 1, 10, NULL),
(2, 6, 1, 1, NULL),
(2, 7, 1, 11, NULL),
(2, 8, 1, 12, NULL),
(2, 18, 1, 14, NULL);

-- --------------------------------------------------------

--
-- 表的結構 `resource`
--

CREATE TABLE IF NOT EXISTS `resource` (
  `id_resource` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) unsigned DEFAULT '0',
  `resource` varchar(255) NOT NULL DEFAULT '',
  `actions` varchar(500) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `description` varchar(1000) DEFAULT '',
  PRIMARY KEY (`id_resource`),
  UNIQUE KEY `resource_key` (`resource`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=304 ;

--
-- 轉存資料表中的資料 `resource`
--

INSERT INTO `resource` (`id_resource`, `id_parent`, `resource`, `actions`, `title`, `description`) VALUES
(1, NULL, 'admin', '', 'Backend login', 'Connect to ionize backend'),
(10, NULL, 'admin/menu', 'create,edit,delete', 'Menu', 'Menus'),
(11, 10, 'admin/menu/permissions/backend', '', 'Permissions', 'Menu > Backend Permissions'),
(20, NULL, 'admin/translations', '', 'Translations', 'Translations'),
(30, NULL, 'admin/filemanager', 'upload,rename,delete,move', 'Filemanager', 'FileManager'),
(35, NULL, 'admin/medialist', '', 'MediaList', 'MediaList'),
(40, NULL, 'admin/page', 'create,edit,delete', 'Page', 'Page'),
(41, 40, 'admin/page/article', 'add', 'Article', 'Page > Article'),
(42, 40, 'admin/page/element', 'add', 'Content Element', 'Page > Content Element'),
(50, 40, 'admin/page/media', '', 'Media', 'Page > Media'),
(51, 50, 'admin/page/media/picture', 'link,unlink, edit', 'Pictures', 'Page > Media > Pictures'),
(52, 50, 'admin/page/media/video', 'link,unlink, edit', 'Videos', 'Page > Media > Videos'),
(53, 50, 'admin/page/media/music', 'link,unlink, edit', 'Music', 'Page > Media > Music'),
(54, 50, 'admin/page/media/file', 'link,unlink, edit', 'Files', 'Page > Media > Files'),
(60, 40, 'admin/page/permissions', '', 'Permission', 'Page > Permission'),
(61, 60, 'admin/page/permissions/backend', '', 'Backend', 'Page > Permission > Backend'),
(62, 60, 'admin/page/permissions/frontend', '', 'Frontend', 'Page > Permission > Frontend'),
(70, NULL, 'admin/article', 'create,edit,delete,move,copy,duplicate', 'Article', 'Article'),
(80, 70, 'admin/article/media', '', 'Media', 'Article > Media'),
(81, 80, 'admin/article/media/picture', 'link,unlink, edit', 'Pictures', 'Article > Media > Pictures'),
(82, 80, 'admin/article/media/video', 'link,unlink,edit', 'Videos', 'Article > Media > Videos'),
(83, 80, 'admin/article/media/music', 'link,unlink,edit', 'Music', 'Article > Media > Music'),
(84, 80, 'admin/article/media/file', 'link,unlink,edit', 'Files', 'Article > Media > Files'),
(85, 70, 'admin/article/element', 'add', 'Content Element', 'Article > Content Element'),
(86, 70, 'admin/article/category', '', 'Manage categories', 'Article > Categories'),
(90, 70, 'admin/article/permissions', '', 'Permission', 'Article > Permission'),
(91, 90, 'admin/article/permissions/backend', '', 'Backend', 'Article > Permission > Backend'),
(92, 90, 'admin/article/permissions/frontend', '', 'Frontend', 'Article > Permission > Frontend'),
(93, 70, 'admin/article/tag', '', 'Manage tags', 'Article > Tags'),
(100, NULL, 'admin/tree', '', 'Tree', ''),
(101, 100, 'admin/tree/menu', 'add_page,edit', 'Menus', ''),
(102, 100, 'admin/tree/page', 'status,add_page,add_article,order', 'Pages', ''),
(103, 100, 'admin/tree/article', 'unlink,status,move,copy,order', 'Articles', ''),
(120, NULL, 'admin/article/type', 'create,edit,delete', 'Article Type', 'Article types'),
(150, NULL, 'admin/modules', 'install', 'Modules', 'Modules'),
(151, 150, 'admin/modules/permissions', '', 'Set Permissions', 'Modules > Permissions'),
(180, NULL, 'admin/element', 'create,edit,delete', 'Content Element', 'Content Elements'),
(210, NULL, 'admin/extend', 'create,edit,delete', 'Extend Fields', 'Extend Fields'),
(240, NULL, 'admin/tools', '', 'Tools', 'Tools'),
(241, 240, 'admin/tools/google_analytics', '', 'Google Analytics', 'Tools > Google Analytics'),
(250, 240, 'admin/tools/system', '', 'System Diagnosis', 'Tools > System'),
(251, 250, 'admin/tools/system/information', '', 'Information', 'Tools > System > Information'),
(252, 250, 'admin/tools/system/repair', '', 'Repair tools', 'Tools > System > Repair'),
(253, 250, 'admin/tools/system/report', '', 'Reports', 'Tools > System > Reports'),
(270, NULL, 'admin/settings', '', 'Settings', 'Settings'),
(271, 270, 'admin/settings/ionize', '', 'Ionize UI', 'Settings > UI Settings'),
(272, 270, 'admin/settings/languages', '', 'Languages Management', 'Settings > Languages'),
(273, 270, 'admin/settings/themes', 'edit', 'Themes', 'Settings > Themes'),
(274, 270, 'admin/settings/website', '', 'Website settings', 'Settings > Website'),
(275, 270, 'admin/settings/technical', '', 'Technical settings', 'Settings > Technical'),
(300, NULL, 'admin/users_roles', '', 'Users / Roles', 'Users / Roles'),
(301, 300, 'admin/user', 'create,edit,delete', 'Users', 'Users'),
(302, 300, 'admin/role', 'create,edit,delete', 'Roles', 'Roles'),
(303, 302, 'admin/role/permissions', '', 'Set Permissions', 'See Role''s permissions');

-- --------------------------------------------------------

--
-- 表的結構 `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id_role` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `role_level` int(11) DEFAULT NULL,
  `role_code` varchar(25) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `role_description` tinytext,
  PRIMARY KEY (`id_role`),
  UNIQUE KEY `role_code` (`role_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 轉存資料表中的資料 `role`
--

INSERT INTO `role` (`id_role`, `role_level`, `role_code`, `role_name`, `role_description`) VALUES
(1, 10000, 'super-admin', 'Super Admin', ''),
(2, 5000, 'admin', 'Admin', ''),
(3, 1000, 'editor', 'Editor', ''),
(4, 100, 'user', 'User', ''),
(5, 50, 'pending', 'Pending', ''),
(6, 10, 'guest', 'Guest', ''),
(7, -10, 'banned', 'Banned', ''),
(8, -100, 'deactivated', 'Deactivated', '');

-- --------------------------------------------------------

--
-- 表的結構 `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
  `id_role` int(11) NOT NULL,
  `resource` varchar(100) NOT NULL DEFAULT '',
  `actions` varchar(100) NOT NULL DEFAULT '',
  `permission` smallint(1) DEFAULT NULL,
  `id_element` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_role`,`resource`,`actions`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `rule`
--

INSERT INTO `rule` (`id_role`, `resource`, `actions`, `permission`, `id_element`) VALUES
(1, 'all', '', 1, NULL),
(2, 'admin', '', 1, NULL),
(2, 'admin/article', 'create,edit,delete,move,copy,duplicate', 1, NULL),
(2, 'admin/article/category', '', 1, NULL),
(2, 'admin/article/element', 'add', 1, NULL),
(2, 'admin/article/media', '', 1, NULL),
(2, 'admin/article/media/file', 'link,unlink,edit', 1, NULL),
(2, 'admin/article/media/music', 'link,unlink,edit', 1, NULL),
(2, 'admin/article/media/picture', 'link,unlink,edit', 1, NULL),
(2, 'admin/article/media/video', 'link,unlink,edit', 1, NULL),
(2, 'admin/article/permissions', '', 1, NULL),
(2, 'admin/article/permissions/backend', '', 1, NULL),
(2, 'admin/article/permissions/frontend', '', 1, NULL),
(2, 'admin/article/tag', '', 1, NULL),
(2, 'admin/article/type', 'create,edit,delete', 1, NULL),
(2, 'admin/element', 'create,edit,delete', 1, NULL),
(2, 'admin/extend', 'create,edit,delete', 1, NULL),
(2, 'admin/filemanager', 'upload,rename,delete,move', 1, NULL),
(2, 'admin/menu', 'create,edit,delete', 1, NULL),
(2, 'admin/modules', 'install', 1, NULL),
(2, 'admin/modules/permissions', '', 1, NULL),
(2, 'admin/page', 'create,edit,delete', 1, NULL),
(2, 'admin/page/article', 'add', 1, NULL),
(2, 'admin/page/element', 'add', 1, NULL),
(2, 'admin/page/media', '', 1, NULL),
(2, 'admin/page/media/file', 'link,unlink,edit', 1, NULL),
(2, 'admin/page/media/music', 'link,unlink,edit', 1, NULL),
(2, 'admin/page/media/picture', 'link,unlink,edit', 1, NULL),
(2, 'admin/page/media/video', 'link,unlink,edit', 1, NULL),
(2, 'admin/page/permissions', '', 1, NULL),
(2, 'admin/page/permissions/backend', '', 1, NULL),
(2, 'admin/page/permissions/frontend', '', 1, NULL),
(2, 'admin/role', 'create,edit,delete', 1, NULL),
(2, 'admin/role/permissions', '', 1, NULL),
(2, 'admin/settings', '', 1, NULL),
(2, 'admin/settings/ionize', '', 1, NULL),
(2, 'admin/settings/languages', '', 1, NULL),
(2, 'admin/settings/website', '', 1, NULL),
(2, 'admin/tools', '', 1, NULL),
(2, 'admin/tools/google_analytics', '', 1, NULL),
(2, 'admin/tools/system', '', 1, NULL),
(2, 'admin/tools/system/information', '', 1, NULL),
(2, 'admin/tools/system/repair', '', 1, NULL),
(2, 'admin/tools/system/report', '', 1, NULL),
(2, 'admin/translations', '', 1, NULL),
(2, 'admin/tree', '', 1, NULL),
(2, 'admin/tree/article', 'unlink,status,move,copy,order', 1, NULL),
(2, 'admin/tree/menu', 'add_page,edit', 1, NULL),
(2, 'admin/tree/page', 'status,add_page,add_article,order', 1, NULL),
(2, 'admin/user', 'create,edit,delete', 1, NULL),
(2, 'admin/users_roles', '', 1, NULL),
(3, 'admin', '', 1, NULL),
(3, 'admin/article', 'create,edit,delete,move,copy,duplicate', 1, NULL),
(3, 'admin/article/category', '', 1, NULL),
(3, 'admin/article/element', 'add', 1, NULL),
(3, 'admin/article/media', '', 1, NULL),
(3, 'admin/article/media/picture', 'unlink', 1, NULL),
(3, 'admin/article/media/video', 'unlink,edit', 1, NULL),
(3, 'admin/article/permissions', '', 1, NULL),
(3, 'admin/article/permissions/backend', '', 1, NULL),
(3, 'admin/article/permissions/frontend', '', 1, NULL),
(3, 'admin/article/tag', '', 1, NULL),
(3, 'admin/filemanager', 'upload,rename,delete,move', 1, NULL),
(3, 'admin/menu', 'create,edit,delete', 1, NULL),
(3, 'admin/modules', '', 1, NULL),
(3, 'admin/page', 'create,edit,delete', 1, NULL),
(3, 'admin/page/article', 'add', 1, NULL),
(3, 'admin/page/element', 'add', 1, NULL),
(3, 'admin/page/media', '', 1, NULL),
(3, 'admin/page/media/file', 'link,unlink,edit', 1, NULL),
(3, 'admin/page/media/music', 'link,unlink,edit', 1, NULL),
(3, 'admin/page/media/picture', 'link,unlink,edit', 1, NULL),
(3, 'admin/page/media/video', 'link,unlink,edit', 1, NULL),
(3, 'admin/page/permissions', '', 1, NULL),
(3, 'admin/page/permissions/backend', '', 1, NULL),
(3, 'admin/page/permissions/frontend', '', 1, NULL),
(3, 'admin/settings', '', 1, NULL),
(3, 'admin/settings/ionize', '', 1, NULL),
(3, 'admin/settings/languages', '', 1, NULL),
(3, 'admin/settings/website', '', 1, NULL),
(3, 'admin/tools', '', 1, NULL),
(3, 'admin/tools/google_analytics', '', 1, NULL),
(3, 'admin/tools/system', '', 1, NULL),
(3, 'admin/tools/system/information', '', 1, NULL),
(3, 'admin/tools/system/report', '', 1, NULL),
(3, 'admin/translations', '', 1, NULL),
(3, 'admin/tree', '', 1, NULL),
(3, 'admin/tree/article', 'unlink,status,move,copy,order', 1, NULL),
(3, 'admin/tree/menu', 'add_page,edit', 1, NULL),
(3, 'admin/tree/page', 'status,add_page,add_article,order', 1, NULL),
(3, 'admin/user', 'create,edit,delete', 1, NULL),
(3, 'admin/users_roles', '', 1, NULL);

-- --------------------------------------------------------

--
-- 表的結構 `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id_setting` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_setting`),
  UNIQUE KEY `idx_unq_setting` (`name`,`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 轉存資料表中的資料 `setting`
--

INSERT INTO `setting` (`id_setting`, `name`, `content`, `lang`) VALUES
(1, 'website_email', '', ''),
(2, 'files_path', 'files', ''),
(3, 'theme', 'bootstrap', ''),
(4, 'theme_admin', 'admin_zoearth', ''),
(5, 'google_analytics', '', ''),
(6, 'filemanager', 'mootools-filemanager', ''),
(7, 'show_help_tips', '', ''),
(8, 'display_connected_label', '1', ''),
(9, 'display_dashboard_shortcuts', '1', ''),
(10, 'display_dashboard_modules', '1', ''),
(11, 'display_dashboard_users', '1', ''),
(12, 'display_dashboard_content', '1', ''),
(13, 'texteditor', 'tinymce', ''),
(14, 'media_thumb_size', '120', ''),
(15, 'tinybuttons1', 'pdw_toggle,|,bold,italic,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,formatselect,|,bullist,numlist,|,link,unlink,image,|,spellchecker', ''),
(16, 'tinybuttons2', 'fullscreen, undo,redo,|,pastetext,selectall,removeformat,|,media,charmap,hr,blockquote,|,template,|,codemirror', ''),
(17, 'tinybuttons3', 'tablecontrols', ''),
(18, 'smalltinybuttons1', 'bold,italic,|,bullist,numlist,|,link,unlink,image,|,nonbreaking', ''),
(19, 'smalltinybuttons2', '', ''),
(20, 'smalltinybuttons3', '', ''),
(21, 'displayed_admin_languages', 'en,zht', ''),
(22, 'date_format', '%Y.%m.%d', ''),
(23, 'force_lang_urls', '0', ''),
(24, 'tinyblockformats', 'p,h2,h3,h4,h5,pre,div', ''),
(25, 'article_allowed_tags', 'h2,h3,h4,h5,h6,em,img,iframe,table,object,thead,tbody,tfoot,tr,th,td,caption,colgroup,col,param,embed,map,area,p,a,ul,ol,li,br,b,strong,i', ''),
(26, 'filemanager_file_types', 'gif,jpe,jpeg,jpg,png,flv,mpeg,mpg,mp3,pdf', ''),
(27, 'default_admin_lang', 'zht', ''),
(28, 'ionize_version', '1.0.0', ''),
(29, 'upload_autostart', '1', ''),
(30, 'resize_on_upload', '1', ''),
(31, 'picture_max_width', '1200', ''),
(32, 'picture_max_height', '1200', ''),
(33, 'upload_mode', '', ''),
(34, 'no_source_picture', 'default.png', ''),
(35, 'enable_backend_tracker', '', ''),
(36, 'site_title', 'My website', 'en'),
(37, 'backend_ui_style', 'original', '');

-- --------------------------------------------------------

--
-- 表的結構 `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id_tag` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 轉存資料表中的資料 `tag`
--

INSERT INTO `tag` (`id_tag`, `tag_name`) VALUES
(1, 'Content Management'),
(2, 'development'),
(3, 'company'),
(4, 'services');

-- --------------------------------------------------------

--
-- 表的結構 `tracker`
--

CREATE TABLE IF NOT EXISTS `tracker` (
  `id_user` int(11) unsigned NOT NULL,
  `ip_address` varchar(32) DEFAULT NULL,
  `element` varchar(50) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `elements` varchar(3000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `parent` char(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `ordering` smallint(6) NOT NULL,
  `view` varchar(50) DEFAULT NULL COMMENT 'view',
  `flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `url`
--

CREATE TABLE IF NOT EXISTS `url` (
  `id_url` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_entity` int(11) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `canonical` smallint(1) NOT NULL DEFAULT '0',
  `active` smallint(1) NOT NULL DEFAULT '0',
  `lang` varchar(3) NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `path_ids` varchar(50) DEFAULT NULL,
  `full_path_ids` varchar(50) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id_url`),
  KEY `idx_url_type` (`type`),
  KEY `idx_url_active` (`active`),
  KEY `idx_url_lang` (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=785 ;

--
-- 轉存資料表中的資料 `url`
--

INSERT INTO `url` (`id_url`, `id_entity`, `type`, `canonical`, `active`, `lang`, `path`, `path_ids`, `full_path_ids`, `creation_date`) VALUES
(596, 4, 'article', 1, 1, 'en', 'home/the-power-of-php', '2/4', '2/4', '2012-12-23 01:05:34'),
(601, 1, 'page', 1, 1, 'en', '404', '1', '1', '2012-12-28 19:56:07'),
(602, 1, 'article', 1, 1, 'en', '404/404', '1/1', '1/1', '2012-12-28 19:56:07'),
(608, 3, 'page', 1, 1, 'en', 'about-ionize-cms', '3', '3', '2012-12-28 19:56:07'),
(609, 15, 'article', 1, 1, 'en', 'about-ionize-cms/about-us-1', '3/15', '3/15', '2012-12-28 19:56:07'),
(610, 4, 'page', 1, 1, 'en', 'contact', '4', '4', '2012-12-28 19:56:07'),
(611, 24, 'article', 1, 1, 'en', 'contact/contact-informations', '4/24', '4/24', '2012-12-28 19:56:07'),
(612, 26, 'article', 1, 1, 'en', 'contact/our-location', '4/26', '4/26', '2012-12-28 19:56:07'),
(613, 29, 'article', 1, 1, 'en', 'contact/send-us-a-message', '4/29', '4/29', '2012-12-28 19:56:07'),
(621, 8, 'page', 1, 1, 'en', 'services', '8', '8', '2012-12-28 19:56:07'),
(622, 17, 'article', 1, 0, 'en', 'services/some-of-our-services', '8/17', '8/17', '2012-12-28 19:56:07'),
(623, 18, 'article', 1, 1, 'en', 'services/service-1', '8/18', '8/18', '2012-12-28 19:56:07'),
(624, 19, 'article', 1, 1, 'en', 'services/service-2', '8/19', '8/19', '2012-12-28 19:56:07'),
(625, 20, 'article', 1, 1, 'en', 'services/service-3', '8/20', '8/20', '2012-12-28 19:56:07'),
(626, 9, 'page', 1, 1, 'en', 'footer', '9', '9', '2012-12-28 19:56:07'),
(627, 16, 'article', 1, 1, 'en', 'footer/footer-resources', '9/16', '9/16', '2012-12-28 19:56:07'),
(628, 27, 'article', 1, 1, 'en', 'footer/whats-ionize', '9/27', '9/27', '2012-12-28 19:56:07'),
(629, 28, 'article', 1, 1, 'en', 'footer/can-i-help', '9/28', '9/28', '2012-12-28 19:56:07'),
(630, 10, 'page', 1, 1, 'en', 'my-account', '10', '10', '2012-12-28 19:56:07'),
(631, 30, 'article', 1, 1, 'en', 'my-account/not-logged-in', '10/30', '10/30', '2012-12-28 19:56:07'),
(632, 31, 'article', 1, 1, 'en', 'my-account/hello', '10/31', '10/31', '2012-12-28 19:56:07'),
(638, 4, 'article', 1, 1, 'tw', 'home/the-power-of-php', '2/4', '2/4', '2014-01-02 11:28:28'),
(639, 1, 'page', 1, 1, 'tw', '404', '1', '1', '2014-01-02 11:28:28'),
(640, 1, 'article', 1, 1, 'tw', '404/404', '1/1', '1/1', '2014-01-02 11:28:28'),
(641, 3, 'page', 1, 1, 'tw', 'about-ionize-cms', '3', '3', '2014-01-02 11:28:28'),
(642, 15, 'article', 1, 1, 'tw', 'about-ionize-cms/about-us-1', '3/15', '3/15', '2014-01-02 11:28:28'),
(643, 4, 'page', 1, 1, 'tw', 'contact', '4', '4', '2014-01-02 11:28:28'),
(644, 24, 'article', 1, 1, 'tw', 'contact/contact-informations', '4/24', '4/24', '2014-01-02 11:28:28'),
(645, 26, 'article', 1, 1, 'tw', 'contact/our-location', '4/26', '4/26', '2014-01-02 11:28:28'),
(646, 29, 'article', 1, 1, 'tw', 'contact/send-us-a-message', '4/29', '4/29', '2014-01-02 11:28:28'),
(654, 8, 'page', 1, 1, 'tw', 'services', '8', '8', '2014-01-02 11:28:28'),
(655, 17, 'article', 1, 1, 'tw', 'services/some-of-our-services', '8/17', '8/17', '2014-01-02 11:28:28'),
(656, 18, 'article', 1, 1, 'tw', 'services/service-1', '8/18', '8/18', '2014-01-02 11:28:28'),
(657, 19, 'article', 1, 1, 'tw', 'services/service-2', '8/19', '8/19', '2014-01-02 11:28:28'),
(658, 20, 'article', 1, 1, 'tw', 'services/service-3', '8/20', '8/20', '2014-01-02 11:28:28'),
(659, 9, 'page', 1, 1, 'tw', 'footer', '9', '9', '2014-01-02 11:28:28'),
(660, 16, 'article', 1, 1, 'tw', 'footer/footer-resources', '9/16', '9/16', '2014-01-02 11:28:28'),
(661, 27, 'article', 1, 1, 'tw', 'footer/whats-ionize', '9/27', '9/27', '2014-01-02 11:28:28'),
(662, 28, 'article', 1, 1, 'tw', 'footer/can-i-help', '9/28', '9/28', '2014-01-02 11:28:28'),
(663, 10, 'page', 1, 1, 'tw', 'my-account', '10', '10', '2014-01-02 11:28:28'),
(664, 30, 'article', 1, 1, 'tw', 'my-account/not-logged-in', '10/30', '10/30', '2014-01-02 11:28:28'),
(665, 31, 'article', 1, 1, 'tw', 'my-account/hello', '10/31', '10/31', '2014-01-02 11:28:28'),
(712, 33, 'article', 1, 1, 'zht', 'home/vvvvvvvvv', '2/33', '2/33', '2014-02-17 03:03:37'),
(713, 33, 'article', 1, 1, 'en', 'home/vvvvvvvvv', '2/33', '2/33', '2014-02-17 03:03:37'),
(732, 1, 'article', 1, 1, 'zht', '404/404', '1/1', '1/1', '2014-02-17 04:06:16'),
(745, 6, 'page', 1, 1, 'zht', 'blog', '6', '6', '2014-02-17 05:49:22'),
(746, 6, 'page', 1, 1, 'en', 'blog', '6', '6', '2014-02-17 05:49:22'),
(747, 5, 'article', 1, 0, 'zht', 'blog/article-1', '6/5', '6/5', '2014-02-17 05:49:22'),
(748, 5, 'article', 1, 0, 'en', 'blog/article-1', '6/5', '6/5', '2014-02-17 05:49:22'),
(749, 6, 'article', 1, 1, 'zht', 'blog/article-2', '6/6', '6/6', '2014-02-17 05:49:23'),
(750, 6, 'article', 1, 1, 'en', 'blog/article-2', '6/6', '6/6', '2014-02-17 05:49:23'),
(751, 7, 'article', 1, 1, 'zht', 'blog/article-3', '6/7', '6/7', '2014-02-17 05:49:23'),
(752, 7, 'article', 1, 1, 'en', 'blog/article-3', '6/7', '6/7', '2014-02-17 05:49:23'),
(753, 8, 'article', 1, 1, 'zht', 'blog/article-4', '6/8', '6/8', '2014-02-17 05:49:23'),
(754, 8, 'article', 1, 1, 'en', 'blog/article-4', '6/8', '6/8', '2014-02-17 05:49:23'),
(755, 9, 'article', 1, 1, 'zht', 'blog/article-5', '6/9', '6/9', '2014-02-17 05:49:23'),
(756, 9, 'article', 1, 1, 'en', 'blog/article-5', '6/9', '6/9', '2014-02-17 05:49:24'),
(757, 10, 'article', 1, 1, 'zht', 'blog/article-6', '6/10', '6/10', '2014-02-17 05:49:24'),
(758, 10, 'article', 1, 1, 'en', 'blog/article-6', '6/10', '6/10', '2014-02-17 05:49:24'),
(759, 17, 'article', 1, 1, 'zht', 'blog/some-of-our-services', '6/17', '6/17', '2014-02-17 05:51:35'),
(760, 17, 'article', 1, 1, 'en', 'blog/some-of-our-services', '6/17', '6/17', '2014-02-17 05:51:36'),
(761, 2, 'page', 1, 1, 'zht', 'home', '2', '2', '2014-02-17 07:46:38'),
(762, 2, 'page', 1, 1, 'en', 'home', '2', '2', '2014-02-17 07:46:38'),
(763, 12, 'article', 1, 1, 'zht', 'home/multilingual', '2/12', '2/12', '2014-02-17 07:46:38'),
(764, 12, 'article', 1, 1, 'en', 'home/multilingual', '2/12', '2/12', '2014-02-17 07:46:39'),
(765, 13, 'article', 1, 1, 'zht', 'home/userfriendly-url', '2/13', '2/13', '2014-02-17 07:46:39'),
(766, 13, 'article', 1, 1, 'en', 'home/userfriendly', '2/13', '2/13', '2014-02-17 07:46:39'),
(767, 14, 'article', 1, 1, 'zht', 'home/template-system', '2/14', '2/14', '2014-02-17 07:46:39'),
(768, 14, 'article', 1, 1, 'en', 'home/template-system', '2/14', '2/14', '2014-02-17 07:46:39'),
(777, 14, 'page', 1, 1, 'zht', 'home/qq', '2/14', '2/14', '2014-02-17 09:06:10'),
(778, 14, 'page', 1, 1, 'en', 'home/qq', '2/14', '2/14', '2014-02-17 09:06:10'),
(779, 13, 'page', 1, 1, 'zht', 'home/bb', '2/13', '2/13', '2014-02-17 09:07:03'),
(780, 13, 'page', 1, 1, 'en', 'home/bb', '2/13', '2/13', '2014-02-17 09:07:03'),
(781, 11, 'article', 1, 1, 'zht', 'home/bb/easy-edition', '2/13/11', '2/13/11', '2014-02-17 09:07:03'),
(782, 11, 'article', 1, 1, 'en', 'home/bb/easy-edition', '2/13/11', '2/13/11', '2014-02-17 09:07:03'),
(783, 5, 'article', 1, 1, 'zht', 'blog/article-1', '6/5', '6/5', '2014-02-18 02:13:36'),
(784, 5, 'article', 1, 1, 'en', 'blog/article-1', '6/5', '6/5', '2014-02-18 02:13:36');

-- --------------------------------------------------------

--
-- 表的結構 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_role` smallint(4) unsigned NOT NULL,
  `join_date` timestamp NULL DEFAULT NULL,
  `last_visit` timestamp NULL DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `gender` smallint(1) DEFAULT NULL COMMENT '1: Male, 2 : Female',
  `password` varchar(255) NOT NULL,
  `email` varchar(120) NOT NULL,
  `salt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`),
  KEY `id_role` (`id_role`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 轉存資料表中的資料 `user`
--

INSERT INTO `user` (`id_user`, `id_role`, `join_date`, `last_visit`, `username`, `screen_name`, `firstname`, `lastname`, `birthdate`, `gender`, `password`, `email`, `salt`) VALUES
(1, 1, '2014-01-02 02:36:26', '2014-03-06 08:01:30', 'zoearth', 'zoearth', NULL, NULL, NULL, NULL, '0gGTbcwi2k6/VCla', 'zoearthmoon@gmail.com', 'be4baeaeddc8f7bf'),
(2, 1, '2014-01-02 02:36:26', '2014-03-06 08:13:57', 'admin', 'admin', NULL, NULL, NULL, NULL, '+Yx9TlTne8+cRNqi', 'zoearthmoon@gmail.com', 'be4baeaeddc8f7bf');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
