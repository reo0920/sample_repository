-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-02-19 05:09:25
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

INSERT INTO `countries` (`POPULATION`) VALUES
('Arubaの人口は103000です'),
('Afghanistanの人口は22720000です'),
('Angolaの人口は12878000です'),
('Anguillaの人口は8000です'),
('Albaniaの人口は3401200です'),
('Andorraの人口は78000です'),
('Netherlands Antillesの人口は217000です'),
('United Arab Emiratesの人口は2441000です'),
('Argentinaの人口は37032000です'),
('Armeniaの人口は3520000です'),
('American Samoaの人口は68000です'),
('Antarcticaの人口は0です'),
('French Southern territoriesの人口は0です'),
('Antigua and Barbudaの人口は68000です'),
('Australiaの人口は18886000です'),
('Austriaの人口は8091800です'),
('Azerbaijanの人口は7734000です'),
('Burundiの人口は6695000です'),
('Belgiumの人口は10239000です'),
('Beninの人口は6097000です'),
('Burkina Fasoの人口は11937000です'),
('Bangladeshの人口は129155000です'),
('Bulgariaの人口は8190900です'),
('Bahrainの人口は617000です'),
('Bahamasの人口は307000です'),
('Bosnia and Herzegovinaの人口は3972000です'),
('Belarusの人口は10236000です'),
('Belizeの人口は241000です'),
('Bermudaの人口は65000です'),
('Boliviaの人口は8329000です'),
('Brazilの人口は170115000です'),
('Barbadosの人口は270000です'),
('Bruneiの人口は328000です'),
('Bhutanの人口は2124000です'),
('Bouvet Islandの人口は0です'),
('Botswanaの人口は1622000です'),
('Central African Republicの人口は3615000です'),
('Canadaの人口は31147000です'),
('Cocos (Keeling) Islandsの人口は600です'),
('Switzerlandの人口は7160400です'),
('Chileの人口は15211000です'),
('Chinaの人口は1277558000です'),
('Côte d’Ivoireの人口は14786000です'),
('Cameroonの人口は15085000です'),
('Congo, The Democratic Republic of theの人口は51654000です'),
('Congoの人口は2943000です'),
('Cook Islandsの人口は20000です'),
('Colombiaの人口は42321000です'),
('Comorosの人口は578000です'),
('Cape Verdeの人口は428000です'),
('Costa Ricaの人口は4023000です'),
('Cubaの人口は11201000です'),
('Christmas Islandの人口は2500です'),
('Cayman Islandsの人口は38000です'),
('Cyprusの人口は754700です'),
('Czech Republicの人口は10278100です'),
('Germanyの人口は82164700です'),
('Djiboutiの人口は638000です'),
('Dominicaの人口は71000です'),
('Denmarkの人口は5330000です'),
('Dominican Republicの人口は8495000です'),
('Algeriaの人口は31471000です'),
('Ecuadorの人口は12646000です'),
('Egyptの人口は68470000です'),
('Eritreaの人口は3850000です'),
('Western Saharaの人口は293000です'),
('Spainの人口は39441700です'),
('Estoniaの人口は1439200です'),
('Ethiopiaの人口は62565000です'),
('Finlandの人口は5171300です'),
('Fiji Islandsの人口は817000です'),
('Falkland Islandsの人口は2000です'),
('Franceの人口は59225700です'),
('Faroe Islandsの人口は43000です'),
('Micronesia, Federated States ofの人口は119000です'),
('Gabonの人口は1226000です'),
('United Kingdomの人口は59623400です'),
('Georgiaの人口は4968000です'),
('Ghanaの人口は20212000です'),
('Gibraltarの人口は25000です'),
('Guineaの人口は7430000です'),
('Guadeloupeの人口は456000です'),
('Gambiaの人口は1305000です'),
('Guinea-Bissauの人口は1213000です'),
('Equatorial Guineaの人口は453000です'),
('Greeceの人口は10545700です'),
('Grenadaの人口は94000です'),
('Greenlandの人口は56000です'),
('Guatemalaの人口は11385000です'),
('French Guianaの人口は181000です'),
('Guamの人口は168000です'),
('Guyanaの人口は861000です'),
('Hong Kongの人口は6782000です'),
('Heard Island and McDonald Islandsの人口は0です'),
('Hondurasの人口は6485000です'),
('Croatiaの人口は4473000です'),
('Haitiの人口は8222000です'),
('Hungaryの人口は10043200です'),
('Indonesiaの人口は212107000です'),
('Indiaの人口は1013662000です'),
('British Indian Ocean Territoryの人口は0です'),
('Irelandの人口は3775100です'),
('Iranの人口は67702000です'),
('Iraqの人口は23115000です'),
('Icelandの人口は279000です'),
('Israelの人口は6217000です'),
('Italyの人口は57680000です'),
('Jamaicaの人口は2583000です'),
('Jordanの人口は5083000です'),
('Japanの人口は126714000です'),
('Kazakstanの人口は16223000です'),
('Kenyaの人口は30080000です'),
('Kyrgyzstanの人口は4699000です'),
('Cambodiaの人口は11168000です'),
('Kiribatiの人口は83000です'),
('Saint Kitts and Nevisの人口は38000です'),
('South Koreaの人口は46844000です'),
('Kuwaitの人口は1972000です'),
('Laosの人口は5433000です'),
('Lebanonの人口は3282000です'),
('Liberiaの人口は3154000です'),
('Libyan Arab Jamahiriyaの人口は5605000です'),
('Saint Luciaの人口は154000です'),
('Liechtensteinの人口は32300です'),
('Sri Lankaの人口は18827000です'),
('Lesothoの人口は2153000です'),
('Lithuaniaの人口は3698500です'),
('Luxembourgの人口は435700です'),
('Latviaの人口は2424200です'),
('Macaoの人口は473000です'),
('Moroccoの人口は28351000です'),
('Monacoの人口は34000です'),
('Moldovaの人口は4380000です'),
('Madagascarの人口は15942000です'),
('Maldivesの人口は286000です'),
('Mexicoの人口は98881000です'),
('Marshall Islandsの人口は64000です'),
('Macedoniaの人口は2024000です'),
('Maliの人口は11234000です'),
('Maltaの人口は380200です'),
('Myanmarの人口は45611000です'),
('Mongoliaの人口は2662000です'),
('Northern Mariana Islandsの人口は78000です'),
('Mozambiqueの人口は19680000です'),
('Mauritaniaの人口は2670000です'),
('Montserratの人口は11000です'),
('Martiniqueの人口は395000です'),
('Mauritiusの人口は1158000です'),
('Malawiの人口は10925000です'),
('Malaysiaの人口は22244000です'),
('Mayotteの人口は149000です'),
('Namibiaの人口は1726000です'),
('New Caledoniaの人口は214000です'),
('Nigerの人口は10730000です'),
('Norfolk Islandの人口は2000です'),
('Nigeriaの人口は111506000です'),
('Nicaraguaの人口は5074000です'),
('Niueの人口は2000です'),
('Netherlandsの人口は15864000です'),
('Norwayの人口は4478500です'),
('Nepalの人口は23930000です'),
('Nauruの人口は12000です'),
('New Zealandの人口は3862000です'),
('Omanの人口は2542000です'),
('Pakistanの人口は156483000です'),
('Panamaの人口は2856000です'),
('Pitcairnの人口は50です'),
('Peruの人口は25662000です'),
('Philippinesの人口は75967000です'),
('Palauの人口は19000です'),
('Papua New Guineaの人口は4807000です'),
('Polandの人口は38653600です'),
('Puerto Ricoの人口は3869000です'),
('North Koreaの人口は24039000です'),
('Portugalの人口は9997600です'),
('Paraguayの人口は5496000です'),
('Palestineの人口は3101000です'),
('French Polynesiaの人口は235000です'),
('Qatarの人口は599000です'),
('Réunionの人口は699000です'),
('Romaniaの人口は22455500です'),
('Russian Federationの人口は146934000です'),
('Rwandaの人口は7733000です'),
('Saudi Arabiaの人口は21607000です'),
('Sudanの人口は29490000です'),
('Senegalの人口は9481000です'),
('Singaporeの人口は3567000です'),
('South Georgia and the South Sandwich Islandsの人口は0です'),
('Saint Helenaの人口は6000です'),
('Svalbard and Jan Mayenの人口は3200です'),
('Solomon Islandsの人口は444000です'),
('Sierra Leoneの人口は4854000です'),
('El Salvadorの人口は6276000です'),
('San Marinoの人口は27000です'),
('Somaliaの人口は10097000です'),
('Saint Pierre and Miquelonの人口は7000です'),
('Sao Tome and Principeの人口は147000です'),
('Surinameの人口は417000です'),
('Slovakiaの人口は5398700です'),
('Sloveniaの人口は1987800です'),
('Swedenの人口は8861400です'),
('Swazilandの人口は1008000です'),
('Seychellesの人口は77000です'),
('Syriaの人口は16125000です'),
('Turks and Caicos Islandsの人口は17000です'),
('Chadの人口は7651000です'),
('Togoの人口は4629000です'),
('Thailandの人口は61399000です'),
('Tajikistanの人口は6188000です'),
('Tokelauの人口は2000です'),
('Turkmenistanの人口は4459000です'),
('East Timorの人口は885000です'),
('Tongaの人口は99000です'),
('Trinidad and Tobagoの人口は1295000です'),
('Tunisiaの人口は9586000です'),
('Turkeyの人口は66591000です'),
('Tuvaluの人口は12000です'),
('Taiwanの人口は22256000です'),
('Tanzaniaの人口は33517000です'),
('Ugandaの人口は21778000です'),
('Ukraineの人口は50456000です'),
('United States Minor Outlying Islandsの人口は0です'),
('Uruguayの人口は3337000です'),
('United Statesの人口は278357000です'),
('Uzbekistanの人口は24318000です'),
('Holy See (Vatican cities State)の人口は1000です'),
('Saint Vincent and the Grenadinesの人口は114000です'),
('Venezuelaの人口は24170000です'),
('Virgin Islands, Britishの人口は21000です'),
('Virgin Islands, U.S.の人口は93000です'),
('Vietnamの人口は79832000です'),
('Vanuatuの人口は190000です'),
('Wallis and Futunaの人口は15000です'),
('Samoaの人口は180000です'),
('Yemenの人口は18112000です'),
('Yugoslaviaの人口は10640000です'),
('South Africaの人口は40377000です'),
('Zambiaの人口は9169000です'),
('Zimbabweの人口は11669000です');

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
