-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2021 at 04:28 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riafy`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nse_stocks`
--

CREATE TABLE `nse_stocks` (
  `slno` int(12) UNSIGNED NOT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_market_price` decimal(15,5) NOT NULL,
  `market_cap` decimal(15,5) NOT NULL,
  `stock_pe` decimal(15,5) NOT NULL,
  `divident_yield` decimal(15,5) NOT NULL,
  `roce` decimal(15,5) NOT NULL,
  `roe_previous_annum` decimal(15,5) NOT NULL,
  `debt_to_equity` decimal(15,5) NOT NULL,
  `eps` decimal(15,5) NOT NULL,
  `reserves` decimal(15,5) NOT NULL,
  `debt` decimal(15,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nse_stocks`
--

INSERT INTO `nse_stocks` (`slno`, `name`, `current_market_price`, `market_cap`, `stock_pe`, `divident_yield`, `roce`, `roe_previous_annum`, `debt_to_equity`, `eps`, `reserves`, `debt`) VALUES
(1, 'Bhansali Engg.', '158.25000', '2625.46000', '7.86000', '0.63000', '86.18000', '20.21000', '0.00000', '20.13000', '664.76000', '0.00000'),
(2, 'Coal India', '147.45000', '90869.43000', '7.13000', '8.48000', '73.08000', '74.90000', '0.13000', '20.69000', '30920.81000', '4808.98000'),
(3, 'IOL Chemicals', '617.15000', '3623.01000', '7.88000', '0.65000', '68.87000', '69.54000', '0.02000', '78.78000', '1036.08000', '24.55000'),
(4, 'Dolat Investment', '72.50000', '1276.00000', '8.70000', '0.21000', '59.64000', '38.37000', '0.31000', '8.34000', '346.11000', '114.32000'),
(5, 'NDTV', '79.80000', '514.51000', '7.26000', '0.00000', '52.92000', '27.17000', '0.45000', '11.00000', '125.88000', '68.27000'),
(6, 'Balmer Law. Inv.', '480.25000', '1066.16000', '12.57000', '7.81000', '49.81000', '48.39000', '0.00000', '38.21000', '153.22000', '0.00000'),
(7, 'Ebixcash World', '681.25000', '758.09000', '14.63000', '0.00000', '43.76000', '-1.04000', '0.20000', '46.58000', '156.64000', '32.81000'),
(8, 'Mangalam Organic', '706.50000', '605.08000', '8.79000', '0.14000', '43.65000', '78.90000', '0.00000', '75.66000', '180.64000', '0.47000'),
(9, 'INEOS Styrolut.', '1321.75000', '2324.96000', '8.30000', '0.00000', '43.41000', '4.27000', '0.09000', '159.35000', '871.19000', '78.25000'),
(10, 'Expleo Solutions', '620.45000', '636.12000', '12.61000', '0.00000', '39.24000', '27.41000', '0.00000', '49.20000', '191.61000', '0.00000'),
(11, 'Sh. Jagdamba Pol', '637.65000', '558.45000', '13.65000', '0.04000', '38.30000', '34.66000', '0.28000', '46.71000', '131.90000', '37.21000'),
(12, 'Godawari Power', '955.90000', '3368.23000', '5.28000', '0.52000', '37.04000', '13.65000', '0.42000', '181.17000', '2001.48000', '852.45000'),
(13, 'Cigniti Tech.', '422.90000', '1184.97000', '11.25000', '0.59000', '36.36000', '58.18000', '0.12000', '37.60000', '344.33000', '45.67000'),
(14, 'Kirl. Ferrous', '245.20000', '3392.94000', '11.23000', '0.82000', '34.58000', '16.36000', '0.21000', '21.84000', '930.20000', '213.83000'),
(15, 'Rites', '246.70000', '5928.25000', '13.67000', '6.49000', '34.27000', '20.25000', '0.01000', '17.51000', '2451.95000', '33.48000'),
(16, 'Guj.St.Petronet', '272.05000', '15349.37000', '9.76000', '0.74000', '34.25000', '35.23000', '0.37000', '27.88000', '4926.22000', '2037.96000'),
(17, 'Ester Industries', '143.50000', '1196.70000', '8.42000', '1.74000', '33.27000', '27.52000', '0.33000', '17.04000', '474.91000', '172.54000'),
(18, 'Anjani Portland', '305.10000', '771.47000', '9.08000', '1.64000', '32.69000', '15.65000', '0.01000', '33.61000', '321.02000', '2.80000'),
(19, 'Venky\'s (India)', '2298.75000', '3238.33000', '12.10000', '0.00000', '32.05000', '-3.23000', '0.16000', '190.06000', '1090.33000', '177.82000'),
(20, 'Heritage Foods', '341.05000', '1582.40000', '10.61000', '0.73000', '31.70000', '-25.44000', '0.06000', '32.16000', '572.63000', '35.98000'),
(21, 'SIS', '393.80000', '5844.57000', '10.17000', '0.51000', '31.66000', '17.09000', '0.64000', '24.64000', '1756.61000', '1164.56000'),
(22, 'GTPL Hathway', '146.40000', '1646.46000', '8.75000', '2.05000', '31.53000', '16.50000', '0.16000', '16.73000', '767.67000', '140.96000'),
(23, 'Welspun Corp', '144.75000', '3777.24000', '7.02000', '7.25000', '29.60000', '-1.53000', '0.11000', '20.64000', '3256.75000', '365.75000'),
(24, 'I G Petrochems', '598.80000', '1844.00000', '9.78000', '0.33000', '29.58000', '3.14000', '0.15000', '61.08000', '791.20000', '125.94000'),
(25, 'Geojit Fin. Ser.', '68.00000', '1621.07000', '13.16000', '2.21000', '29.12000', '9.65000', '0.06000', '5.17000', '568.14000', '36.47000'),
(26, 'Sasken Technol.', '971.80000', '1462.64000', '12.77000', '3.09000', '28.84000', '13.22000', '0.00000', '76.11000', '549.50000', '0.00000'),
(27, 'Engineers India', '84.15000', '4729.59000', '13.76000', '6.12000', '28.78000', '15.73000', '0.00000', '5.44000', '2119.81000', '3.57000'),
(28, 'Petronet LNG', '236.20000', '35430.00000', '13.25000', '5.29000', '28.14000', '22.26000', '0.28000', '17.83000', '9990.19000', '3218.22000'),
(29, 'Saksoft', '508.40000', '533.31000', '11.74000', '0.89000', '26.35000', '20.16000', '0.14000', '43.32000', '196.24000', '28.46000'),
(30, 'Polyplex Corpn', '1187.20000', '3726.91000', '7.28000', '12.38000', '26.30000', '8.67000', '0.25000', '163.04000', '2996.69000', '758.00000');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sharon P Sabu', 'sharongraces1992@gmail.com', '2021-07-17 02:34:32', '$2y$10$QHtB0d7UYPIbCc3PzA2TbO7N/WbKipAyzicTa1NkQbS5SkvJZtfjC', NULL, '2021-07-16 21:04:03', '2021-07-16 21:04:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nse_stocks`
--
ALTER TABLE `nse_stocks`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nse_stocks`
--
ALTER TABLE `nse_stocks`
  MODIFY `slno` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
