-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-02-18 17:30:50
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
('ANT', 'Netherlands Antilles', 'North America', 'Caribbean', '800.00', NULL, 217000, '74.7', '1941.00', NULL, 'Nederlandse Antillen', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 33, 'AN'),
('ARE', 'United Arab Emirates', 'Asia', 'Middle East', '83600.00', 1971, 2441000, '74.1', '37966.00', '36846.00', 'Al-Imarat al-´Arabiya al-Muttahida', 'Emirate Federation', 'Zayid bin Sultan al-Nahayan', 65, 'AE'),
('ARG', 'Argentina', 'South America', 'South America', '2780400.00', 1816, 37032000, '75.1', '340238.00', '323310.00', 'Argentina', 'Federal Republic', 'Fernando de la Rúa', 69, 'AR'),
('ARM', 'Armenia', 'Asia', 'Middle East', '29800.00', 1991, 3520000, '66.4', '1813.00', '1627.00', 'Hajastan', 'Republic', 'Robert Kotšarjan', 126, 'AM'),
('ASM', 'American Samoa', 'Oceania', 'Polynesia', '199.00', NULL, 68000, '75.1', '334.00', NULL, 'Amerika Samoa', 'US Territory', 'George W. Bush', 54, 'AS'),
('ATG', 'Antigua and Barbuda', 'North America', 'Caribbean', '442.00', 1981, 68000, '70.5', '612.00', '584.00', 'Antigua and Barbuda', 'Constitutional Monarchy', 'Elisabeth II', 63, 'AG'),
('AZE', 'Azerbaijan', 'Asia', 'Middle East', '86600.00', 1991, 7734000, '62.9', '4127.00', '4100.00', 'Azärbaycan', 'Federal Republic', 'Heydär Äliyev', 144, 'AZ'),
('BGD', 'Bangladesh', 'Asia', 'Southern and Central Asia', '143998.00', 1971, 129155000, '60.2', '32852.00', '31966.00', 'Bangladesh', 'Republic', 'Shahabuddin Ahmad', 150, 'BD'),
('BGR', 'Bulgaria', 'Europe', 'Eastern Europe', '110994.00', 1908, 8190900, '70.9', '12178.00', '10169.00', 'Balgarija', 'Republic', 'Petar Stojanov', 539, 'BG'),
('BHR', 'Bahrain', 'Asia', 'Middle East', '694.00', 1971, 617000, '73.0', '6366.00', '6097.00', 'Al-Bahrayn', 'Monarchy (Emirate)', 'Hamad ibn Isa al-Khalifa', 149, 'BH'),
('BHS', 'Bahamas', 'North America', 'Caribbean', '13878.00', 1973, 307000, '71.1', '3527.00', '3347.00', 'The Bahamas', 'Constitutional Monarchy', 'Elisabeth II', 148, 'BS'),
('BIH', 'Bosnia and Herzegovina', 'Europe', 'Southern Europe', '51197.00', 1992, 3972000, '71.5', '2841.00', NULL, 'Bosna i Hercegovina', 'Federal Republic', 'Ante Jelavic', 201, 'BA'),
('BLR', 'Belarus', 'Europe', 'Eastern Europe', '207600.00', 1991, 10236000, '68.0', '13714.00', NULL, 'Belarus', 'Republic', 'Aljaksandr Lukašenka', 3520, 'BY'),
('BLZ', 'Belize', 'North America', 'Central America', '22696.00', 1981, 241000, '70.9', '630.00', '616.00', 'Belize', 'Constitutional Monarchy', 'Elisabeth II', 185, 'BZ'),
('BOL', 'Bolivia', 'South America', 'South America', '1098581.00', 1825, 8329000, '63.7', '8571.00', '7967.00', 'Bolivia', 'Republic', 'Hugo Bánzer Suárez', 194, 'BO'),
('BRA', 'Brazil', 'South America', 'South America', '8547403.00', 1822, 170115000, '62.9', '776739.00', '804108.00', 'Brasil', 'Federal Republic', 'Fernando Henrique Cardoso', 211, 'BR'),
('BRB', 'Barbados', 'North America', 'Caribbean', '430.00', 1966, 270000, '73.0', '2223.00', '2186.00', 'Barbados', 'Constitutional Monarchy', 'Elisabeth II', 174, 'BB'),
('BRN', 'Brunei', 'Asia', 'Southeast Asia', '5765.00', 1984, 328000, '73.6', '11705.00', '12460.00', 'Brunei Darussalam', 'Monarchy (Sultanate)', 'Haji Hassan al-Bolkiah', 538, 'BN'),
('CHL', 'Chile', 'South America', 'South America', '756626.00', 1810, 15211000, '75.7', '72949.00', '75780.00', 'Chile', 'Republic', 'Ricardo Lagos Escobar', 554, 'CL'),
('CHN', 'China', 'Asia', 'Eastern Asia', '9572900.00', -1523, 1277558000, '71.4', '982268.00', '917719.00', 'Zhongquo', 'People\'sRepublic', 'Jiang Zemin', 1891, 'CN'),
('COK', 'Cook Islands', 'Oceania', 'Polynesia', '236.00', NULL, 20000, '71.1', '100.00', NULL, 'The Cook Islands', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 583, 'CK'),
('COL', 'Colombia', 'South America', 'South America', '1138914.00', 1810, 42321000, '70.3', '102896.00', '105116.00', 'Colombia', 'Republic', 'Andrés Pastrana Arango', 2257, 'CO'),
('COM', 'Comoros', 'Africa', 'Eastern Africa', '1862.00', 1975, 578000, '60.0', '4401.00', '4361.00', 'Komori/Comores', 'Republic', 'Azali Assoumani', 2295, 'KM'),
('CPV', 'Cape Verde', 'Africa', 'Western Africa', '4033.00', 1975, 428000, '68.9', '435.00', '420.00', 'Cabo Verde', 'Republic', 'António Mascarenhas Monteiro', 1859, 'CV');

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
