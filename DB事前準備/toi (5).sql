-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-02-18 19:40:26
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
-- テーブルの構造 `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` char(35) NOT NULL DEFAULT '',
  `country_code` char(3) NOT NULL DEFAULT '' COMMENT '国コード',
  `district` char(20) NOT NULL DEFAULT '' COMMENT '地区',
  `population` int(11) NOT NULL DEFAULT 0 COMMENT '人口'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `cities`
--

INSERT INTO `cities` (`id`, `name`, `country_code`, `district`, `population`) VALUES
(34, 'Tirana', 'ALB', 'Tirana', 270000),
(35, 'Alger', 'DZA', 'Alger', 2168000),
(36, 'Oran', 'DZA', 'Oran', 609823),
(37, 'Constantine', 'DZA', 'Constantine', 443727),
(38, 'Annaba', 'DZA', 'Annaba', 222518),
(39, 'Batna', 'DZA', 'Batna', 183377),
(40, 'Sétif', 'DZA', 'Sétif', 179055),
(41, 'Sidi Bel Abbès', 'DZA', 'Sidi Bel Abbès', 153106),
(42, 'Skikda', 'DZA', 'Skikda', 128747),
(43, 'Biskra', 'DZA', 'Biskra', 128281),
(44, 'Blida (el-Boulaida)', 'DZA', 'Blida', 127284),
(45, 'Béjaïa', 'DZA', 'Béjaïa', 117162),
(46, 'Mostaganem', 'DZA', 'Mostaganem', 115212),
(47, 'Tébessa', 'DZA', 'Tébessa', 112007),
(48, 'Tlemcen (Tilimsen)', 'DZA', 'Tlemcen', 110242),
(49, 'Béchar', 'DZA', 'Béchar', 107311),
(50, 'Tiaret', 'DZA', 'Tiaret', 100118),
(51, 'Ech-Chleff (el-Asnam)', 'DZA', 'Chlef', 96794),
(52, 'Ghardaïa', 'DZA', 'Ghardaïa', 89415);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_code` (`country_code`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4080;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_code`) REFERENCES `country` (`Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
