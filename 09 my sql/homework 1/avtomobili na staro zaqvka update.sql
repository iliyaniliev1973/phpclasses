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

UPDATE `avtomobili na staro`.`brands` SET `name` = 'Porshe' WHERE `brands`.`brand_id` = 2;
UPDATE `avtomobili na staro`.`brands` SET `name` = 'Mazda' WHERE `brands`.`brand_id` = 3;