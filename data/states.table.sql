SET NAMES utf8mb4;

DROP TABLE IF EXISTS `states`;
CREATE TABLE `states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admission_date` datetime NOT NULL,
  `admission_number` int(2) unsigned NOT NULL,
  `capital_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `capital_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `population` int(10) unsigned NOT NULL,
  `population_rank` int(2) unsigned NOT NULL,
  `constitution_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state_flag_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state_seal_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `landscape_background_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skyline_background_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `state_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;