-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 10:08 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwordHash` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `imie`, `nazwisko`, `email`, `passwordHash`) VALUES
(4, 'Janek', 'Snopek', 'jandas@onet.pl', '$argon2i$v=19$m=65536,t=4,p=1$OHliV3N1RmZvNnd2T0dXbw$E56MSvIKJ80xtxrjN+9dVkUqAPgwNXav78VBgh43MP0'),
(5, 'marek', 'romper', 'maraspifko@pl.pl', '$argon2i$v=19$m=65536,t=4,p=1$Y3M4UU02bWpjNlh4WmkxYQ$QEDUpW4MrsnhUGjay5SYnb19Ys8MafqayHoN3m9WdYU'),
(7, 'Pifko', 'Niemozna', 'pifkonietutaj@pl.pl', '$argon2i$v=19$m=65536,t=4,p=1$eGE2ak5RVGk3UnBhYVF1Tw$t5r/Zrzi5hba6j+7zGNZysuhNLq8pLJuPg62A40w0VE'),
(8, 'Oski', 'Kloski', 'Kloski@wp.pl', '$argon2i$v=19$m=65536,t=4,p=1$VUNoTjFmMWw3dWdwVWdZeA$hxvsor7b0sryVKE5Wt6oG6PzLtcQhnTcozBI8p6TgZU'),
(9, 'Jolka', 'Polka', 'Polka12@pl.pl', '$argon2i$v=19$m=65536,t=4,p=1$RFM5b1U0d2VyNUs4cm51OQ$9wCPhKHe8w+obf/0jk2YD5/KzUa4gDz6e6Phrk0kJXk'),
(10, 'Dawid', 'Podsiadlo', 'podsiadlo@onet.pl', '$argon2i$v=19$m=65536,t=4,p=1$Ni9OLmhPSlJWNUhTbjcwOA$ZAA5/j8S+OjZ9ykAJWB+zYD5K86ER9w/+BR2hmVJN/0'),
(12, 'Anita', 'Kitka', 'kitka@pl.pl', '$argon2i$v=19$m=65536,t=4,p=1$YkcxRnJwZzZpQUdsNkkuNA$dlsMPagQ1zm+ZFT7hsEFee8wQB0GTGqsrkK/+K9E944'),
(13, 'Allah', 'Budda', 'Budda@pifko.pl', '$argon2i$v=19$m=65536,t=4,p=1$WHRJWThpQUlrR2w2eGp4SA$rMQOFf5vvUxr4CPdgBgy501gDvP2jBTeUfFhf5ee8lE'),
(14, 'Kortez', 'Kortez', 'Kortez@piosenka.pl', '$argon2i$v=19$m=65536,t=4,p=1$enpOTUk3aFkwQWxUSXgzTw$+vvrZpvUtQxJLIY+O13t2gk7ZkQrn6u0CH3kgcWoGs0'),
(15, 'Pawelek ', 'Adwokat', 'Adwokat@biuro.pl', '$argon2i$v=19$m=65536,t=4,p=1$UUJFRHBJTmJTTnl0VkJ5ag$Hta20Jhb7gRxEUujvFre5dLul98l5UADDGrnNmF/Bho');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
