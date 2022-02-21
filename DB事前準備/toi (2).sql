-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-02-18 14:43:06
-- サーバのバージョン： 10.4.22-MariaDB
-- PHP のバージョン: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `world`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `countries`
--

CREATE TABLE `countries` (
  `code` char(3) NOT NULL DEFAULT '' COMMENT '国コード',
  `name` char(52) NOT NULL DEFAULT '',
  `continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia' COMMENT '大陸',
  `region` char(26) NOT NULL DEFAULT '' COMMENT '地方',
  `surface_area` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '表面積',
  `indep_year` smallint(6) DEFAULT NULL COMMENT '独立記念日',
  `population` int(11) NOT NULL DEFAULT 0 COMMENT '人口',
  `life_expectancy` decimal(3,1) DEFAULT NULL COMMENT '平均寿命',
  `gnp` decimal(10,2) DEFAULT NULL COMMENT '国内総生産',
  `gnp_old` decimal(10,2) DEFAULT NULL,
  `local_name` char(45) NOT NULL DEFAULT '',
  `government_form` char(45) NOT NULL DEFAULT '',
  `hea_of_state` char(60) DEFAULT NULL,
  `capital` int(11) DEFAULT NULL COMMENT '資本',
  `code2` char(2) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `countries`
--

INSERT INTO `countries` (`code`, `name`, `continent`, `region`, `surface_area`, `indep_year`, `population`, `life_expectancy`, `gnp`, `gnp_old`, `local_name`, `government_form`, `hea_of_state`, `capital`, `code2`) VALUES
('ALB', 'Albania', 'Europe', 'Southern Europe', '28748.00', 1912, 3401200, '71.6', '3205.00', '2500.00', 'Shqipëria', 'Republic', 'Rexhep Mejdani', 34, 'AL'),
('AND', 'Andorra', 'Europe', 'Southern Europe', '468.00', 1278, 78000, '83.5', '1630.00', NULL, 'Andorra', 'Parliamentary Coprincipality', '', 55, 'AD'),
('AUT', 'Austria', 'Europe', 'Western Europe', '83859.00', 1918, 8091800, '77.7', '211860.00', '206025.00', 'Österreich', 'Federal Republic', 'Thomas Klestil', 1523, 'AT'),
('BEL', 'Belgium', 'Europe', 'Western Europe', '30518.00', 1830, 10239000, '77.8', '249704.00', '243948.00', 'België/Belgique', 'Constitutional Monarchy, Federation', 'Albert II', 179, 'BE'),
('BGR', 'Bulgaria', 'Europe', 'Eastern Europe', '110994.00', 1908, 8190900, '70.9', '12178.00', '10169.00', 'Balgarija', 'Republic', 'Petar Stojanov', 539, 'BG'),
('BIH', 'Bosnia and Herzegovina', 'Europe', 'Southern Europe', '51197.00', 1992, 3972000, '71.5', '2841.00', NULL, 'Bosna i Hercegovina', 'Federal Republic', 'Ante Jelavic', 201, 'BA'),
('BLR', 'Belarus', 'Europe', 'Eastern Europe', '207600.00', 1991, 10236000, '68.0', '13714.00', NULL, 'Belarus', 'Republic', 'Aljaksandr Lukašenka', 3520, 'BY'),
('CHE', 'Switzerland', 'Europe', 'Western Europe', '41284.00', 1499, 7160400, '79.6', '264478.00', '256092.00', 'Schweiz/Suisse/Svizzera/Svizra', 'Federation', 'Adolf Ogi', 3248, 'CH'),
('CZE', 'Czech Republic', 'Europe', 'Eastern Europe', '78866.00', 1993, 10278100, '74.5', '55017.00', '52037.00', '¸esko', 'Republic', 'Václav Havel', 3339, 'CZ'),
('DEU', 'Germany', 'Europe', 'Western Europe', '357022.00', 1955, 82164700, '77.4', '2133367.00', '2102826.00', 'Deutschland', 'Federal Republic', 'Johannes Rau', 3068, 'DE'),
('DNK', 'Denmark', 'Europe', 'Nordic Countries', '43094.00', 800, 5330000, '76.5', '174099.00', '169264.00', 'Danmark', 'Constitutional Monarchy', 'Margrethe II', 3315, 'DK'),
('ESP', 'Spain', 'Europe', 'Southern Europe', '505992.00', 1492, 39441700, '78.8', '553233.00', '532031.00', 'España', 'Constitutional Monarchy', 'Juan Carlos I', 653, 'ES'),
('EST', 'Estonia', 'Europe', 'Baltic Countries', '45227.00', 1991, 1439200, '69.5', '5328.00', '3371.00', 'Eesti', 'Republic', 'Lennart Meri', 3791, 'EE'),
('FIN', 'Finland', 'Europe', 'Nordic Countries', '338145.00', 1917, 5171300, '77.4', '121914.00', '119833.00', 'Suomi', 'Republic', 'Tarja Halonen', 3236, 'FI'),
('FRA', 'France', 'Europe', 'Western Europe', '551500.00', 843, 59225700, '78.8', '1424285.00', '1392448.00', 'France', 'Republic', 'Jacques Chirac', 2974, 'FR'),
('FRO', 'Faroe Islands', 'Europe', 'Nordic Countries', '1399.00', NULL, 43000, '78.4', '0.00', NULL, 'Føroyar', 'Part of Denmark', 'Margrethe II', 901, 'FO'),
('GBR', 'United Kingdom', 'Europe', 'British Islands', '242900.00', 1066, 59623400, '77.7', '1378330.00', '1296830.00', 'United Kingdom', 'Constitutional Monarchy', 'Elisabeth II', 456, 'GB'),
('GIB', 'Gibraltar', 'Europe', 'Southern Europe', '6.00', NULL, 25000, '79.0', '258.00', NULL, 'Gibraltar', 'Dependent Territory of the UK', 'Elisabeth II', 915, 'GI'),
('GRC', 'Greece', 'Europe', 'Southern Europe', '131626.00', 1830, 10545700, '78.4', '120724.00', '119946.00', 'Elláda', 'Republic', 'Kostis Stefanopoulos', 2401, 'GR'),
('HRV', 'Croatia', 'Europe', 'Southern Europe', '56538.00', 1991, 4473000, '73.7', '20208.00', '19300.00', 'Hrvatska', 'Republic', 'Štipe Mesic', 2409, 'HR'),
('HUN', 'Hungary', 'Europe', 'Eastern Europe', '93030.00', 1918, 10043200, '71.4', '48267.00', '45914.00', 'Magyarország', 'Republic', 'Ferenc Mádl', 3483, 'HU'),
('IRL', 'Ireland', 'Europe', 'British Islands', '70273.00', 1921, 3775100, '76.8', '75921.00', '73132.00', 'Ireland/Éire', 'Republic', 'Mary McAleese', 1447, 'IE'),
('ISL', 'Iceland', 'Europe', 'Nordic Countries', '103000.00', 1944, 279000, '79.4', '8255.00', '7474.00', 'Ísland', 'Republic', 'Ólafur Ragnar Grímsson', 1449, 'IS'),
('ITA', 'Italy', 'Europe', 'Southern Europe', '301316.00', 1861, 57680000, '79.0', '1161755.00', '1145372.00', 'Italia', 'Republic', 'Carlo Azeglio Ciampi', 1464, 'IT'),
('LIE', 'Liechtenstein', 'Europe', 'Western Europe', '160.00', 1806, 32300, '78.8', '1119.00', '1084.00', 'Liechtenstein', 'Constitutional Monarchy', 'Hans-Adam II', 2446, 'LI');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
