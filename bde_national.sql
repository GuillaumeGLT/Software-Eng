-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 02 jan. 2023 à 18:55
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
-- Base de données : `bde_national`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `surname` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `password`, `status`, `createdAt`, `updatedAt`) VALUES
(7, 'MANFOUO', 'fredy', 'fredymanfouo@gmail.com', '7a2edabf11ff0e3335aaaf2f31bf145e4967c7f3b3b163282b0da991eae8a573', 1, '2022-12-06 19:17:37', '2022-12-06 19:17:37'),
(8, 'Thessa', 'Eric', 'Thessa.eric@gmail.com', '7a2edabf11ff0e3335aaaf2f31bf145e4967c7f3b3b163282b0da991eae8a573', 0, '2022-12-07 09:45:58', '2022-12-07 09:45:58'),
(10, 'Theophile', 'nelson', 'theophile.nelson@gmail.com', 'bd86421ff409c4bd4173050c44d520c2bc88310ff4a6f9c842739da14112fb60', 0, '2022-12-07 09:59:42', '2022-12-07 09:59:42'),
(11, 'Theophile', 'nelson', 'theophilenelson@gmail.com', 'bd86421ff409c4bd4173050c44d520c2bc88310ff4a6f9c842739da14112fb60', 0, '2022-12-07 10:00:31', '2022-12-07 10:00:31'),
(12, 'Gallet', 'guillaume', 'guillaume.gallet@gmail.com', '9cc2802587c1d4d1c45f9f2f1aae60d2c492047d3fcffebdec534712a8cc080a', 0, '2022-12-07 20:13:09', '2022-12-07 20:13:09'),
(13, 'garnil', 'victoria', 'victoriagarnil@gmail.com', '7a2edabf11ff0e3335aaaf2f31bf145e4967c7f3b3b163282b0da991eae8a573', 0, '2022-12-08 09:49:57', '2022-12-08 09:49:57'),
(14, 'garnil', 'victoria', 'victoria.garnil@gmail.com', '7a2edabf11ff0e3335aaaf2f31bf145e4967c7f3b3b163282b0da991eae8a573', 0, '2022-12-09 17:17:43', '2022-12-09 17:17:43');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
