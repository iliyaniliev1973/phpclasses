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
(3, 'Honda'),
(2, 'Opel'),
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
  KEY `color` (`color`,`year`)
  FOREIGN KEY (`brand_id`) REFERENCES brands(`brand_id`)
  FOREIGN KEY (`region_id`) REFERENCES region(`region_id`)
  
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Схема на данните от таблица `cars`
--

INSERT INTO `cars` (`car_id`, `color`, `year`, `brand_id`, `region_id`) VALUES
(2, 'black', 1999),
(3, 'red', 2002),
(1, 'white', 2000);

-- --------------------------------------------------------

--
-- Структура на таблица `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `region_id` int(3) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `country` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`region_id`),
  FOREIGN KEY (`name`) REFERENCES brands(`name`)
  KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `region`
--

INSERT INTO `region` (`region_id`, `country`) VALUES
(3,'Japan'),
(2,'Germany'),
(1,'Germany');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
