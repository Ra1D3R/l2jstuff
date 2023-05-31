SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- database: `l2jgs`
--

-- --------------------------------------------------------

--
-- table structure `classes`
--

CREATE TABLE `classes` (
  `classId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parentClassId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- data for table `classes`
--

INSERT INTO `classes` (`classId`, `name`, `parentClassId`) VALUES
(0, 'Human Fighter', NULL),
(1, 'Warrior', 0),
(2, 'Gladiator', 1),
(3, 'Warlord', 1),
(4, 'Human Knight', 0),
(5, 'Paladin', 4),
(6, 'Dark Avenger', 4),
(7, 'Rogue', 0),
(8, 'Treasure Hunter', 7),
(9, 'Hawkeye', 7),
(10, 'Human Mystic', 0),
(11, 'Human Wizard', 10),
(12, 'Sorcerer', 11),
(13, 'Necromancer', 11),
(14, 'Warlock', 11),
(15, 'Cleric', 10),
(16, 'Bishop', 15),
(17, 'Prophet', 15),
(18, 'Elven Fighter', NULL),
(19, 'Elven Knight', 18),
(20, 'Temple Knight', 19),
(21, 'Sword Singer', 19),
(22, 'Elven Scout', 18),
(23, 'Plains Walker', 22),
(24, 'Silver Ranger', 22),
(25, 'Elven Mystic', NULL),
(26, 'Elven Wizard', 25),
(27, 'Spellsinger', 26),
(28, 'Elemental Summoner', 26),
(29, 'Elven Oracle', 25),
(30, 'Elven Elder', 29),
(31, 'Dark Fighter', NULL),
(32, 'Palus Knight', 31),
(33, 'Shillien Knight', 32),
(34, 'Bladedancer', 33),
(35, 'Assassin', 31),
(36, 'Abyss Walker', 35),
(37, 'Phantom Ranger', 35),
(38, 'Dark Mystic', NULL),
(39, 'Dark Wizard', 38),
(40, 'Spellhowler', 39),
(41, 'Phantom Summoner', 39),
(42, 'Shillien Oracle', 38),
(43, 'Shillien Elder', 42),
(44, 'Orc Fighter', NULL),
(45, 'Orc Raider', 44),
(46, 'Destroyer', 45),
(47, 'Monk', 44),
(48, 'Tyrant', 47),
(49, 'Orc Mystic', NULL),
(50, 'Orc Shaman', 49),
(51, 'Overlord', 50),
(52, 'Warcryer', 50),
(53, 'Dwarf Fighter', NULL),
(54, 'Scavenger', 53),
(55, 'Bounty Hunter', 54),
(56, 'Artisan', 53),
(57, 'Warsmith', 56),
(88, 'Duelist', 2),
(89, 'Dreadnought', 3),
(90, 'Phoenix Knight', 5),
(91, 'Hell Knight', 6),
(92, 'Sagittarius', 9),
(93, 'Adventurer', 8),
(94, 'Archmage', 12),
(95, 'Soultaker', 13),
(96, 'Arcana Lord', 14),
(97, 'Cardinal', 16),
(98, 'Hierophant', 17),
(99, 'Eva\'s Templar', 20),
(100, 'Sword Muse', 21),
(101, 'Wind Rider', 23),
(102, 'Moonlight Sentinel', 24),
(103, 'Mystic Muse', 27),
(104, 'Elemental Master', 26),
(105, 'Eva\'s Saint', 30),
(106, 'Shillien Templar', 33),
(107, 'Spectral Dancer', 34),
(108, 'Ghost Hunter', 36),
(109, 'Ghost Sentinel', 37),
(110, 'Storm Screamer', 40),
(111, 'Spectral Master', 41),
(112, 'Shillien Saint', 43),
(113, 'Titan', 46),
(114, 'Grand Khavatari', 48),
(115, 'Dominator', 51),
(116, 'Doom Cryer', 52),
(117, 'Fortune Seeker', 55),
(118, 'Maestro', 57),
(119, 'World Trap', NULL),
(120, 'Player Trap', NULL),
(121, 'Double Ghost', NULL),
(122, 'Siege Attacker', NULL),
(123, 'Male Kamael Soldier', NULL),
(124, 'Female Kamael Soldier', NULL),
(125, 'Trooper', 123),
(126, 'Warder', 124),
(127, 'Berserker', 125),
(128, 'Male Soul Breaker', 125),
(129, 'Female Soul Breaker', 126),
(130, 'Arbalester', 126),
(131, 'Doombringer', 127),
(132, 'Male Soul Hound', 128),
(133, 'Female Soul Hound', 129),
(134, 'Trickster', 130),
(135, 'Inspector', 126),
(136, 'Judicator', 135);

ALTER TABLE `classes`
  ADD PRIMARY KEY (`classId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
