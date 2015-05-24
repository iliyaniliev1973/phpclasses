-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Версия на сървъра: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `avtomobili na staro`
--

-- --------------------------------------------------------

--
-- Структура на таблица `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(3) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`brand_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `brands`
--

INSERT INTO `brands` (`brand_id`, `name`) VALUES
(3, 'Mazda'),
(2, 'Porshe'),
(1, 'Volkswagen');

-- --------------------------------------------------------

--
-- Структура на таблица `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `car_id` int(3) NOT NULL AUTO_INCREMENT,
  `color` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` int(4) NOT NULL,
  `brand_id` int(3) NOT NULL,
  `region_id` int(3) NOT NULL,
  PRIMARY KEY (`car_id`),
  KEY `color` (`color`,`year`,`brand_id`,`region_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Схема на данните от таблица `cars`
--

INSERT INTO `cars` (`car_id`, `color`, `year`, `brand_id`, `region_id`) VALUES
(2, 'black', 1999, 2, 2),
(3, 'red', 2002, 3, 3),
(1, 'white', 2000, 1, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `region_id` int(3) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `country` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`region_id`),
  KEY `name` (`name`,`country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `region`
--

INSERT INTO `region` (`region_id`, `name`, `country`) VALUES
(3, 'Honda', 'Japan'),
(2, 'Opel', 'Germany'),
(1, 'Volkswagen', 'Germany');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
