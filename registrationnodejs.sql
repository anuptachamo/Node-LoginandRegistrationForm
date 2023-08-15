-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2023 at 03:52 PM
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
-- Database: `registrationnodejs`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'anup', 'anjanatachamo@gmail.com', 'aaaa', '2023-08-13 15:57:47', '2023-08-13 15:57:47'),
(2, 'aa', 'anup.tachamo12@gmail.com', '$2a$10$DNcL.j1uIKcCjFoE17KMzu17jDjZEHte5H5.3lrvW39gk9xPBqqW6', '2023-08-13 16:05:57', '2023-08-13 16:05:57'),
(3, 'qqq', 'anooptachhaamoo@gmail.com', '$2a$10$HRI4djcshu2E4ce45TdUZOWdZ3hdY0snh9dUUp/n5ax8dqCxZBut6', '2023-08-13 17:17:22', '2023-08-13 17:17:22'),
(4, 'test1', 'yamansanda@gmail.com', '$2a$10$zoLxXplCP.vCbVKxGHuD0eRbraAKHKVRAPuWcFeZxE5yhFuUvkjn6', '2023-08-14 15:38:31', '2023-08-14 15:38:31'),
(5, 'test2', 'anuptachamo@gmail.com', '$2a$10$y3tBtgPzcuEWl/ZFesRnROk12FRpqtzEAG1Hzn/vJF4fKDJjQHg16', '2023-08-14 16:03:29', '2023-08-14 16:03:29'),
(6, 'test3', 'anooptachhaamoo@gmail.com', '$2a$10$Xda6e0eAWEe7fgTzg1pwbeCkrl13kRntd1YHe4tft569L/SfAeyGy', '2023-08-14 16:05:47', '2023-08-14 16:05:47'),
(7, 'test4', 'anup.tachamo12@gmail.com', '$2a$10$CJO/0urgecTD6t37lv7rweaVUCVsIY2G6j5S4fS52bU42GUkiE43q', '2023-08-14 16:08:49', '2023-08-14 16:08:49'),
(8, 'test5', 'blogbygeeks@gmail.com', '$2a$10$yRNpnCgJbd2AopbQQ7q96O1VKxN0DhmS/DHSVeL8vMiuNrA33SXXC', '2023-08-14 16:20:03', '2023-08-14 16:20:03'),
(9, 'qq', 'qqq@gmail.com', '$2a$10$3jwAfbojdJWdCxrAFjdjfOpqD6kIpgTCtpHmpppjdwbw2LyR8NFIa', '2023-08-15 03:43:45', '2023-08-15 03:43:45'),
(10, 'test', 'test@gmail.com', '$2a$10$HPt7hC6ugHOmlRz8Wctc2udWmUh.SQHouNZZj3P31xjbT5FzuY6ZK', '2023-08-15 04:36:15', '2023-08-15 04:36:15'),
(11, 'qqqq', 'qq@gmail.com', '$2a$10$GI1HVsluYMpq2E2IZdoGO.FgQ7/JrIvbP2luVAPbISr6YOsAQ/ztu', '2023-08-15 12:19:09', '2023-08-15 12:19:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
