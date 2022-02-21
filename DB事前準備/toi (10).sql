-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-02-18 20:56:48
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
('AFG', 'Afghanistan', 'Asia', 'Southern and Central Asia', '652090.00', 1919, 22720000, '45.9', '5976.00', NULL, 'Afganistan/Afqanestan', 'Islamic Emirate', 'Mohammad Omar', 1, 'AF'),
('AUS', 'Australia', 'Oceania', 'Australia and New Zealand', '7741220.00', 1901, 18886000, '79.8', '351182.00', '392911.00', 'Australia', 'Constitutional Monarchy, Federation', 'Elisabeth II', 135, 'AU'),
('AUT', 'Austria', 'Europe', 'Western Europe', '83859.00', 1918, 8091800, '77.7', '211860.00', '206025.00', 'Österreich', 'Federal Republic', 'Thomas Klestil', 1523, 'AT'),
('CRI', 'Costa Rica', 'North America', 'Central America', '51100.00', 1821, 4023000, '75.8', '10226.00', '9757.00', 'Costa Rica', 'Republic', 'Miguel Ángel Rodríguez Echeverría', 584, 'CR'),
('CXR', 'Christmas Island', 'Oceania', 'Australia and New Zealand', '135.00', NULL, 2500, NULL, '0.00', NULL, 'Christmas Island', 'Territory of Australia', 'Elisabeth II', 1791, 'CX'),
('ESH', 'Western Sahara', 'Africa', 'Northern Africa', '266000.00', NULL, 293000, '49.8', '60.00', NULL, 'As-Sahrawiya', 'Occupied by Marocco', 'Mohammed Abdel Aziz', 2453, 'EH'),
('EST', 'Estonia', 'Europe', 'Baltic Countries', '45227.00', 1991, 1439200, '69.5', '5328.00', '3371.00', 'Eesti', 'Republic', 'Lennart Meri', 3791, 'EE'),
('FSM', 'Micronesia, Federated States of', 'Oceania', 'Micronesia', '702.00', 1990, 119000, '68.6', '212.00', NULL, 'Micronesia', 'Federal Republic', 'Leo A. Falcam', 2689, 'FM'),
('KAZ', 'Kazakstan', 'Asia', 'Southern and Central Asia', '2724900.00', 1991, 16223000, '63.2', '24375.00', '23383.00', 'Qazaqstan', 'Republic', 'Nursultan Nazarbajev', 1864, 'KZ'),
('KGZ', 'Kyrgyzstan', 'Asia', 'Southern and Central Asia', '199900.00', 1991, 4699000, '63.4', '1626.00', '1767.00', 'Kyrgyzstan', 'Republic', 'Askar Akajev', 2253, 'KG'),
('LIE', 'Liechtenstein', 'Europe', 'Western Europe', '160.00', 1806, 32300, '78.8', '1119.00', '1084.00', 'Liechtenstein', 'Constitutional Monarchy', 'Hans-Adam II', 2446, 'LI'),
('PAK', 'Pakistan', 'Asia', 'Southern and Central Asia', '796095.00', 1947, 156483000, '61.1', '61289.00', '58549.00', 'Pakistan', 'Republic', 'Mohammad Rafiq Tarar', 2831, 'PK'),
('PSE', 'Palestine', 'Asia', 'Middle East', '6257.00', NULL, 3101000, '71.4', '4173.00', NULL, 'Filastin', 'Autonomous Area', 'Yasser (Yasir) Arafat', 4074, 'PS'),
('TJK', 'Tajikistan', 'Asia', 'Southern and Central Asia', '143100.00', 1991, 6188000, '64.1', '1990.00', '1056.00', 'Toçikiston', 'Republic', 'Emomali Rahmonov', 3261, 'TJ'),
('TKM', 'Turkmenistan', 'Asia', 'Southern and Central Asia', '488100.00', 1991, 4459000, '60.9', '4397.00', '2000.00', 'Türkmenostan', 'Republic', 'Saparmurad Nijazov', 3419, 'TM'),
('TMP', 'East Timor', 'Asia', 'Southeast Asia', '14874.00', NULL, 885000, '46.0', '0.00', NULL, 'Timor Timur', 'Administrated by the UN', 'José Alexandre Gusmão', 1522, 'TP'),
('UMI', 'United States Minor Outlying Islands', 'Oceania', 'Micronesia/Caribbean', '16.00', NULL, 0, NULL, '0.00', NULL, 'United States Minor Outlying Islands', 'Dependent Territory of the US', 'George W. Bush', NULL, 'UM'),
('USA', 'United States', 'North America', 'North America', '9363520.00', 1776, 278357000, '77.1', '8510700.00', '8110900.00', 'United States', 'Federal Republic', 'George W. Bush', 3813, 'US'),
('UZB', 'Uzbekistan', 'Asia', 'Southern and Central Asia', '447400.00', 1991, 24318000, '63.7', '14194.00', '21300.00', 'Uzbekiston', 'Republic', 'Islam Karimov', 3503, 'UZ'),
('VAT', 'Holy See (Vatican cities State)', 'Europe', 'Southern Europe', '0.40', 1929, 1000, NULL, '9.00', NULL, 'Santa Sede/Città del Vaticano', 'Independent Church State', 'Johannes Paavali II', 3538, 'VA');

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
