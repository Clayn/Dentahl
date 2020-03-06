-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 04. Apr 2019 um 11:00
-- Server-Version: 10.3.12-MariaDB-1:10.3.12+maria~stretch
-- PHP-Version: 7.1.17


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Element`
--

DROP TABLE IF EXISTS `Element`;
CREATE TABLE `Element` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(1000) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Ninja`
--

DROP TABLE IF EXISTS `Ninja`;
CREATE TABLE `Ninja` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `element` int(10) NOT NULL,
  `main` int(11) NOT NULL DEFAULT 0
);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Team`
--

DROP TABLE IF EXISTS `Team`;
CREATE TABLE `Team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` varchar(1000) DEFAULT ''
);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `TeamNinja`
--

DROP TABLE IF EXISTS `TeamNinja`;
CREATE TABLE `TeamNinja` (
  `position` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `ninja_id` int(10) NOT NULL
);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `User`
--

DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `token` varchar(255) NOT NULL
);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Element`
--
ALTER TABLE `Element`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `Ninja`
--
ALTER TABLE `Ninja`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `Team`
--
ALTER TABLE `Team`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `Team`
  ADD UNIQUE KEY `name` (`name`);



--
-- Indizes für die Tabelle `User`
--
ALTER TABLE `User`
  ADD UNIQUE KEY `token` (`token`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `Ninja`
--
ALTER TABLE `Ninja`
  ADD CONSTRAINT `fk_ninja_has_element` FOREIGN KEY (`element`) REFERENCES `Element` (`id`);

--
-- Constraints der Tabelle `TeamNinja`
--
ALTER TABLE `TeamNinja`
  ADD CONSTRAINT `fk_ninja_id` FOREIGN KEY (`ninja_id`) REFERENCES `Ninja` (`id`);
ALTER TABLE `TeamNinja`
  ADD CONSTRAINT `fk_team_id` FOREIGN KEY (`team_id`) REFERENCES `Team` (`id`);

INSERT INTO `Element` (`id`, `name`, `image`) VALUES (0, 'Fire', 'https://en.konohaproxy.com.br/include/images/sim/huo_icon.png');
INSERT INTO `Element` (`id`, `name`, `image`) VALUES (1, 'Wind', 'https://en.konohaproxy.com.br/include/images/sim/feng_icon.png');
INSERT INTO `Element` (`id`, `name`, `image`) VALUES (2, 'Lighning', 'https://en.konohaproxy.com.br/include/images/sim/lei_icon.png');
INSERT INTO `Element` (`id`, `name`, `image`) VALUES (3, 'Earth', 'https://en.konohaproxy.com.br/include/images/sim/tu_icon.png');
INSERT INTO `Element` (`id`, `name`, `image`) VALUES (4, 'Water', 'https://en.konohaproxy.com.br/include/images/sim/shui_icon.png');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000101, 'Naruto[2 Stars]', 'https://en.konohaproxy.com.br/include/images/ninja/11000101.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000111, 'Naruto[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11000111.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000131, 'Naruto[Chakra]', 'https://en.konohaproxy.com.br/include/images/ninja/11000131.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000141, 'Naruto[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11000141.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000151, 'Naruto[Four Tails]', 'https://en.konohaproxy.com.br/include/images/ninja/11000151.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000161, 'Naruto[Six Tails]', 'https://en.konohaproxy.com.br/include/images/ninja/11000161.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000171, 'Naruto[Sennin Mode]', 'https://en.konohaproxy.com.br/include/images/ninja/11000171.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000181, 'Naruto[Kurama Mode]', 'https://en.konohaproxy.com.br/include/images/ninja/11000181.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000211, 'Sasuke[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11000211.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000221, 'Sasuke[Curse-Mark]', 'https://en.konohaproxy.com.br/include/images/ninja/11000221.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000231, 'Sasuke[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11000231.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000251, 'Sasuke[Susano''o]', 'https://en.konohaproxy.com.br/include/images/ninja/11000251.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000261, 'Sasuke[Suit]', 'https://en.konohaproxy.com.br/include/images/ninja/11000261.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000281, 'Sasuke[Rinne Sharingan]', 'https://en.konohaproxy.com.br/include/images/ninja/11000281.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000301, 'Sakura[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11000301.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000321, 'Sakura[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11000321.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000331, 'Sakura [Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11000331.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000341, 'Sakura [Cape]', 'https://en.konohaproxy.com.br/include/images/ninja/11000341.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000371, 'Sakura[Summer Outfit]', 'https://en.konohaproxy.com.br/include/images/ninja/11000371.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000381, 'Sakura[Christmas]', 'https://en.konohaproxy.com.br/include/images/ninja/11000381.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000401, 'Lee[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11000401.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000411, 'Lee[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11000411.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000421, 'Lee[Eight Inner Gates]', 'https://en.konohaproxy.com.br/include/images/ninja/11000421.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000441, 'Lee[Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11000441.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000451, 'Lee[Gate of Joy]', 'https://en.konohaproxy.com.br/include/images/ninja/11000451.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000501, 'Neji[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11000501.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000511, 'Neji[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11000511.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000521, 'Neji[Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11000521.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000601, 'Tenten[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11000601.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000611, 'Tenten[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11000611.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000621, 'Tenten[Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11000621.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000631, 'Tenten[Cheongsam]', 'https://en.konohaproxy.com.br/include/images/ninja/11000631.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000701, 'Ino[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11000701.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000711, 'Ino[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11000711.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000721, 'Ino[Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11000721.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000731, 'Ino[Swimsuit]', 'https://en.konohaproxy.com.br/include/images/ninja/11000731.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000741, 'Ino[Summer Outfit]', 'https://en.konohaproxy.com.br/include/images/ninja/11000741.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000801, 'Shikamaru[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11000801.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000821, 'Shikamaru[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11000821.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000831, 'Shikamaru[Chuunin]', 'https://en.konohaproxy.com.br/include/images/ninja/11000831.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000841, 'Shikamaru[Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11000841.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000861, 'Shikamaru[Xmas]', 'https://en.konohaproxy.com.br/include/images/ninja/11000861.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000901, 'Choji[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11000901.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000911, 'Choji[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11000911.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11000921, 'Choji[Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11000921.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001001, 'Kiba[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11001001.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001011, 'Kiba[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11001011.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001021, 'Kiba[Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11001021.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001041, 'Kiba[New Year]', 'https://en.konohaproxy.com.br/include/images/ninja/11001041.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001101, 'Shino[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11001101.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001111, 'Shino[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11001111.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001121, 'Shino[Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11001121.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001201, 'Hinata[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11001201.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001211, 'Hinata[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11001211.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001221, 'Hinata[Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11001221.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001231, 'Hinata [Cloak]', 'https://en.konohaproxy.com.br/include/images/ninja/11001231.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001241, 'Hinata[Summer Outfit]', 'https://en.konohaproxy.com.br/include/images/ninja/11001241.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001311, 'Gaara[2 Stars]', 'https://en.konohaproxy.com.br/include/images/ninja/11001311.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001321, 'Gaara[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11001321.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001331, 'Gaara[Fifth Kazekage]', 'https://en.konohaproxy.com.br/include/images/ninja/11001331.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001351, 'Gaara [Suit]', 'https://en.konohaproxy.com.br/include/images/ninja/11001351.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001411, 'Temari[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11001411.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001421, 'Temari[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11001421.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001431, 'Temari[Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11001431.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001451, 'Temari[Five Kage Summit]', 'https://en.konohaproxy.com.br/include/images/ninja/11001451.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001461, 'Temari[Swimsuit]', 'https://en.konohaproxy.com.br/include/images/ninja/11001461.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001471, 'Temari [Xmas]', 'https://en.konohaproxy.com.br/include/images/ninja/11001471.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001511, 'Kankuro[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11001511.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001521, 'Kankuro[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11001521.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001531, 'Kankuro[Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11001531.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001601, 'Kakashi', 'https://en.konohaproxy.com.br/include/images/ninja/11001601.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001611, 'Kakashi[Beheading Sword]', 'https://en.konohaproxy.com.br/include/images/ninja/11001611.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001621, 'Kakashi[Boy]', 'https://en.konohaproxy.com.br/include/images/ninja/11001621.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001631, 'Kakashi[Paradise]', 'https://en.konohaproxy.com.br/include/images/ninja/11001631.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001651, 'Kakashi[Anbu]', 'https://en.konohaproxy.com.br/include/images/ninja/11001651.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001661, 'Kakashi[Susano''o]', 'https://en.konohaproxy.com.br/include/images/ninja/11001661.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001671, 'Kakashi [Summer Clothing]', 'https://en.konohaproxy.com.br/include/images/ninja/11001671.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001701, 'Zabuza', 'https://en.konohaproxy.com.br/include/images/ninja/11001701.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001711, 'Zabuza[Mist''s Seven Swordmen]', 'https://en.konohaproxy.com.br/include/images/ninja/11001711.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001731, 'Zabuza[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11001731.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001801, 'Haku[3 Stars]', 'https://en.konohaproxy.com.br/include/images/ninja/11001801.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001811, 'Haku[Mask]', 'https://en.konohaproxy.com.br/include/images/ninja/11001811.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001821, 'Haku[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11001821.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001841, 'Haku[Kimono]', 'https://en.konohaproxy.com.br/include/images/ninja/11001841.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001901, 'Guy', 'https://en.konohaproxy.com.br/include/images/ninja/11001901.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001911, 'Guy [Gate of Shock]', 'https://en.konohaproxy.com.br/include/images/ninja/11001911.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001921, 'Guy[Gate of Joy]', 'https://en.konohaproxy.com.br/include/images/ninja/11001921.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11001931, 'Guy [Summer Clothing]', 'https://en.konohaproxy.com.br/include/images/ninja/11001931.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002001, 'Kabuto[1 Star]', 'https://en.konohaproxy.com.br/include/images/ninja/11002001.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002011, 'Kabuto[Snake Cloak]', 'https://en.konohaproxy.com.br/include/images/ninja/11002011.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002031, 'Kabuto [Sennin Mode]', 'https://en.konohaproxy.com.br/include/images/ninja/11002031.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002041, 'Kabuto [Halloween]', 'https://en.konohaproxy.com.br/include/images/ninja/11002041.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002101, 'Orochimaru[Traitor]', 'https://en.konohaproxy.com.br/include/images/ninja/11002101.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002111, 'Orochimaru[Sannin]', 'https://en.konohaproxy.com.br/include/images/ninja/11002111.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002131, 'Orochimaru [Akatsuki]', 'https://en.konohaproxy.com.br/include/images/ninja/11002131.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002141, 'Orochimaru[Jounin]', 'https://en.konohaproxy.com.br/include/images/ninja/11002141.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002201, 'Jiraiya[Sannin War]', 'https://en.konohaproxy.com.br/include/images/ninja/11002201.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002211, 'Jiraiya[Sennin Mode]', 'https://en.konohaproxy.com.br/include/images/ninja/11002211.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002231, 'Jiraiya[Jounin]', 'https://en.konohaproxy.com.br/include/images/ninja/11002231.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002251, 'Jiraiya [Writer]', 'https://en.konohaproxy.com.br/include/images/ninja/11002251.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002301, 'Tsunade [Fifth Hokage]', 'https://en.konohaproxy.com.br/include/images/ninja/11002301.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002311, 'Tsunade[Sannin]', 'https://en.konohaproxy.com.br/include/images/ninja/11002311.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002331, 'Tsunade[Jounin]', 'https://en.konohaproxy.com.br/include/images/ninja/11002331.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002341, 'Tsunade[Kimono]', 'https://en.konohaproxy.com.br/include/images/ninja/11002341.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002351, 'Tsunade [Byakugou]', 'https://en.konohaproxy.com.br/include/images/ninja/11002351.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002401, 'Hiruzen[Third Hokage]', 'https://en.konohaproxy.com.br/include/images/ninja/11002401.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002421, 'Hiruzen[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11002421.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002501, 'Kimimaro', 'https://en.konohaproxy.com.br/include/images/ninja/11002501.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002601, 'Kimimaro[Curse-Mark]', 'https://en.konohaproxy.com.br/include/images/ninja/11002601.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002621, 'Kimimaro [Halloween]', 'https://en.konohaproxy.com.br/include/images/ninja/11002621.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002701, 'Jirobo', 'https://en.konohaproxy.com.br/include/images/ninja/11002701.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002801, 'Sakon&amp;Ukon', 'https://en.konohaproxy.com.br/include/images/ninja/11002801.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11002901, 'Kidomaru', 'https://en.konohaproxy.com.br/include/images/ninja/11002901.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003001, 'Tayuya', 'https://en.konohaproxy.com.br/include/images/ninja/11003001.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003101, 'Itachi', 'https://en.konohaproxy.com.br/include/images/ninja/11003101.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003201, 'Kisame', 'https://en.konohaproxy.com.br/include/images/ninja/11003201.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003211, 'Kisame[Samehada]', 'https://en.konohaproxy.com.br/include/images/ninja/11003211.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003301, 'Hashirama[First Hokage]', 'https://en.konohaproxy.com.br/include/images/ninja/11003301.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003311, 'Hashirama[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11003311.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003321, 'Hashirama [New Year]', 'https://en.konohaproxy.com.br/include/images/ninja/11003321.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003401, 'Tobirama[Second Hokage]', 'https://en.konohaproxy.com.br/include/images/ninja/11003401.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003411, 'Tobirama[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11003411.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003501, 'Obito[Boy]', 'https://en.konohaproxy.com.br/include/images/ninja/11003501.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003611, 'Iruka', 'https://en.konohaproxy.com.br/include/images/ninja/11003611.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003621, 'Iruka [Suit]', 'https://en.konohaproxy.com.br/include/images/ninja/11003621.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003711, 'Mizuki', 'https://en.konohaproxy.com.br/include/images/ninja/11003711.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003901, 'Asuma', 'https://en.konohaproxy.com.br/include/images/ninja/11003901.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003911, 'Asuma [Wind Blade]', 'https://en.konohaproxy.com.br/include/images/ninja/11003911.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003921, 'Asuma[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11003921.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11003931, 'Asuma [Swimsuit]', 'https://en.konohaproxy.com.br/include/images/ninja/11003931.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004001, 'Anko', 'https://en.konohaproxy.com.br/include/images/ninja/11004001.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004101, 'Kurenai', 'https://en.konohaproxy.com.br/include/images/ninja/11004101.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004111, 'Kurenai [Summer Clothing]', 'https://en.konohaproxy.com.br/include/images/ninja/11004111.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004201, 'Shizune', 'https://en.konohaproxy.com.br/include/images/ninja/11004201.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004211, 'Shizune [New Year]', 'https://en.konohaproxy.com.br/include/images/ninja/11004211.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004301, 'Baki', 'https://en.konohaproxy.com.br/include/images/ninja/11004301.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004401, 'Minato [Fourth Hokage]', 'https://en.konohaproxy.com.br/include/images/ninja/11004401.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004411, 'Minato [Jounin]', 'https://en.konohaproxy.com.br/include/images/ninja/11004411.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004431, 'Minato [Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11004431.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004441, 'Minato [Suit]', 'https://en.konohaproxy.com.br/include/images/ninja/11004441.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004451, 'Minato [Xmas]', 'https://en.konohaproxy.com.br/include/images/ninja/11004451.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004501, 'Konohamaru', 'https://en.konohaproxy.com.br/include/images/ninja/11004501.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004511, 'Konohamaru[Corps]', 'https://en.konohaproxy.com.br/include/images/ninja/11004511.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004521, 'Konohamaru[Shippuden]', 'https://en.konohaproxy.com.br/include/images/ninja/11004521.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004601, 'Udon', 'https://en.konohaproxy.com.br/include/images/ninja/11004601.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004701, 'Moegi', 'https://en.konohaproxy.com.br/include/images/ninja/11004701.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004801, 'Sasori[100 Puppets]', 'https://en.konohaproxy.com.br/include/images/ninja/11004801.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004811, 'Sasori', 'https://en.konohaproxy.com.br/include/images/ninja/11004811.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004831, 'Sasori[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11004831.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004841, 'Sasori [Akatsuki Inception]', 'https://en.konohaproxy.com.br/include/images/ninja/11004841.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004901, 'Deidara', 'https://en.konohaproxy.com.br/include/images/ninja/11004901.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004921, 'Deidara[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11004921.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11004941, 'Deidara [Akatsuki Inception]', 'https://en.konohaproxy.com.br/include/images/ninja/11004941.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005001, 'Chiyo', 'https://en.konohaproxy.com.br/include/images/ninja/11005001.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005011, 'Chiyo[Chikamatsu]', 'https://en.konohaproxy.com.br/include/images/ninja/11005011.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005101, 'Karin', 'https://en.konohaproxy.com.br/include/images/ninja/11005101.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005111, 'Karin[Christmas]', 'https://en.konohaproxy.com.br/include/images/ninja/11005111.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005201, 'Suigetsu', 'https://en.konohaproxy.com.br/include/images/ninja/11005201.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005211, 'Suigetsu [Taka Team]', 'https://en.konohaproxy.com.br/include/images/ninja/11005211.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005301, 'Jugo', 'https://en.konohaproxy.com.br/include/images/ninja/11005301.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005401, 'Kakuzu', 'https://en.konohaproxy.com.br/include/images/ninja/11005401.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005431, 'Kakuzu[Grudge]', 'https://en.konohaproxy.com.br/include/images/ninja/11005431.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005501, 'Hidan', 'https://en.konohaproxy.com.br/include/images/ninja/11005501.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005511, 'Hidan[Death Possession Blood]', 'https://en.konohaproxy.com.br/include/images/ninja/11005511.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005601, 'Sai', 'https://en.konohaproxy.com.br/include/images/ninja/11005601.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005611, 'Sai[Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11005611.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005621, 'Sai[Suit]', 'https://en.konohaproxy.com.br/include/images/ninja/11005621.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005641, 'Sai [Year of the Rat]', 'https://en.konohaproxy.com.br/include/images/ninja/11005641.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005701, 'Yamato', 'https://en.konohaproxy.com.br/include/images/ninja/11005701.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005711, 'Yamato[Anbu]', 'https://en.konohaproxy.com.br/include/images/ninja/11005711.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005801, 'Pain[Chikushodo]', 'https://en.konohaproxy.com.br/include/images/ninja/11005801.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005821, 'Ajisai', 'https://en.konohaproxy.com.br/include/images/ninja/11005821.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11005901, 'Pain[Ningendo]', 'https://en.konohaproxy.com.br/include/images/ninja/11005901.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006001, 'Tobi', 'https://en.konohaproxy.com.br/include/images/ninja/11006001.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006011, 'Madara[Five Kage Summit]', 'https://en.konohaproxy.com.br/include/images/ninja/11006011.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006021, 'Madara [Great Ninja War]', 'https://en.konohaproxy.com.br/include/images/ninja/11006021.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006031, 'Obito [Ten-Tails Jinchuuriki]', 'https://en.konohaproxy.com.br/include/images/ninja/11006031.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006101, 'Konan', 'https://en.konohaproxy.com.br/include/images/ninja/11006101.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006111, 'Konan [Angel of God]', 'https://en.konohaproxy.com.br/include/images/ninja/11006111.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006121, 'Konan[Kimono]', 'https://en.konohaproxy.com.br/include/images/ninja/11006121.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006131, 'Konan [Young Adult]', 'https://en.konohaproxy.com.br/include/images/ninja/11006131.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006201, 'Pain [Jigokudo]', 'https://en.konohaproxy.com.br/include/images/ninja/11006201.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006301, 'Pain [Shurado]', 'https://en.konohaproxy.com.br/include/images/ninja/11006301.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006401, 'Pain[Gakido]', 'https://en.konohaproxy.com.br/include/images/ninja/11006401.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006501, 'Pain [Tendo]', 'https://en.konohaproxy.com.br/include/images/ninja/11006501.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006511, 'Yahiko [Young Adult]', 'https://en.konohaproxy.com.br/include/images/ninja/11006511.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006601, 'Choza', 'https://en.konohaproxy.com.br/include/images/ninja/11006601.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006801, 'Hanzo', 'https://en.konohaproxy.com.br/include/images/ninja/11006801.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006901, 'Mei[Fifth Mizukage]', 'https://en.konohaproxy.com.br/include/images/ninja/11006901.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11006921, 'Mei[Swimsuit]', 'https://en.konohaproxy.com.br/include/images/ninja/11006921.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007001, 'Ay[Fourth Raikage]', 'https://en.konohaproxy.com.br/include/images/ninja/11007001.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007101, 'Onoki', 'https://en.konohaproxy.com.br/include/images/ninja/11007101.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007111, 'Onoki [Five Kage Summit]', 'https://en.konohaproxy.com.br/include/images/ninja/11007111.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007201, 'Danzou', 'https://en.konohaproxy.com.br/include/images/ninja/11007201.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007221, 'Danzou[Izanagi]', 'https://en.konohaproxy.com.br/include/images/ninja/11007221.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007301, 'Darui', 'https://en.konohaproxy.com.br/include/images/ninja/11007301.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007401, 'Mifune', 'https://en.konohaproxy.com.br/include/images/ninja/11007401.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007501, 'Killer Bee[Seven Swords Style]', 'https://en.konohaproxy.com.br/include/images/ninja/11007501.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007511, 'Killer Bee[Samehada]', 'https://en.konohaproxy.com.br/include/images/ninja/11007511.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007521, 'Killer Bee[Eight-Tails Jinchuuriki]', 'https://en.konohaproxy.com.br/include/images/ninja/11007521.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007601, 'Fukurokumaru', 'https://en.konohaproxy.com.br/include/images/ninja/11007601.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007611, 'Aonosuke', 'https://en.konohaproxy.com.br/include/images/ninja/11007611.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007621, 'Fukurokumaru[Onigiri King]', 'https://en.konohaproxy.com.br/include/images/ninja/11007621.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007701, 'Fuu Yamanaka', 'https://en.konohaproxy.com.br/include/images/ninja/11007701.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007801, 'Torune', 'https://en.konohaproxy.com.br/include/images/ninja/11007801.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11007901, 'Chojuro', 'https://en.konohaproxy.com.br/include/images/ninja/11007901.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11008001, 'Ao', 'https://en.konohaproxy.com.br/include/images/ninja/11008001.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11008101, 'Kurotsuchi', 'https://en.konohaproxy.com.br/include/images/ninja/11008101.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11008201, 'Akatsuchi', 'https://en.konohaproxy.com.br/include/images/ninja/11008201.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11008301, 'Cee', 'https://en.konohaproxy.com.br/include/images/ninja/11008301.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11008401, 'Mabui', 'https://en.konohaproxy.com.br/include/images/ninja/11008401.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11008501, 'Itachi [Susano''o]', 'https://en.konohaproxy.com.br/include/images/ninja/11008501.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11008511, 'Itachi [Anbu]', 'https://en.konohaproxy.com.br/include/images/ninja/11008511.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11008521, 'Itachi [Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11008521.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11008531, 'Itachi [Kimono]', 'https://en.konohaproxy.com.br/include/images/ninja/11008531.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11008551, 'Itachi [Boy]', 'https://en.konohaproxy.com.br/include/images/ninja/11008551.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11008701, 'Shikaku', 'https://en.konohaproxy.com.br/include/images/ninja/11008701.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11008801, 'Inoichi', 'https://en.konohaproxy.com.br/include/images/ninja/11008801.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009001, 'Yugito[Two-Tails Jinchuuriki]', 'https://en.konohaproxy.com.br/include/images/ninja/11009001.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009011, 'Yugito[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11009011.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009101, 'Yagura[Three-Tails Jinchuuriki]', 'https://en.konohaproxy.com.br/include/images/ninja/11009101.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009111, 'Yagura[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11009111.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009201, 'Roshi[Four-Tails Jinchuuriki]', 'https://en.konohaproxy.com.br/include/images/ninja/11009201.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009211, 'Roshi[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11009211.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009301, 'Han[Five-Tails Jinchuuriki]', 'https://en.konohaproxy.com.br/include/images/ninja/11009301.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009311, 'Han[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11009311.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009401, 'Utakata[Six-Tails Jinchuuriki]', 'https://en.konohaproxy.com.br/include/images/ninja/11009401.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009411, 'Utakata[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11009411.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009501, 'Fu[Seven-Tails Jinchuuriki]', 'https://en.konohaproxy.com.br/include/images/ninja/11009501.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009511, 'Fu[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11009511.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009601, 'Nagato', 'https://en.konohaproxy.com.br/include/images/ninja/11009601.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009611, 'Nagato [Young Adult]', 'https://en.konohaproxy.com.br/include/images/ninja/11009611.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009701, 'Gengetsu[Second Mizukage]', 'https://en.konohaproxy.com.br/include/images/ninja/11009701.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009801, 'Samui', 'https://en.konohaproxy.com.br/include/images/ninja/11009801.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009811, 'Samui [Swimsuit]', 'https://en.konohaproxy.com.br/include/images/ninja/11009811.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11009901, 'Mu', 'https://en.konohaproxy.com.br/include/images/ninja/11009901.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010001, 'Zaku', 'https://en.konohaproxy.com.br/include/images/ninja/11010001.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010101, 'Kinkaku', 'https://en.konohaproxy.com.br/include/images/ninja/11010101.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010201, 'Ginkaku', 'https://en.konohaproxy.com.br/include/images/ninja/11010201.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010301, 'Ay[Third Raikage]', 'https://en.konohaproxy.com.br/include/images/ninja/11010301.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010311, 'Ay [Third Raikage - Swimsuit]', 'https://en.konohaproxy.com.br/include/images/ninja/11010311.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010401, 'Obito[Masked Man]', 'https://en.konohaproxy.com.br/include/images/ninja/11010401.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010501, 'Rasa[Fourth Kazekage]', 'https://en.konohaproxy.com.br/include/images/ninja/11010501.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010601, 'Kushina', 'https://en.konohaproxy.com.br/include/images/ninja/11010601.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010621, 'Kushina[Habanero]', 'https://en.konohaproxy.com.br/include/images/ninja/11010621.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010631, 'Kushina [Xmas]', 'https://en.konohaproxy.com.br/include/images/ninja/11010631.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010701, 'Omoi', 'https://en.konohaproxy.com.br/include/images/ninja/11010701.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010721, 'Omoi [Swimsuit]', 'https://en.konohaproxy.com.br/include/images/ninja/11010721.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010801, 'Pakura[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11010801.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11010901, 'Toroi[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11010901.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011001, 'Fuguki', 'https://en.konohaproxy.com.br/include/images/ninja/11011001.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011011, 'Fuguki[Samehada]', 'https://en.konohaproxy.com.br/include/images/ninja/11011011.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011101, 'Jinin[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11011101.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011201, 'Jinpachi[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11011201.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011301, 'Kushimaru[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11011301.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011401, 'Mangetsu', 'https://en.konohaproxy.com.br/include/images/ninja/11011401.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011501, 'Ringo Ameyuri[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11011501.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011601, 'Zetsu', 'https://en.konohaproxy.com.br/include/images/ninja/11011601.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011701, 'Madara Uchiha [Founder]', 'https://en.konohaproxy.com.br/include/images/ninja/11011701.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011711, 'Madara[Ten-Tails Jinchuuriki]', 'https://en.konohaproxy.com.br/include/images/ninja/11011711.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011721, 'Madara [Edo Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11011721.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011801, 'Shisui', 'https://en.konohaproxy.com.br/include/images/ninja/11011801.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011811, 'Shisui [Kimono]', 'https://en.konohaproxy.com.br/include/images/ninja/11011811.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011821, 'Shisui [Susano''o]', 'https://en.konohaproxy.com.br/include/images/ninja/11011821.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11011901, 'Hanabi', 'https://en.konohaproxy.com.br/include/images/ninja/11011901.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012001, 'Guren', 'https://en.konohaproxy.com.br/include/images/ninja/11012001.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012101, 'Naruto[Ramen]', 'https://en.konohaproxy.com.br/include/images/ninja/11012101.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012131, 'Naruto[Suit]', 'https://en.konohaproxy.com.br/include/images/ninja/11012131.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012141, 'Naruto[Six Paths Sage Mode]', 'https://en.konohaproxy.com.br/include/images/ninja/11012141.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012151, 'Naruto [Ronin]', 'https://en.konohaproxy.com.br/include/images/ninja/11012151.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012161, 'Naruto [Sexy Jutsu]', 'https://en.konohaproxy.com.br/include/images/ninja/11012161.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012203, 'Chiriku', 'https://en.konohaproxy.com.br/include/images/ninja/11012203.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012303, 'Shira', 'https://en.konohaproxy.com.br/include/images/ninja/11012303.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012401, 'Duy', 'https://en.konohaproxy.com.br/include/images/ninja/11012401.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012501, 'Dan[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11012501.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012601, 'Shin[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/11012601.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012701, 'Shizuka [Revamped]', 'https://en.konohaproxy.com.br/include/images/ninja/11012701.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012711, 'Shizuka [Release Version]', 'https://en.konohaproxy.com.br/include/images/ninja/11012711.png', '1');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012801, 'Yota', 'https://en.konohaproxy.com.br/include/images/ninja/11012801.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11012901, 'Izuna Uchiha', 'https://en.konohaproxy.com.br/include/images/ninja/11012901.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11013001, 'Sasuke[Kimono]', 'https://en.konohaproxy.com.br/include/images/ninja/11013001.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11013101, 'Ibiki Morino', 'https://en.konohaproxy.com.br/include/images/ninja/11013101.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11013501, 'Karui', 'https://en.konohaproxy.com.br/include/images/ninja/11013501.png', '2');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11013601, 'Hiashi', 'https://en.konohaproxy.com.br/include/images/ninja/11013601.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11013703, 'Hayate Gekko', 'https://en.konohaproxy.com.br/include/images/ninja/11013703.png', '4');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (11013801, 'Hagane Kotetsu', 'https://en.konohaproxy.com.br/include/images/ninja/11013801.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (19004701, 'Hebihime[Agate]', 'https://en.konohaproxy.com.br/include/images/ninja/19004701.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (19004711, 'Hebihime[Amber]', 'https://en.konohaproxy.com.br/include/images/ninja/19004711.png', '0');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (19004801, 'Enma', 'https://en.konohaproxy.com.br/include/images/ninja/19004801.png', '3');
INSERT INTO `Ninja` (`id`, `name`, `image`, `element`) VALUES (21006811, 'Hanzo[Edo-Tensei]', 'https://en.konohaproxy.com.br/include/images/ninja/21006811.png', '0');

INSERT INTO `Team` (`name`, `description`) VALUES ('Test Team', 'Hanzo[Edo-Tensei]');
INSERT INTO `TeamNinja` (`position`, `team_id`,`ninja_id`) VALUES (1, 1,21006811);