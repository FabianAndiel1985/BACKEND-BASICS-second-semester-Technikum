-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 04. Jun 2020 um 09:23
-- Server-Version: 5.7.30-0ubuntu0.18.04.1
-- PHP-Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `BBpruefung`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `flights`
--

CREATE TABLE `flights` (
  `id` int(10) UNSIGNED NOT NULL,
  `flightname` varchar(255) NOT NULL,
  `airline` varchar(255) DEFAULT NULL,
  `departure` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `flights`
--

INSERT INTO `flights` (`id`, `flightname`, `airline`, `departure`) VALUES
(1, 'XQ 981', 'SunExpress', '2018-06-19 21:05:00'),
(2, 'OE 708', 'Laudamotion', '2018-06-19 21:15:00'),
(3, 'OS 9065', 'Austrian', '2018-06-19 21:25:00'),
(4, 'EW 5968', 'Eurowings', '2018-06-19 21:30:00'),
(5, 'OS 9123', 'Austrian', '2018-06-19 21:35:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `passengers`
--

CREATE TABLE `passengers` (
  `id` int(10) UNSIGNED NOT NULL,
  `flights_id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `passengers`
--

INSERT INTO `passengers` (`id`, `flights_id`, `firstname`, `lastname`) VALUES
(1, 1, ' Swenja ', ' Brand '),
(2, 1, ' Valentin ', ' Saupe '),
(3, 1, ' Jil ', ' Buehler '),
(4, 1, ' Layla ', ' Fendt '),
(5, 1, ' Rieke ', ' Franklin '),
(6, 1, ' Maxim ', ' Rivera '),
(7, 1, ' Lili ', ' Tobias '),
(8, 1, ' Madeleine ', ' Buss '),
(9, 1, ' Juri ', ' Laufer '),
(10, 1, ' Jens ', ' Hoyer '),
(11, 1, ' Selina ', ' Guenther '),
(12, 1, ' Anika ', ' Haack '),
(13, 1, ' Juri ', ' Harder '),
(14, 1, ' Annabelle ', ' Pape '),
(15, 1, ' Frieda ', ' Wilms '),
(16, 1, ' Artur ', ' Hudson '),
(17, 1, ' Elizabeth ', ' Kelley '),
(18, 1, ' Lia ', ' Preiss '),
(19, 1, ' Thorben ', ' Reeves '),
(20, 1, ' Siegfried ', ' Buettner '),
(21, 1, ' Rafael ', ' Haeberle '),
(22, 1, ' Andre ', ' Klatt '),
(23, 1, ' Romy ', ' Bittner '),
(24, 1, ' Christel ', ' Falk '),
(25, 1, ' Nina ', ' Drescher '),
(26, 1, ' Stefan ', ' Reyes '),
(27, 1, ' Rike ', ' Wirth '),
(28, 1, ' Nik ', ' Schwab '),
(29, 1, ' Anneke ', ' Funk '),
(30, 1, ' Yannick ', ' Kaemmerer '),
(31, 1, ' Holger ', ' Brandt '),
(32, 1, ' Thomas ', ' Marten '),
(33, 1, ' Laurenz ', ' Thoma '),
(34, 1, ' Isabell ', ' Wilhelm '),
(35, 1, ' Erica ', ' Brandes '),
(36, 1, ' Vivienne ', ' Flores '),
(37, 1, ' Joschua ', ' Luecke '),
(38, 1, ' Tobias ', ' Seeger '),
(39, 1, ' Jonna ', ' McKenzie '),
(40, 1, ' Leonard ', ' Muhr '),
(41, 1, ' Nicholas ', ' Schreier '),
(42, 1, ' Justus ', ' Horst '),
(43, 1, ' Frederic ', ' Lindemann '),
(44, 1, ' Juergen ', ' Peitz '),
(45, 1, ' Florian ', ' Wolters '),
(46, 1, ' Bennet ', ' Kueppers '),
(47, 1, ' Christina ', ' Ruf '),
(48, 1, ' Lia ', ' Reindl '),
(49, 1, ' Werner ', ' Just '),
(50, 1, ' Mila ', ' Kampmann '),
(51, 1, ' Finja ', ' Bittner '),
(52, 1, ' Lucy ', ' Hoffmann '),
(53, 1, ' Melanie ', ' Schanz '),
(54, 1, ' Marcel ', ' Hermanns '),
(55, 1, ' Walther ', ' Haberkorn '),
(56, 1, ' Sandra ', ' Denzer '),
(57, 1, ' Volker ', ' Huth '),
(58, 1, ' Melanie ', ' Wirtz '),
(59, 1, ' Sinah ', ' Kalinowski '),
(60, 1, ' Caja ', ' Doering '),
(61, 1, ' Annalena ', ' Harris '),
(62, 1, ' John ', ' Horton '),
(63, 1, ' Ursula ', ' Muehl '),
(64, 1, ' Katharina ', ' Kelley '),
(65, 1, ' Lana ', ' Uhlemann '),
(66, 1, ' Marlon ', ' Sorg '),
(67, 1, ' Gerhardt ', ' Sullivan '),
(68, 1, ' Kevin ', ' Flowers '),
(69, 1, ' Dominic ', ' Eckel '),
(70, 1, ' Tristan ', ' Tempel '),
(71, 1, ' Magdalena ', ' Beier '),
(72, 1, ' Kimberly ', ' Wiesmann '),
(73, 1, ' Noel ', ' Neubauer '),
(74, 1, ' Christiane ', ' Wacker '),
(75, 1, ' Annabel ', ' Herz '),
(76, 1, ' Viktor ', ' Nestler '),
(77, 1, ' Henrik ', ' Kampmann '),
(78, 1, ' Clara ', ' Saupe '),
(79, 1, ' Stefanie ', ' Dixon '),
(80, 1, ' Norbert ', ' Marktschreier '),
(81, 2, ' Sonja ', ' Kessler '),
(82, 2, ' Matis ', ' Ebeling '),
(83, 2, ' Lucie ', ' Siedler '),
(84, 2, ' Niels ', ' Strickland '),
(85, 2, ' Bernt ', ' Muehl '),
(86, 2, ' Dario ', ' Eichhorn '),
(87, 2, ' Carla ', ' Kiessling '),
(88, 2, ' Janine ', ' Pope '),
(89, 2, ' Hildegard ', ' Schaf '),
(90, 2, ' Antje ', ' Velten '),
(91, 2, ' Hertha ', ' Himmel '),
(92, 2, ' Jonah ', ' Lapp '),
(93, 2, ' Sofie ', ' Kurz '),
(94, 2, ' Klemens ', ' Rost '),
(95, 2, ' Lili ', ' Carstens '),
(96, 2, ' Jonna ', ' White '),
(97, 2, ' Gerd ', ' Sander '),
(98, 2, ' Mareike ', ' Douglas '),
(99, 2, ' Lorenz ', ' Leibold '),
(100, 2, ' Eva ', ' Thamm '),
(101, 2, ' Fabio ', ' Kaps '),
(102, 2, ' Edith ', ' Watts '),
(103, 2, ' Maurice ', ' Baumgarten '),
(104, 2, ' Tim ', ' Andrews '),
(105, 2, ' Robert ', ' Peter '),
(106, 2, ' Leandro ', ' Kretzschmar '),
(107, 2, ' Kyra ', ' Brandstetter '),
(108, 2, ' Johann ', ' Fauser '),
(109, 2, ' Bennett ', ' Schultze '),
(110, 2, ' Lion ', ' Hintze '),
(111, 2, ' Christel ', ' Bossert '),
(112, 2, ' Dennis ', ' Schlegel '),
(113, 2, ' Lucas ', ' Merk '),
(114, 2, ' Marc ', ' Warren '),
(115, 2, ' Vivien ', ' Reid '),
(116, 2, ' Lennard ', ' Waldmann '),
(117, 2, ' Ulrike ', ' Dammann '),
(118, 2, ' Ian ', ' Rauer '),
(119, 2, ' Ricardo ', ' Wecker '),
(120, 2, ' Peter ', ' Kappes '),
(121, 2, ' Josefine ', ' Denecke '),
(122, 2, ' Charlotte ', ' Gebhardt '),
(123, 2, ' Lili ', ' Karger '),
(124, 2, ' Jessica ', ' Viessmann '),
(125, 2, ' Marieke ', ' Riley '),
(126, 2, ' Petra ', ' Faller '),
(127, 2, ' Danny ', ' Roesch '),
(128, 2, ' Paul ', ' Sutton '),
(129, 2, ' Mia ', ' Dittrich '),
(130, 2, ' Thies ', ' Carter '),
(131, 2, ' Stefanie ', ' Goetze '),
(132, 2, ' Louise ', ' Fey '),
(133, 2, ' Elias ', ' Stumpf '),
(134, 2, ' Lucia ', ' Hockney '),
(135, 2, ' Hannelore ', ' Himmelsbach '),
(136, 2, ' Heiko ', ' Ziemann '),
(137, 2, ' Luisa ', ' Rebmann '),
(138, 2, ' Marah ', ' Gassner '),
(139, 2, ' Tanja ', ' Seeliger '),
(140, 2, ' Anastasia ', ' Katz '),
(141, 2, ' Uwe ', ' Campbell '),
(142, 2, ' Pascal ', ' Brandes '),
(143, 2, ' Richard ', ' Trost '),
(144, 2, ' Marah ', ' Patzer '),
(145, 2, ' Mohammed ', ' Wehmeyer '),
(146, 2, ' Karlo ', ' Friedrichs '),
(147, 2, ' Anabel ', ' Kurth '),
(148, 2, ' Lynn ', ' Genz '),
(149, 2, ' Thomas ', ' Salomon '),
(150, 2, ' Klemens ', ' Wenzel '),
(151, 2, ' Rafael ', ' Gericke '),
(152, 2, ' Cedric ', ' Krohn '),
(153, 2, ' Carsten ', ' Park '),
(154, 2, ' Philip ', ' Senft '),
(155, 2, ' Klaus ', ' Hammond '),
(156, 2, ' Oskar ', ' Sandmann '),
(157, 2, ' Mandy ', ' Kappel '),
(158, 2, ' Carl ', ' Both '),
(159, 2, ' Miguel ', ' Hof '),
(160, 2, ' Rasmus ', ' Brenner '),
(161, 3, ' Victoria ', ' Dean '),
(162, 3, ' Kaete ', ' Putz '),
(163, 3, ' Aaron ', ' Albers '),
(164, 3, ' Nathalie ', ' Ihle '),
(165, 3, ' Jannes ', ' Joseph '),
(166, 3, ' Heinrich ', ' Baumgaertner '),
(167, 3, ' Lion ', ' Fahr '),
(168, 3, ' Alena ', ' Fell '),
(169, 3, ' Jacob ', ' Sahin '),
(170, 3, ' Dilara ', ' Howell '),
(171, 3, ' Leonie ', ' Keil '),
(172, 3, ' Kristian ', ' Hartl '),
(173, 3, ' Meike ', ' Otten '),
(174, 3, ' Jannick ', ' Hilpert '),
(175, 3, ' Nick ', ' Kuepper '),
(176, 3, ' Alina ', ' Mullins '),
(177, 3, ' Marta ', ' Giese '),
(178, 3, ' Anneke ', ' Waller '),
(179, 3, ' Karla ', ' Copeland '),
(180, 3, ' Hannes ', ' Pahlke '),
(181, 3, ' Fiona ', ' Wilhelms '),
(182, 3, ' Paula ', ' Geib '),
(183, 3, ' Annabell ', ' Ritter '),
(184, 3, ' Tore ', ' Sumpf '),
(185, 3, ' Lilian ', ' Laue '),
(186, 3, ' Tara ', ' Nagler '),
(187, 3, ' Detlev ', ' Siekmann '),
(188, 3, ' Viktoria ', ' Seyfried '),
(189, 3, ' Nele ', ' Weinert '),
(190, 3, ' Lilli ', ' Pieper '),
(191, 3, ' Klaas ', ' Kopp '),
(192, 3, ' Jil ', ' Geis '),
(193, 3, ' Luke ', ' Reif '),
(194, 3, ' Bjarne ', ' Jahn '),
(195, 3, ' Louise ', ' Horton '),
(196, 3, ' Maximilian ', ' Henschke '),
(197, 3, ' Elke ', ' Chandler '),
(198, 3, ' Walther ', ' Aberle '),
(199, 3, ' Henriette ', ' Stephan '),
(200, 3, ' Nelly ', ' Krieg '),
(201, 3, ' Karla ', ' Rothe '),
(202, 3, ' Markus ', ' Barker '),
(203, 3, ' Jeremie ', ' Mills '),
(204, 3, ' Juri ', ' Copeland '),
(205, 3, ' Stefanie ', ' Pastor '),
(206, 3, ' Katarina ', ' Techem '),
(207, 3, ' Jill ', ' Salazar '),
(208, 3, ' Kristin ', ' Klose '),
(209, 3, ' Lars ', ' Kranz '),
(210, 3, ' Richard ', ' Floyd '),
(211, 3, ' Heinrich ', ' Dreyer '),
(212, 3, ' Antonio ', ' Heck '),
(213, 3, ' Walther ', ' Reinartz '),
(214, 3, ' Johanna ', ' Farmer '),
(215, 3, ' Brigitte ', ' Thelen '),
(216, 3, ' Liv ', ' Henry '),
(217, 3, ' Konstantin ', ' Gottwald '),
(218, 3, ' Magdalena ', ' Merz '),
(219, 3, ' Isabel ', ' Spindler '),
(220, 3, ' Stephan ', ' Schuhmann '),
(221, 3, ' Karlotta ', ' Brueggemann '),
(222, 3, ' Amy ', ' Bosch Dienst '),
(223, 3, ' Leoni ', ' Jaenicke '),
(224, 3, ' Christoph ', ' Mielke '),
(225, 3, ' Svea ', ' Block '),
(226, 3, ' Clara ', ' Williamson '),
(227, 3, ' Joerg ', ' Beckmann '),
(228, 3, ' Carin ', ' Palmer '),
(229, 3, ' Alina ', ' Breuninger '),
(230, 3, ' Janis ', ' Joerg '),
(231, 3, ' Angelina ', ' Kilian '),
(232, 3, ' Christian ', ' Fellner '),
(233, 3, ' Margot ', ' Herz '),
(234, 3, ' Ina ', ' Schroeder '),
(235, 3, ' Gabriel ', ' Edler '),
(236, 3, ' Judith ', ' Drews '),
(237, 3, ' Niels ', ' Valdez '),
(238, 3, ' Ronja ', ' Kiefer '),
(239, 3, ' Dominik ', ' Guettler '),
(240, 3, ' Sinah ', ' Gottwald '),
(241, 4, ' Luna ', ' Clark '),
(242, 4, ' Ben ', ' Loeffler '),
(243, 4, ' Henry ', ' Lang '),
(244, 4, ' Elfriede ', ' Albers '),
(245, 4, ' Rebecca ', ' Heine '),
(246, 4, ' Helene ', ' Weichert '),
(247, 4, ' Marco ', ' Wedekind '),
(248, 4, ' Rieke ', ' Dieckmann '),
(249, 4, ' Ute ', ' Demuth '),
(250, 4, ' Lukas ', ' Holland '),
(251, 4, ' Jamie ', ' Rautenberg '),
(252, 4, ' Klara ', ' Schuhmacher '),
(253, 4, ' Jens ', ' Gabler '),
(254, 4, ' Matthias ', ' Jablonski '),
(255, 4, ' Sofia ', ' Ehrlich '),
(256, 4, ' Zoe ', ' Bacher '),
(257, 4, ' Alissa ', ' Raeder '),
(258, 4, ' Kristine ', ' Mendoza '),
(259, 4, ' Justin ', ' Assmann '),
(260, 4, ' Leif ', ' Leber '),
(261, 4, ' Helmuth ', ' Weichert '),
(262, 4, ' Sabine ', ' Simmons '),
(263, 4, ' Erwin ', ' Gellert '),
(264, 4, ' Cedric ', ' Hecker '),
(265, 4, ' Milan ', ' Lehmkuhl '),
(266, 4, ' Selina ', ' Hecht '),
(267, 4, ' Lilian ', ' Heck '),
(268, 4, ' Richard ', ' Schuessler '),
(269, 4, ' Gerhardt ', ' Novak '),
(270, 4, ' Alfred ', ' Kunze '),
(271, 4, ' Mathis ', ' Schall '),
(272, 4, ' Rolf ', ' Spencer '),
(273, 4, ' Mathis ', ' Traub '),
(274, 4, ' Finnja ', ' Held '),
(275, 4, ' Henriette ', ' Wachsmuth '),
(276, 4, ' Maya ', ' Brigitte '),
(277, 4, ' Marlies ', ' Launisch '),
(278, 4, ' Jonna ', ' Tate '),
(279, 4, ' David ', ' Laux '),
(280, 4, ' Patrick ', ' Hammond '),
(281, 4, ' Niklas ', ' Fleischmann '),
(282, 4, ' Martin ', ' Sullivan '),
(283, 4, ' Charlotte ', ' Marsh '),
(284, 4, ' Christoph ', ' Gomez '),
(285, 4, ' Mathilda ', ' Frei '),
(286, 4, ' Stephanie ', ' Weber '),
(287, 4, ' Mattis ', ' Schwoerer '),
(288, 4, ' Chris ', ' Rodriquez '),
(289, 4, ' Mandy ', ' Glocke '),
(290, 4, ' Nik ', ' Schott '),
(291, 4, ' Mark ', ' Adolph '),
(292, 4, ' Guenther ', ' Stein '),
(293, 4, ' Matilda ', ' Gering '),
(294, 4, ' Judith ', ' Landgraf '),
(295, 4, ' Christa ', ' Robertson '),
(296, 4, ' Jonathan ', ' Bowen '),
(297, 4, ' Jamie ', ' Gerhard '),
(298, 4, ' Rolf ', ' Weger '),
(299, 4, ' Luc ', ' Lindner '),
(300, 4, ' Connor ', ' Guzman '),
(301, 4, ' Diana ', ' Barthel '),
(302, 4, ' Christian ', ' Becker '),
(303, 4, ' Kerstin ', ' Huebner '),
(304, 4, ' Marah ', ' Geisler '),
(305, 4, ' Artur ', ' Blair '),
(306, 4, ' Luca ', ' Unger '),
(307, 4, ' Sabrina ', ' Papst '),
(308, 4, ' Christina ', ' Siegler '),
(309, 4, ' Wilfried ', ' Senft '),
(310, 4, ' Colin ', ' Hartung '),
(311, 4, ' Barbara ', ' Seel '),
(312, 4, ' Oliver ', ' Terry '),
(313, 4, ' Curt ', ' Rathmann '),
(314, 4, ' Jacqueline ', ' Heinrichs '),
(315, 4, ' Bennet ', ' Braeuer '),
(316, 4, ' Emmely ', ' Ortega '),
(317, 4, ' Karoline ', ' Muhr '),
(318, 4, ' Monika ', ' Wagener '),
(319, 4, ' Mohammed ', ' Fuller '),
(320, 4, ' Meike ', ' Sumpf '),
(321, 5, ' Inge ', ' Habel '),
(322, 5, ' Marlis ', ' Salzmann '),
(323, 5, ' Marieke ', ' Zabel '),
(324, 5, ' Luke ', ' Frei '),
(325, 5, ' Emmily ', ' Friedel '),
(326, 5, ' Ursula ', ' Roy '),
(327, 5, ' Werner ', ' Forster '),
(328, 5, ' Lorenz ', ' Seeber '),
(329, 5, ' Luca ', ' Vaughn '),
(330, 5, ' Jannis ', ' Mundt '),
(331, 5, ' Tobias ', ' Seeliger '),
(332, 5, ' Torsten ', ' Haas '),
(333, 5, ' Anastasia ', ' Kuester '),
(334, 5, ' Swenja ', ' Brandner '),
(335, 5, ' Hermann ', ' Selzer '),
(336, 5, ' Celine ', ' Schmitt '),
(337, 5, ' Kathrin ', ' Chambers '),
(338, 5, ' Alisa ', ' Eisele '),
(339, 5, ' Erich ', ' Wassmann '),
(340, 5, ' Juri ', ' Wiese '),
(341, 5, ' Kaethe ', ' Eckert '),
(342, 5, ' Oscar ', ' Barnes '),
(343, 5, ' Marcus ', ' Arnold '),
(344, 5, ' Lia ', ' Stoll '),
(345, 5, ' Dirk ', ' Wilkins '),
(346, 5, ' Leah ', ' Perkins '),
(347, 5, ' Rudolph ', ' Grundmann '),
(348, 5, ' Phil ', ' Schuett '),
(349, 5, ' Robert ', ' Kuester '),
(350, 5, ' Lucie ', ' Siewert '),
(351, 5, ' Claus ', ' Schatz '),
(352, 5, ' Helga ', ' Frei '),
(353, 5, ' Katja ', ' Hunt '),
(354, 5, ' Antje ', ' Lopez '),
(355, 5, ' Steven ', ' Kautz '),
(356, 5, ' Olaf ', ' Hill '),
(357, 5, ' Nils ', ' Marschall '),
(358, 5, ' Tobias ', ' Jaekel '),
(359, 5, ' Laila ', ' Haberl '),
(360, 5, ' Justin ', ' Hilgert '),
(361, 5, ' Marko ', ' Brodersen '),
(362, 5, ' Kristine ', ' Menke '),
(363, 5, ' Karla ', ' Trautmann '),
(364, 5, ' Jenny ', ' Patzer '),
(365, 5, ' Paul ', ' Nelson '),
(366, 5, ' Marc ', ' Hinkelmann '),
(367, 5, ' Hendrik ', ' Kanzler '),
(368, 5, ' Mika ', ' Hunt '),
(369, 5, ' Caroline ', ' Reinders '),
(370, 5, ' Christiane ', ' Faerber '),
(371, 5, ' Samuel ', ' Schwertfeger '),
(372, 5, ' Rudolph ', ' Krieger '),
(373, 5, ' Emil ', ' Bossert '),
(374, 5, ' Frank ', ' Munz '),
(375, 5, ' Lili ', ' Genz '),
(376, 5, ' Selin ', ' Schubert '),
(377, 5, ' Manuela ', ' Daum '),
(378, 5, ' Frank ', ' Bacher '),
(379, 5, ' Cornelia ', ' Garcia '),
(380, 5, ' Rosemarie ', ' Bartsch '),
(381, 5, ' Carina ', ' McCormick '),
(382, 5, ' Theo ', ' Maurer '),
(383, 5, ' Erik ', ' Hagen '),
(384, 5, ' Jesse ', ' Zeitler '),
(385, 5, ' Caroline ', ' Sinn '),
(386, 5, ' Leander ', ' Kainz '),
(387, 5, ' Mona ', ' Fellner '),
(388, 5, ' Kira ', ' Henderson '),
(389, 5, ' Stephanie ', ' Borchers '),
(390, 5, ' Sinah ', ' Kaltenbach '),
(391, 5, ' Karla ', ' Muenstermann '),
(392, 5, ' Ricardo ', ' Kania '),
(393, 5, ' Isabel ', ' Scheffler '),
(394, 5, ' Joel ', ' Sanchez '),
(395, 5, ' Stina ', ' Wagener '),
(396, 5, ' Karin ', ' Teuber '),
(397, 5, ' Teresa ', ' Conrad '),
(398, 5, ' Stina ', ' Fehrenbach '),
(399, 5, ' Niclas ', ' Grant '),
(400, 5, ' Rasmus ', ' Schuessler ');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `passengers`
--
ALTER TABLE `passengers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
