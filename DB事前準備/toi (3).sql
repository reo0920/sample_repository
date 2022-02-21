-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-02-18 16:10:35
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
('AFG', 'Afghanistan', 'Asia', 'Southern and Central Asia', '652090.00', 1919, 22720000, '45.9', '5976.00', NULL, 'Afganistan/Afqanestan', 'Islamic Emirate', 'Mohammad Omar', 1, 'AF'),
('AGO', 'Angola', 'Africa', 'Central Africa', '1246700.00', 1975, 12878000, '38.3', '6648.00', '7984.00', 'Angola', 'Republic', 'José Eduardo dos Santos', 56, 'AO'),
('AIA', 'Anguilla', 'North America', 'Caribbean', '96.00', NULL, 8000, '76.1', '63.20', NULL, 'Anguilla', 'Dependent Territory of the UK', 'Elisabeth II', 62, 'AI'),
('ANT', 'Netherlands Antilles', 'North America', 'Caribbean', '800.00', NULL, 217000, '74.7', '1941.00', NULL, 'Nederlandse Antillen', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 33, 'AN'),
('ARE', 'United Arab Emirates', 'Asia', 'Middle East', '83600.00', 1971, 2441000, '74.1', '37966.00', '36846.00', 'Al-Imarat al-´Arabiya al-Muttahida', 'Emirate Federation', 'Zayid bin Sultan al-Nahayan', 65, 'AE'),
('ARG', 'Argentina', 'South America', 'South America', '2780400.00', 1816, 37032000, '75.1', '340238.00', '323310.00', 'Argentina', 'Federal Republic', 'Fernando de la Rúa', 69, 'AR'),
('ARM', 'Armenia', 'Asia', 'Middle East', '29800.00', 1991, 3520000, '66.4', '1813.00', '1627.00', 'Hajastan', 'Republic', 'Robert Kotšarjan', 126, 'AM'),
('ASM', 'American Samoa', 'Oceania', 'Polynesia', '199.00', NULL, 68000, '75.1', '334.00', NULL, 'Amerika Samoa', 'US Territory', 'George W. Bush', 54, 'AS'),
('ATA', 'Antarctica', 'Antarctica', 'Antarctica', '13120000.00', NULL, 0, NULL, '0.00', NULL, '–', 'Co-administrated', '', NULL, 'AQ'),
('ATF', 'French Southern territories', 'Antarctica', 'Antarctica', '7780.00', NULL, 0, NULL, '0.00', NULL, 'Terres australes françaises', 'Nonmetropolitan Territory of France', 'Jacques Chirac', NULL, 'TF'),
('ATG', 'Antigua and Barbuda', 'North America', 'Caribbean', '442.00', 1981, 68000, '70.5', '612.00', '584.00', 'Antigua and Barbuda', 'Constitutional Monarchy', 'Elisabeth II', 63, 'AG'),
('AUS', 'Australia', 'Oceania', 'Australia and New Zealand', '7741220.00', 1901, 18886000, '79.8', '351182.00', '392911.00', 'Australia', 'Constitutional Monarchy, Federation', 'Elisabeth II', 135, 'AU'),
('AZE', 'Azerbaijan', 'Asia', 'Middle East', '86600.00', 1991, 7734000, '62.9', '4127.00', '4100.00', 'Azärbaycan', 'Federal Republic', 'Heydär Äliyev', 144, 'AZ'),
('BDI', 'Burundi', 'Africa', 'Eastern Africa', '27834.00', 1962, 6695000, '46.2', '903.00', '982.00', 'Burundi/Uburundi', 'Republic', 'Pierre Buyoya', 552, 'BI'),
('BEN', 'Benin', 'Africa', 'Western Africa', '112622.00', 1960, 6097000, '50.2', '2357.00', '2141.00', 'Bénin', 'Republic', 'Mathieu Kérékou', 187, 'BJ'),
('BFA', 'Burkina Faso', 'Africa', 'Western Africa', '274000.00', 1960, 11937000, '46.7', '2425.00', '2201.00', 'Burkina Faso', 'Republic', 'Blaise Compaoré', 549, 'BF'),
('BGD', 'Bangladesh', 'Asia', 'Southern and Central Asia', '143998.00', 1971, 129155000, '60.2', '32852.00', '31966.00', 'Bangladesh', 'Republic', 'Shahabuddin Ahmad', 150, 'BD'),
('BHR', 'Bahrain', 'Asia', 'Middle East', '694.00', 1971, 617000, '73.0', '6366.00', '6097.00', 'Al-Bahrayn', 'Monarchy (Emirate)', 'Hamad ibn Isa al-Khalifa', 149, 'BH'),
('BHS', 'Bahamas', 'North America', 'Caribbean', '13878.00', 1973, 307000, '71.1', '3527.00', '3347.00', 'The Bahamas', 'Constitutional Monarchy', 'Elisabeth II', 148, 'BS'),
('BLZ', 'Belize', 'North America', 'Central America', '22696.00', 1981, 241000, '70.9', '630.00', '616.00', 'Belize', 'Constitutional Monarchy', 'Elisabeth II', 185, 'BZ'),
('BMU', 'Bermuda', 'North America', 'North America', '53.00', NULL, 65000, '76.9', '2328.00', '2190.00', 'Bermuda', 'Dependent Territory of the UK', 'Elisabeth II', 191, 'BM'),
('BOL', 'Bolivia', 'South America', 'South America', '1098581.00', 1825, 8329000, '63.7', '8571.00', '7967.00', 'Bolivia', 'Republic', 'Hugo Bánzer Suárez', 194, 'BO'),
('BRA', 'Brazil', 'South America', 'South America', '8547403.00', 1822, 170115000, '62.9', '776739.00', '804108.00', 'Brasil', 'Federal Republic', 'Fernando Henrique Cardoso', 211, 'BR'),
('BRB', 'Barbados', 'North America', 'Caribbean', '430.00', 1966, 270000, '73.0', '2223.00', '2186.00', 'Barbados', 'Constitutional Monarchy', 'Elisabeth II', 174, 'BB');

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
