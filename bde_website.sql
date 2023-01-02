-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 02 jan. 2023 à 18:54
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bde_website`
--

-- --------------------------------------------------------

--
-- Structure de la table `contain`
--

CREATE TABLE `contain` (
  `Id` int(11) NOT NULL,
  `Id_Orders` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ideas`
--

CREATE TABLE `ideas` (
  `id` int(11) NOT NULL,
  `Activity` varchar(500) NOT NULL,
  `IDUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ideas`
--

INSERT INTO `ideas` (`id`, `Activity`, `IDUser`) VALUES
(1, 'Water Polo', 2),
(2, 'a basket ball match between students and teachers', 5),
(3, 'Monopoly', 8),
(4, 'Loup Garou', 12),
(5, 'LoupGarou', 8),
(6, 'Pc', 14),
(7, 'Ludo', 8);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `Price` int(11) NOT NULL,
  `Id_Users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`Id`, `Date`, `Price`, `Id_Users`) VALUES
(1, '2019-12-19 10:37:19', 10000, 2),
(2, '2019-12-19 12:10:18', 1500, 2),
(3, '2022-12-06 20:36:30', 1000, 7),
(4, '2022-12-07 21:25:56', 10, 7),
(5, '2022-12-08 09:59:44', 155, 8);

-- --------------------------------------------------------

--
-- Structure de la table `paniers`
--

CREATE TABLE `paniers` (
  `Id_Products` int(11) NOT NULL,
  `Id_Users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `paniers`
--

INSERT INTO `paniers` (`Id_Products`, `Id_Users`) VALUES
(3, 3),
(7, 3),
(43, 8),
(44, 7),
(45, 7),
(49, 14),
(53, 7),
(55, 14),
(56, 8),
(56, 13),
(58, 8),
(59, 14);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Description` varchar(50) COLLATE utf8_bin NOT NULL,
  `URLImage` varchar(50) COLLATE utf8_bin NOT NULL,
  `Category` varchar(50) COLLATE utf8_bin NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`Id`, `Name`, `Description`, `URLImage`, `Category`, `Price`, `Quantity`) VALUES
(41, 'monopoly', 'jeux de société', 'assets\\images\\produits\\Monopoly.jpeg', 'goodies', 25, 20),
(42, 'La bonne paye', 'jeux de société', 'assets\\images\\produits\\bonne-paie1.jpg', 'aliments', 30, 20),
(43, 'Catan', 'jeux de société', 'assets\\images\\produits\\catan.jpg', 'boissons', 15, 20),
(44, 'Cluedo', 'jeux de société', 'assets\\images\\produits\\Cluedojpg.jpg', 'goodies', 40, 20),
(45, 'dames', 'jeux de société', 'assets\\images\\produits\\dames.jpg', 'goodies', 40, 20),
(47, 'dominos', 'jeux de société', 'assets\\images\\produits\\dominos.jpeg', 'boissons', 25, 19),
(48, 'echecs', 'jeux de société', 'assets\\images\\produits\\echecs.jpg', 'aliments', 50, 19),
(49, 'Loupgarou', 'jeux de société', 'assets\\images\\produits\\loupgarou.jpg', 'aliments', 65, 20),
(50, 'Mastermind', 'jeux de société', 'assets\\images\\produits\\mastermind.jpg', 'boissons', 10, 20),
(51, 'millesbornes', 'jeux de société', 'assets\\images\\produits\\millesbornes.jpg', 'boissons', 20, 20),
(52, 'Oie', 'jeux de société', 'assets\\images\\produits\\oie.jpg', 'goodies', 25, 20),
(53, 'petit-chevaux', 'jeux de société', 'assets\\images\\produits\\petit-chevaux.jpg', 'aliments', 45, 20),
(54, 'puissance', 'jeux de société', 'assets\\images\\produits\\puissance.jpg', 'goodies', 70, 20),
(55, 'qui-est-ce.jpg', 'jeux de société', 'assets\\images\\produits\\qui-est-cee.jpg', 'boissons', 8, 20),
(56, 'risk', 'jeux de société', 'assets\\images\\produits\\risk.jpg', 'aliments', 5, 20),
(57, 'scrabble', 'jeux de société', 'assets\\images\\produits\\scrabble.jpg', 'aliments', 30, 20),
(58, 'triominos', 'jeux de société', 'assets\\images\\produits\\triominos.jpg', 'goodies', 120, 20),
(59, 'trivial', 'jeux de société', 'assets\\images\\produits\\trivial.jpg', 'boissons', 200, 20),
(60, 'uno', 'jeux de société', 'assets\\images\\produits\\uno.jpg', 'aliments', 80, 19),
(61, 'La bonne paye', 'jeux de société', 'assets\\images\\produits\\bonne-paie1.jpg', 'goodies', 65, 20),
(62, 'dames', 'jeux de société', 'assets\\images\\produits\\dames.jpg', 'aliments', 20, 20),
(63, 'La bonne paye', 'jeux de société', 'assets\\images\\produits\\bonne-paie1.jpg', 'boissons', 30, 20);

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

CREATE TABLE `votes` (
  `Id_Ideas` int(11) NOT NULL,
  `Id_Users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `votes`
--

INSERT INTO `votes` (`Id_Ideas`, `Id_Users`) VALUES
(1, 2),
(1, 5),
(1, 7),
(2, 5),
(3, 8),
(3, 12),
(4, 8),
(4, 12),
(5, 8),
(6, 14),
(7, 8);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contain`
--
ALTER TABLE `contain`
  ADD PRIMARY KEY (`Id`,`Id_Orders`),
  ADD KEY `Contain_Orders0_FK` (`Id_Orders`);

--
-- Index pour la table `ideas`
--
ALTER TABLE `ideas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Orders_Users_FK` (`Id_Users`);

--
-- Index pour la table `paniers`
--
ALTER TABLE `paniers`
  ADD PRIMARY KEY (`Id_Products`,`Id_Users`),
  ADD KEY `add_Users0_FK` (`Id_Users`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`Id_Ideas`,`Id_Users`),
  ADD KEY `vote_Users0_FK` (`Id_Users`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ideas`
--
ALTER TABLE `ideas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contain`
--
ALTER TABLE `contain`
  ADD CONSTRAINT `Contain_Orders0_FK` FOREIGN KEY (`Id_Orders`) REFERENCES `orders` (`Id`),
  ADD CONSTRAINT `Contain_Products_FK` FOREIGN KEY (`Id`) REFERENCES `products` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
