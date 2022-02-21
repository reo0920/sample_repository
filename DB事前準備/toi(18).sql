-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-02-19 17:18:24
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

INSERT INTO `countries` (`name`, `life_expectancy`, `indep_year`) VALUES
('Andorra', '83.5', 1278),
('Macao', '81.6', NULL),
('San Marino', '81.1', 885),
('Japan', '80.7', -660),
('Singapore', '80.1', 1965),
('Australia', '79.8', 1901),
('Sweden', '79.6', 836),
('Switzerland', '79.6', 1499),
('Hong Kong', '79.5', NULL),
('Canada', '79.4', 1867),
('Iceland', '79.4', 1944),
('Gibraltar', '79.0', NULL),
('Italy', '79.0', 1861),
('Cayman Islands', '78.9', NULL),
('France', '78.8', 843),
('Spain', '78.8', 1492),
('Liechtenstein', '78.8', 1806),
('Monaco', '78.8', 1861),
('Norway', '78.7', 1905),
('Israel', '78.6', 1948),
('Aruba', '78.4', NULL),
('Faroe Islands', '78.4', NULL),
('Greece', '78.4', 1830),
('Martinique', '78.3', NULL),
('Netherlands', '78.3', 1581);

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
