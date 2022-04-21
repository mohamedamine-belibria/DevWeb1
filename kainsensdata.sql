-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 11:48 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kainsensdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(100) NOT NULL,
  `Title` varchar(1000) COLLATE latin1_bin NOT NULL,
  `Image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `HeaderImage` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Introduction` mediumtext COLLATE latin1_bin NOT NULL,
  `Description` text COLLATE latin1_bin NOT NULL,
  `LastMod` datetime NOT NULL DEFAULT current_timestamp(),
  `Language` varchar(2) COLLATE latin1_bin NOT NULL,
  `KeyWords` varchar(1000) COLLATE latin1_bin NOT NULL,
  `State` int(100) NOT NULL,
  `NumVisit` int(100) NOT NULL,
  `IdTheme` int(100) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdHost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `Title`, `Image`, `HeaderImage`, `Introduction`, `Description`, `LastMod`, `Language`, `KeyWords`, `State`, `NumVisit`, `IdTheme`, `IdUser`, `IdHost`) VALUES
(1, 'Ligula tristique quis risus', 'assets/img/photos/b4.jpg', 'assets/img/photos/b4.jpg', 'Mauris convallis non ligula non interdum. Gravida vulputate convallis tempus vestibulum cras imperdiet nun eu dolor.', 'Mauris convallis non ligula non interdum. Gravida vulputate convallis tempus vestibulum cras imperdiet nun eu dolor.', '2022-01-08 22:17:30', 'EN', 'Coding', 12, 100, 1, 1, 1),
(2, 'Nullam id dolor elit id nibh', 'assets/img/photos/b5.jpg', 'assets/img/photos/b5.jpg', 'Mauris convallis non ligula non interdum. Gravida vulputate convallis tempus vestibulum cras imperdiet nun eu dolor.', 'Mauris convallis non ligula non interdum. Gravida vulputate convallis tempus vestibulum cras imperdiet nun eu dolor.', '2022-01-08 22:48:06', 'EN', 'Workspace Article', 1, 99, 2, 1, 1),
(3, 'Ultricies fusce porta elit', 'assets/img/photos/b6.jpg', 'assets/img/photos/b6.jpg', 'Mauris convallis non ligula non interdum. Gravida vulputate convallis tempus vestibulum cras imperdiet nun eu dolor.', 'Mauris convallis non ligula non interdum. Gravida vulputate convallis tempus vestibulum cras imperdiet nun eu dolor.', '2022-01-08 22:48:06', 'EN', 'Article', 1, 17, 3, 1, 1),
(4, 'Morbi leo risus porta eget', 'assets/img/photos/', 'assets/img/photos/b4.jpg', 'Mauris convallis non ligula non interdum. Gravida vulputate convallis tempus vestibulum cras imperdiet nun eu dolor.', 'Mauris convallis non ligula non interdum. Gravida vulputate convallis tempus vestibulum cras imperdiet nun eu dolor.', '2022-01-08 22:51:26', 'EN', 'Article', 1, 1020, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `IdTheme` int(11) NOT NULL,
  `categorie` varchar(255) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`IdTheme`, `categorie`) VALUES
(1, 'Coding'),
(2, 'Workspace'),
(3, 'Meeting'),
(4, 'Business Tips');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdTheme` (`IdTheme`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`IdTheme`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`IdTheme`) REFERENCES `theme` (`IdTheme`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
