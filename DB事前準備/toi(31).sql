-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-02-21 03:38:54
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
-- テーブルの構造 `celebrities`
--

CREATE TABLE `celebrities` (
  `id` int(11) NOT NULL,
  `name` char(52) NOT NULL DEFAULT '',
  `country_code` char(3) DEFAULT '' COMMENT '国コード',
  `birth` datetime DEFAULT NULL COMMENT '誕生日',
  `age` int(11) DEFAULT NULL COMMENT '年齢',
  `occupation` char(52) NOT NULL DEFAULT '' COMMENT '職業'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `celebrities`
--

INSERT INTO `celebrities` (`DATE_FORMAT(birth, '%Y')`, `count(birth)`) VALUES
('1991', 2),
('1981', 2);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `celebrities`
--
ALTER TABLE `celebrities`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `celebrities`
--
ALTER TABLE `celebrities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
