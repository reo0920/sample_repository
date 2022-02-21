-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-02-19 03:04:24
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

INSERT INTO `countries` (`region`) VALUES
('Caribbean'),
('Southern and Central Asia'),
('Central Africa'),
('Caribbean'),
('Southern Europe'),
('Southern Europe'),
('Caribbean'),
('Middle East'),
('South America'),
('Middle East'),
('Polynesia'),
('Antarctica'),
('Antarctica'),
('Caribbean'),
('Australia and New Zealand'),
('Western Europe'),
('Middle East'),
('Eastern Africa'),
('Western Europe'),
('Western Africa'),
('Western Africa'),
('Southern and Central Asia'),
('Eastern Europe'),
('Middle East'),
('Caribbean'),
('Southern Europe'),
('Eastern Europe'),
('South America'),
('South America'),
('Caribbean'),
('Southern and Central Asia'),
('Antarctica'),
('Central Africa'),
('Australia and New Zealand'),
('Western Europe'),
('South America'),
('Western Africa'),
('Central Africa'),
('Central Africa'),
('Central Africa'),
('Polynesia'),
('South America'),
('Eastern Africa'),
('Western Africa'),
('Caribbean'),
('Australia and New Zealand'),
('Caribbean'),
('Middle East'),
('Eastern Europe'),
('Western Europe'),
('Eastern Africa'),
('Caribbean'),
('Caribbean'),
('South America'),
('Eastern Africa'),
('Southern Europe'),
('Eastern Africa'),
('South America'),
('Western Europe'),
('Central Africa'),
('Middle East'),
('Western Africa'),
('Southern Europe'),
('Western Africa'),
('Caribbean'),
('Western Africa'),
('Western Africa'),
('Central Africa'),
('Southern Europe'),
('Caribbean'),
('South America'),
('South America'),
('Antarctica'),
('Southern Europe'),
('Caribbean'),
('Eastern Europe'),
('Southern and Central Asia'),
('Eastern Africa'),
('Southern and Central Asia'),
('Middle East'),
('Middle East'),
('Southern Europe'),
('Caribbean'),
('Middle East'),
('Southern and Central Asia'),
('Eastern Africa'),
('Southern and Central Asia'),
('Caribbean'),
('Middle East'),
('Middle East'),
('Western Africa'),
('Caribbean'),
('Western Europe'),
('Southern and Central Asia'),
('Western Europe'),
('Western Europe'),
('Eastern Europe'),
('Eastern Africa'),
('Southern and Central Asia'),
('Southern Europe'),
('Western Africa'),
('Southern Europe'),
('Eastern Africa'),
('Western Africa'),
('Caribbean'),
('Caribbean'),
('Eastern Africa'),
('Eastern Africa'),
('Eastern Africa'),
('Western Africa'),
('Australia and New Zealand'),
('Western Africa'),
('Polynesia'),
('Western Europe'),
('Southern and Central Asia'),
('Australia and New Zealand'),
('Middle East'),
('Southern and Central Asia'),
('Polynesia'),
('South America'),
('Eastern Europe'),
('Caribbean'),
('Southern Europe'),
('South America'),
('Middle East'),
('Polynesia'),
('Middle East'),
('Eastern Africa'),
('Eastern Europe'),
('Eastern Europe'),
('Eastern Africa'),
('Middle East'),
('Western Africa'),
('Antarctica'),
('Western Africa'),
('Western Africa'),
('Southern Europe'),
('Eastern Africa'),
('Central Africa'),
('South America'),
('Eastern Europe'),
('Southern Europe'),
('Eastern Africa'),
('Middle East'),
('Caribbean'),
('Central Africa'),
('Western Africa'),
('Southern and Central Asia'),
('Polynesia'),
('Southern and Central Asia'),
('Polynesia'),
('Caribbean'),
('Middle East'),
('Polynesia'),
('Eastern Africa'),
('Eastern Africa'),
('Eastern Europe'),
('South America'),
('Southern and Central Asia'),
('Southern Europe'),
('Caribbean'),
('South America'),
('Caribbean'),
('Caribbean'),
('Polynesia'),
('Polynesia'),
('Middle East'),
('Southern Europe'),
('Eastern Africa'),
('Eastern Africa');

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
