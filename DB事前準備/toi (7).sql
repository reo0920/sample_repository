-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-02-18 20:36:19
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
('ABW', 'Aruba', 'North America', 'Caribbean', '193.00', NULL, 103000, '78.4', '828.00', '793.00', 'Aruba', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 129, 'AW'),
('AIA', 'Anguilla', 'North America', 'Caribbean', '96.00', NULL, 8000, '76.1', '63.20', NULL, 'Anguilla', 'Dependent Territory of the UK', 'Elisabeth II', 62, 'AI'),
('ANT', 'Netherlands Antilles', 'North America', 'Caribbean', '800.00', NULL, 217000, '74.7', '1941.00', NULL, 'Nederlandse Antillen', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 33, 'AN'),
('ASM', 'American Samoa', 'Oceania', 'Polynesia', '199.00', NULL, 68000, '75.1', '334.00', NULL, 'Amerika Samoa', 'US Territory', 'George W. Bush', 54, 'AS'),
('ATA', 'Antarctica', 'Antarctica', 'Antarctica', '13120000.00', NULL, 0, NULL, '0.00', NULL, '–', 'Co-administrated', '', NULL, 'AQ'),
('ATF', 'French Southern territories', 'Antarctica', 'Antarctica', '7780.00', NULL, 0, NULL, '0.00', NULL, 'Terres australes françaises', 'Nonmetropolitan Territory of France', 'Jacques Chirac', NULL, 'TF'),
('BMU', 'Bermuda', 'North America', 'North America', '53.00', NULL, 65000, '76.9', '2328.00', '2190.00', 'Bermuda', 'Dependent Territory of the UK', 'Elisabeth II', 191, 'BM'),
('BVT', 'Bouvet Island', 'Antarctica', 'Antarctica', '59.00', NULL, 0, NULL, '0.00', NULL, 'Bouvetøya', 'Dependent Territory of Norway', 'Harald V', NULL, 'BV'),
('CCK', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', '14.00', NULL, 600, NULL, '0.00', NULL, 'Cocos (Keeling) Islands', 'Territory of Australia', 'Elisabeth II', 2317, 'CC'),
('COK', 'Cook Islands', 'Oceania', 'Polynesia', '236.00', NULL, 20000, '71.1', '100.00', NULL, 'The Cook Islands', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 583, 'CK'),
('CXR', 'Christmas Island', 'Oceania', 'Australia and New Zealand', '135.00', NULL, 2500, NULL, '0.00', NULL, 'Christmas Island', 'Territory of Australia', 'Elisabeth II', 1791, 'CX'),
('CYM', 'Cayman Islands', 'North America', 'Caribbean', '264.00', NULL, 38000, '78.9', '1263.00', '1186.00', 'Cayman Islands', 'Dependent Territory of the UK', 'Elisabeth II', 553, 'KY'),
('ESH', 'Western Sahara', 'Africa', 'Northern Africa', '266000.00', NULL, 293000, '49.8', '60.00', NULL, 'As-Sahrawiya', 'Occupied by Marocco', 'Mohammed Abdel Aziz', 2453, 'EH'),
('FLK', 'Falkland Islands', 'South America', 'South America', '12173.00', NULL, 2000, NULL, '0.00', NULL, 'Falkland Islands', 'Dependent Territory of the UK', 'Elisabeth II', 763, 'FK'),
('FRO', 'Faroe Islands', 'Europe', 'Nordic Countries', '1399.00', NULL, 43000, '78.4', '0.00', NULL, 'Føroyar', 'Part of Denmark', 'Margrethe II', 901, 'FO'),
('GIB', 'Gibraltar', 'Europe', 'Southern Europe', '6.00', NULL, 25000, '79.0', '258.00', NULL, 'Gibraltar', 'Dependent Territory of the UK', 'Elisabeth II', 915, 'GI'),
('GLP', 'Guadeloupe', 'North America', 'Caribbean', '1705.00', NULL, 456000, '77.0', '3501.00', NULL, 'Guadeloupe', 'Overseas Department of France', 'Jacques Chirac', 919, 'GP'),
('GRL', 'Greenland', 'North America', 'North America', '2166090.00', NULL, 56000, '68.1', '0.00', NULL, 'Kalaallit Nunaat/Grønland', 'Part of Denmark', 'Margrethe II', 917, 'GL'),
('GUF', 'French Guiana', 'South America', 'South America', '90000.00', NULL, 181000, '76.1', '681.00', NULL, 'Guyane française', 'Overseas Department of France', 'Jacques Chirac', 3014, 'GF'),
('GUM', 'Guam', 'Oceania', 'Micronesia', '549.00', NULL, 168000, '77.8', '1197.00', '1136.00', 'Guam', 'US Territory', 'George W. Bush', 921, 'GU'),
('HKG', 'Hong Kong', 'Asia', 'Eastern Asia', '1075.00', NULL, 6782000, '79.5', '166448.00', '173610.00', 'Xianggang/Hong Kong', 'Special Administrative Region of China', 'Jiang Zemin', 937, 'HK'),
('HMD', 'Heard Island and McDonald Islands', 'Antarctica', 'Antarctica', '359.00', NULL, 0, NULL, '0.00', NULL, 'Heard and McDonald Islands', 'Territory of Australia', 'Elisabeth II', NULL, 'HM'),
('IOT', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', '78.00', NULL, 0, NULL, '0.00', NULL, 'British Indian Ocean Territory', 'Dependent Territory of the UK', 'Elisabeth II', NULL, 'IO'),
('MAC', 'Macao', 'Asia', 'Eastern Asia', '18.00', NULL, 473000, '81.6', '5749.00', '5940.00', 'Macau/Aomen', 'Special Administrative Region of China', 'Jiang Zemin', 2454, 'MO'),
('MNP', 'Northern Mariana Islands', 'Oceania', 'Micronesia', '464.00', NULL, 78000, '75.5', '0.00', NULL, 'Northern Mariana Islands', 'Commonwealth of the US', 'George W. Bush', 2913, 'MP');

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
