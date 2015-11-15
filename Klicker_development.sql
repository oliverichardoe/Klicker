-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2015 at 01:34 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.6.15-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Klicker_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `created_at`, `updated_at`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES
(1, 'peroperic@gmail.com', 'Pero''s new look # Sweet!!', '2015-11-14 21:20:31', '2015-11-14 21:20:31', 'firefox.png', 'image/png', 19844, '2015-11-14 21:20:30'),
(2, 'lornemalvo@gmail.com', 'Tough week!!', '2015-11-14 21:38:17', '2015-11-14 21:38:17', 'lm.jpg', 'image/jpeg', 40046, '2015-11-14 21:38:16'),
(3, 'ironman@gmail.com', 'Hey, what''s up??', '2015-11-15 10:07:19', '2015-11-15 10:07:19', 'ironman.jpg', 'image/jpeg', 47268, '2015-11-15 10:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20151114195134'),
('20151114202013'),
('20151114205705');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'peroperic@gmail.com', '$2a$10$2ZYJwo5qkWM8fBxEU8bVI.kb3ijBBsHec2H/Mz8RNkc4mK.8JaeSy', NULL, NULL, NULL, 5, '2015-11-15 12:15:33', '2015-11-15 10:08:52', '127.0.0.1', '127.0.0.1', '2015-11-14 20:49:33', '2015-11-15 12:15:33'),
(2, 'lornemalvo@gmail.com', '$2a$10$QPTi1yFHz50xz.C7K3DUge7LcbN6zjZAw4ICBpISZSHb/PybGynG6', NULL, NULL, NULL, 1, '2015-11-14 21:35:08', '2015-11-14 21:35:08', '127.0.0.1', '127.0.0.1', '2015-11-14 21:35:08', '2015-11-14 21:35:08'),
(3, 'ironman@gmail.com', '$2a$10$0ozMag1FKkiiipJEzkXexuRML1AEVmi6dFh1hGJBcqW5j6.5tpDQG', NULL, NULL, NULL, 1, '2015-11-15 10:05:55', '2015-11-15 10:05:55', '127.0.0.1', '127.0.0.1', '2015-11-15 10:05:55', '2015-11-15 10:05:55');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
