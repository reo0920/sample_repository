-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-02-19 19:39:26
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

INSERT INTO `countries` (`region`, `AVG (``life_expectancy``)`, `AVG (``population``)`) VALUES
('Antarctica', NULL, '0.0000'),
('Australia and New Zealand', '78.80000', '4550620.0000'),
('Baltic Countries', '69.00000', '2520633.3333'),
('British Islands', '77.25000', '31699250.0000'),
('Caribbean', '73.05833', '1589166.6667'),
('Central Africa', '50.31111', '10628000.0000'),
('Central America', '71.02500', '16902625.0000'),
('Eastern Africa', '50.81053', '12349950.0000'),
('Eastern Asia', '75.25000', '188416000.0000'),
('Eastern Europe', '69.93000', '30702600.0000'),
('Melanesia', '67.14000', '1294400.0000'),
('Micronesia', '68.08571', '77571.4286'),
('Micronesia/Caribbean', NULL, '0.0000'),
('Middle East', '70.56667', '10465594.4444'),
('Nordic Countries', '78.33333', '3452342.8571'),
('North America', '75.82000', '61926400.0000'),
('Northern Africa', '65.38571', '24752285.7143'),
('Polynesia', '70.73333', '63305.0000'),
('South America', '70.94615', '24698571.4286'),
('Southeast Asia', '64.40000', '47140090.9091'),
('Southern Africa', '44.82000', '9377200.0000'),
('Southern and Central Asia', '61.35000', '106484000.0000'),
('Southern Europe', '76.52857', '9644946.6667'),
('Western Africa', '52.74118', '13039529.4118'),
('Western Europe', '78.25556', '20360844.4444');

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
