-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2026 at 11:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kantin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `id_penjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama_produk`, `harga`, `stok`, `kategori`, `gambar`, `id_penjual`) VALUES
(3, 'Cendol', 5000, 0, 'minuman', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Kampung_Paya_Jaras_Tengah%2C_Selangor_20250112_111330.jpg/500px-Kampung_Paya_Jaras_Tengah%2C_Selangor_20250112_111330.jpg', 2),
(4, 'Nasi Uduk', 13000, 1, 'makanan', 'https://asset.kompas.com/crops/cnjJ8a2_lEamvP1OkUClN1Oi0Dg=/100x67:900x600/1200x800/data/photo/2021/02/21/603203834f00f.jpg', 2),
(6, 'nasi padang mantap ', 15000, 6, 'makanan', 'https://awsimages.detik.net.id/community/media/visual/2020/07/06/nasi-padang.jpeg?w=600&q=90', 6),
(7, 'air keran', 1000, 996, 'minuman', 'https://pennyu.co.id/wp-content/uploads/2022/12/inilah-4-bahan-sederhana-untuk-membersihkan-keran-air-berkarat.jpg', 6),
(8, 'ayam goyek', 10000, 0, 'makanan', 'https://goassets.go-jek.com/s4/gofood/o3Ib4sovKOj7TvqssIE8.png', 6),
(9, 'es batu', 1000, 96, 'dessert', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTomL0s7PrwTLkntpRIwmaL3HwZ0hqDddyQ69j_q2XATSVsnhOOZXQy9xmthT7NcaGWY5RC7ESC-_nfIU8NK8MKLKZWDz6osQnIgPb1K2U&s=10', 6),
(10, 'donat', 10000, 0, 'dessert', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQynhHYE-6Bvkben6co_6rkFVh4Nt0fI8SCZjwQsF3JtzTF29-uEY3-a4VM7tv7qVs3Qa-M5513PnEKOLmH_at4rdK36jyggTydVzTKMow&s=10', 2),
(11, 'tomat', 10000, 21, 'makanan', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXym3ushtrUzDog2eQQCb1d0mt44nrEeIt4s5aaKhocPR1ntj3qShtlxfYJbum4dwLmy9ElX3ssSdthp7pUOu0MfeP5TBIq3QjVrOQM60&s=10', 6),
(12, 'nasi goreng 1', 15000, 10, 'makanan', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzOOk12nbnRanFOWv20tG_M90qnGv1IhzNNwsQktELr8RZzwd4uK3IulRPxyuaNWNlBJqS3Rnkp2sEteFBG2rIUkmOqs5KhUzdsJ_Gbzc&s=10', 6);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `id_penjual` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `status` enum('menunggu','diproses','selesai','dibatalkan','ditolak') DEFAULT 'menunggu',
  `detail_item` text DEFAULT NULL,
  `id_penjual` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `id_pembeli`, `total_harga`, `status`, `detail_item`, `id_penjual`, `id_menu`, `createdAt`, `updatedAt`) VALUES
(34, 5, 26000, 'selesai', 'Nasi Uduk (2)', 2, NULL, '2026-05-24 20:25:09', '2026-05-24 20:25:09'),
(35, 5, 90000, 'selesai', 'nasi padang gacor (6)', 6, NULL, '2026-05-24 20:25:09', '2026-05-24 20:25:09'),
(36, 5, 15000, 'selesai', 'nasi padang gacor (1)', 6, NULL, '2026-05-24 20:25:09', '2026-05-24 20:25:09'),
(37, 5, 15000, 'selesai', 'nasi padang gacor (1)', 6, NULL, '2026-05-24 20:25:09', '2026-05-24 20:25:09'),
(43, 5, 15000, 'selesai', 'nasi padang gacor (1)', 6, NULL, '2026-05-24 20:25:09', '2026-05-24 20:25:09'),
(44, 5, 15000, 'selesai', 'nasi padang gacor (1)', 6, NULL, '2026-05-24 20:25:09', '2026-05-24 20:25:09'),
(45, 5, 60000, 'selesai', 'nasi padang gacor (4)', 6, NULL, '2026-05-24 20:25:09', '2026-05-24 20:25:09'),
(46, 5, 90000, 'selesai', 'nasi padang gacor (6)', 6, NULL, '2026-05-24 20:25:09', '2026-05-24 20:25:09'),
(47, 5, 30000, 'dibatalkan', 'Cendol (6)', 2, NULL, '2026-05-24 20:25:09', '2026-05-24 12:31:30'),
(48, 5, 1000, 'dibatalkan', 'air keran (1)', 6, NULL, '2026-05-24 12:25:55', '2026-05-24 12:31:35'),
(49, 5, 1000, 'selesai', 'air keran (1)', 6, NULL, '2026-05-24 12:25:58', '2026-05-24 12:28:25'),
(50, 5, 1000, 'dibatalkan', 'es batu (1)', 6, NULL, '2026-05-24 12:26:00', '2026-05-24 12:26:15'),
(51, 5, 1000, 'ditolak', 'air keran (1)', 6, NULL, '2026-06-01 02:40:09', '2026-06-01 02:40:53'),
(52, 5, 1000, 'selesai', 'es batu (1)', 6, NULL, '2026-06-01 02:40:26', '2026-06-01 02:40:48'),
(53, 5, 13000, 'dibatalkan', 'Nasi Uduk (1)', 2, NULL, '2026-06-08 08:21:38', '2026-06-08 08:23:13'),
(54, 5, 15000, 'selesai', 'nasi padang mantap  (1)', 6, 6, '2026-06-08 08:22:19', '2026-06-08 08:22:36'),
(55, 5, 15000, 'selesai', 'nasi padang mantap  (1)', 6, 6, '2026-06-08 09:33:30', '2026-06-08 09:34:00'),
(56, 5, 1000, 'selesai', 'air keran (1)', 6, 7, '2026-06-08 09:33:33', '2026-06-08 09:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `komentar` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `id_pesanan`, `id_menu`, `id_pembeli`, `rating`, `komentar`, `createdAt`, `updatedAt`) VALUES
(9, 54, 6, 5, 5, 'ok\n', '2026-06-08 08:37:50', '2026-06-08 08:37:50'),
(10, 56, 7, 5, 1, 'basi\n', '2026-06-08 09:34:29', '2026-06-08 09:34:29'),
(11, 55, 6, 5, 2, 'busuk', '2026-06-08 09:34:35', '2026-06-08 09:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `topup_requests`
--

CREATE TABLE `topup_requests` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status` varchar(255) DEFAULT 'menunggu',
  `tipe` varchar(255) DEFAULT 'topup_saldo',
  `bukti` text DEFAULT NULL,
  `catatan_admin` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topup_requests`
--

INSERT INTO `topup_requests` (`id`, `id_user`, `jumlah`, `status`, `tipe`, `bukti`, `catatan_admin`, `createdAt`, `updatedAt`) VALUES
(1, 5, 1000000, 'disetujui', 'topup_saldo', NULL, 'mantap', '2026-05-08 10:30:55', '2026-05-08 10:31:27'),
(2, 6, 10000, 'disetujui', 'tarik_saldo', NULL, '', '2026-05-08 10:33:25', '2026-05-08 10:34:12'),
(3, 6, 1, 'disetujui', 'tarik_saldo', NULL, 'Disetujui oleh admin', '2026-05-24 12:25:43', '2026-05-24 12:29:00'),
(4, 5, 1, 'ditolak', 'topup_saldo', NULL, 'Ditolak oleh admin', '2026-05-24 12:26:23', '2026-05-24 12:28:57'),
(5, 5, 500000, 'menunggu', 'topup_saldo', NULL, NULL, '2026-06-04 06:39:05', '2026-06-04 06:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `saldo` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expires` datetime DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `status`, `saldo`, `email`, `reset_token`, `reset_token_expires`, `refresh_token`) VALUES
(1, 'admin1', 'admin123', 'admin', 'Aktif', 0, NULL, NULL, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzgwNjE3NzU4LCJleHAiOjE3ODEyMjI1NTh9.517Y7Yj-WaLgZ4o0TrfYZ4YlEj_c9xUpzsNxeqgBHFw'),
(2, 'free', '123', 'penjual', 'Aktif', 0, NULL, NULL, NULL, NULL),
(3, 'buy', '123', 'pembeli', 'Aktif', 47345, NULL, NULL, NULL, NULL),
(4, 'pembeli', '123', 'pembeli', 'Aktif', 83000, NULL, NULL, NULL, NULL),
(5, 'aqua', 'aqua', 'pembeli', 'Aktif', 997000, 'aquarius@gmail.com', NULL, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiaWF0IjoxNzgwOTExMjU2LCJleHAiOjE3ODE1MTYwNTZ9.g-_Q8bzGKn2qa_Bv8Q_Z-EUVHni3er9_oHTXtxcmBc8'),
(6, 'aqua1', 'aqua1', 'penjual', 'Aktif', 202999, 'aqua1@gmail.com', NULL, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiaWF0IjoxNzgwOTExMjMyLCJleHAiOjE3ODE1MTYwMzJ9.txIz8EBe8KHZBX7Jdcy9-SyTTDJEOB7UJOH-YC1MqvE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penjual` (`id_penjual`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penjual` (`id_penjual`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pembeli` (`id_pembeli`),
  ADD KEY `id_penjual` (`id_penjual`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pesanan` (`id_pesanan`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- Indexes for table `topup_requests`
--
ALTER TABLE `topup_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `topup_requests`
--
ALTER TABLE `topup_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_penjual`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`id_penjual`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_10` FOREIGN KEY (`id_pembeli`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_11` FOREIGN KEY (`id_penjual`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_12` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_14` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_15` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `reviews_ibfk_16` FOREIGN KEY (`id_pembeli`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `topup_requests`
--
ALTER TABLE `topup_requests`
  ADD CONSTRAINT `topup_requests_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
