-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2024 at 06:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_player`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Unforgettable ALBUM ', 9, 1, 'assets/images/artwork/Unforgettable.jpg'),
(5, 'Desi Kalakaar ALBUM', 5, 1, 'assets/images/artwork/Desi Kalakaar.jpg'),
(6, 'Coco', 6, 3, 'assets/images/artwork/Coco.jpg'),
(7, 'Nakhre', 7, 3, 'assets/images/artwork/Nakhre.jpg'),
(8, 'Aajkal', 8, 3, 'assets/images/artwork/Aajkal.jpg'),
(9, 'On My Way', 9, 3, 'assets/images/artwork/On My Way.jpg'),
(10, 'Drama', 10, 3, 'assets/images/artwork/Drama.jpg'),
(11, 'Candy Shop', 11, 2, 'assets/images/artwork/Candy Shop.jpg'),
(12, 'Woh Lamhe', 12, 1, 'assets/images/artwork/Woh Lamhe.jpg'),
(13, 'Phir Mohabbat', 13, 1, 'assets/images/artwork/Phir Mohabbat.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(5, 'Yo Yo Honey Singh'),
(6, 'DRV , Darcy'),
(7, 'Satyum'),
(8, 'Ikka'),
(9, 'Imran Khan'),
(10, 'Ghanashyam'),
(11, '50Cent'),
(12, 'Atif Aslam'),
(13, 'Emraan Hashmi');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rap'),
(2, 'Pop'),
(3, 'R&B/Soul');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Desi Kalakaar', 5, 5, 1, '4:18', 'assets/music/Desi Kalakaar.mp3', 4, 47),
(2, 'Love Dose', 5, 5, 1, '3:48', 'assets/music/Love Dose.mp3', 4, 47),
(3, 'One Thousand Miles', 5, 5, 1, '4:47', 'assets/music/One Thousand Miles.mp3', 4, 47),
(4, 'Stardom', 5, 5, 1, '3:47', 'assets/music/Stardom.mp3', 4, 47),
(5, 'IM Your Dj Tonight', 5, 5, 1, '4:41', 'assets/music/IM Your Dj Tonight.mp3', 4, 47),
(6, 'Daftar Ki Girl', 5, 5, 1, '3:20', 'assets/music/Daftar Ki Girl.mp3', 4, 47),
(7, 'Chal Mere Ghar', 5, 5, 1, '2:38', 'assets/music/Chal Mere Ghar.mp3', 4, 47),
(8, 'Coco', 6, 6, 3, '3:02', 'assets/music/Coco.mp3', 4, 47),
(9, 'Nakhre', 7, 7, 3, '2:33', 'assets/music/Nakhre.mp3', 4, 47),
(10, 'Aajkal', 8, 8, 3, '3:27', 'assets/music/Aajkal.mp3', 4, 46),
(11, 'On My Way', 9, 9, 3, '3:31', 'assets/music/On My Way.mp3', 4, 45),
(12, 'Drama', 10, 10, 3, '0:52', 'assets/music/Drama.wav', 4, 51),
(13, 'Candy Shop', 11, 11, 3, '3:59', 'assets/music/Candy Shop.mp3', 4, 51),
(15, 'Phir Mohabbat', 13, 13, 1, '5:31', 'assets/music/Phir Mohabbat.mp3', 4, 51),
(16, 'Woh Lamhe', 12, 12, 1, '5:50', 'assets/music/Woh Lamhe.mp3', 4, 51),
(17, 'Amplifier', 9, 1, 1, '3:52', 'assets/music/Amplifier.mp3', 1, 47),
(18, 'Aaja We Mahiya', 9, 1, 1, '3:52', 'assets/music/Aaja We Mahiya.mp3', 1, 47),
(19, 'Ni Nachleh', 9, 1, 1, '3:35', 'assets/music/Ni Nachleh.mp3', 1, 47),
(20, 'Bewafa', 9, 1, 1, '3:44', 'assets/music/Bewafa.mp3', 1, 47),
(21, 'Pata Chalgea', 9, 1, 1, '4:45', 'assets/music/Pata Chalgea.mp3', 1, 47);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(0, 'ghanashyam_auti', 'Ghanashyam', 'Auti', 'Gnauti79@gmail.com', '8664dc82e2060cc084ee3ec78de4afb6', '2024-01-26 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
