-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 19 Feb 2020 pada 23.43
-- Versi server: 5.6.47-cll-lve
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helc1968_cyanlaundry`
--
CREATE DATABASE IF NOT EXISTS `helc1968_cyanlaundry` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `helc1968_cyanlaundry`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email_id` varchar(75) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `last_login` varchar(100) NOT NULL,
  `ip_add` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `mobile`, `email_id`, `username`, `password`, `last_login`, `ip_add`) VALUES
(0, 'Laundry Administrator', '9897979897', 'buattubes@laundry.com', 'buattubes', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', ''),
(1, 'Laundry Administrator', '9897979897', 'laundryadmin@laundry.com', 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cloths`
--

CREATE TABLE `cloths` (
  `id` int(11) NOT NULL,
  `cloth_type` varchar(100) NOT NULL,
  `cloth_code` varchar(50) NOT NULL,
  `cloth_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cloths`
--

INSERT INTO `cloths` (`id`, `cloth_type`, `cloth_code`, `cloth_image`) VALUES
(1, 'Shirt', 'SHRT', ''),
(2, 'Pants', 'PANTS', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_order`
--

CREATE TABLE `customer_order` (
  `auto_id` int(11) NOT NULL,
  `invoice_no` varchar(15) NOT NULL,
  `order_date` date NOT NULL,
  `order_month` varchar(5) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `total_qty` int(3) NOT NULL,
  `discount` int(2) DEFAULT NULL,
  `service_tax` float(8,2) DEFAULT NULL,
  `total_paid` float(8,2) NOT NULL,
  `total_balance` float(8,2) NOT NULL,
  `delivery_date` varchar(15) DEFAULT NULL,
  `remarks` text NOT NULL,
  `amt_paidby` varchar(25) NOT NULL,
  `cheque_no` varchar(25) DEFAULT NULL,
  `cheque_date` varchar(25) DEFAULT NULL,
  `order_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer_order`
--

INSERT INTO `customer_order` (`auto_id`, `invoice_no`, `order_date`, `order_month`, `customer_id`, `total_qty`, `discount`, `service_tax`, `total_paid`, `total_balance`, `delivery_date`, `remarks`, `amt_paidby`, `cheque_no`, `cheque_date`, `order_status`) VALUES
(10, 'Fakhri', '2019-08-24', '', 'Fakhri', 3123, 0, 879797.00, 97979.00, 0.00, 'Sat Aug 31 2019', 'Coba', 'Bambang', NULL, NULL, 'Not Paid'),
(11, '82259', '2019-08-24', '', 'Fakhri', 10, 0, 2.00, 2.00, 0.00, 'Tue Aug 27 2019', 'paid contoh', 'Sultan', NULL, NULL, 'Paid'),
(12, '33415', '2020-02-02', '', 'Aa', 2, NULL, 1.00, 1000000.00, 0.00, NULL, 'shitr', 'Not Paid', NULL, NULL, 'Paid');

-- --------------------------------------------------------

--
-- Struktur dari tabel `delivery`
--

CREATE TABLE `delivery` (
  `id_deliv` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ambil1` varchar(100) DEFAULT NULL,
  `ambil2` varchar(100) DEFAULT NULL,
  `wa` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `delivery`
--

INSERT INTO `delivery` (`id_deliv`, `nama`, `alamat`, `tanggal`, `ambil1`, `ambil2`, `wa`) VALUES
(55, 'Sultan', 'Sukabirus', '2019-09-10 10:41:35', '10', '', '0853'),
(56, 'Tobet', 'sukabirus', '2019-09-15 13:00:03', '10', '', '082148822149'),
(57, 'Tobet', 'sukabirus', '2019-09-15 13:10:58', '10', '', '082148822149'),
(58, 'Utami', 'padang', '2019-10-18 06:52:58', '', '', '081287096766'),
(59, 'Fakhri', 'Sukabirus', '2019-10-18 06:59:52', '11', '', '081212389837'),
(60, 'Tobet', 'sukabirus', '2019-11-03 11:06:08', '10', '', '082148822149'),
(61, 'Tobet', 'sukabirus', '2019-11-03 11:06:55', '10', '', '082148822149'),
(62, 'Bambang', 'sukabirus', '2019-11-03 11:07:13', '10', '', '082148822149'),
(63, 'Budi', 'sukabirus', '2019-11-03 11:11:02', '10', '', '082148822149'),
(64, 'Budi', 'sukabirus', '2019-11-03 11:11:42', '10', '', '082148822149');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `join_date` varchar(15) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `birth_date` varchar(15) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `status` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `leave_date` varchar(15) NOT NULL,
  `last_login` varchar(50) NOT NULL,
  `salary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`emp_id`, `join_date`, `first_name`, `last_name`, `mobile`, `email_id`, `address`, `birth_date`, `gender`, `status`, `password`, `leave_date`, `last_login`, `salary`) VALUES
(1, '11-07-2017', 'demo', '435', '546546', 'demo@demo.com', '435435', '11-07-2017', 'male', 'enable', 'mm6Ge', '', '', ''),
(2, '23-08-2019', 'Sultan', 'Arif', '082148822149', 'sultan@gmail.com', 'Komp. Permata Buah Batu No. B-14', '23-08-2019', 'male', 'enable', 'zx3E6', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expenses`
--

CREATE TABLE `expenses` (
  `exp_id` int(11) NOT NULL,
  `exps_date` varchar(15) NOT NULL,
  `exp_payee_name` varchar(100) NOT NULL,
  `exp_type` varchar(100) NOT NULL,
  `exp_amt` float(8,2) NOT NULL,
  `exp_paidby` varchar(10) NOT NULL,
  `exp_chequeno` varchar(20) NOT NULL,
  `exp_cheque_date` varchar(15) NOT NULL,
  `exp_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `expense_type`
--

CREATE TABLE `expense_type` (
  `exps_id` int(11) NOT NULL,
  `exps_type` varchar(100) NOT NULL,
  `exps_code` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `expense_type`
--

INSERT INTO `expense_type` (`exps_id`, `exps_type`, `exps_code`) VALUES
(1, 'Parfum', 'parfum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `service_code` varchar(50) NOT NULL,
  `duration` int(11) NOT NULL,
  `price_kg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_code`, `duration`, `price_kg`) VALUES
(2, 'Express', 'express', 1, 200000),
(3, 'Reguler', 'reguler', 3, 10000),
(4, 'Super cepat', 'supercepat', 1, 25000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `join_date` varchar(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_login` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `join_date`, `first_name`, `last_name`, `address`, `email_id`, `phone`, `mobile`, `status`, `password`, `last_login`) VALUES
(1, '11-07-2017', 'Demo', 'Demo', 'dfsd', 'aasd@demo.com', '', '12345678', 'enable', 'demo', ''),
(2, '23-08-2019', 'Fakhri', 'Ramadhan', 'Komp. Permata Buah Batu No. B-14', 'fakhrikamar216@gmail.com', '', '082148822149', 'enable', 'DisTY', ''),
(3, '25-10-2019', 'Zayed', 'Iffat Mahdi', 'Bandung, dayeuhkolot, pa uweng no 08', 'zayediffatm12@gmail.com', '', '081369381238', 'enable', 'ggwp123', ''),
(4, '07-11-2019', 'Aa', 'Aa', 'JL. Adi Gladiol 20 Bumi Adipura 1', 'aaa@gmail.com', '', '081214702393', 'enable', '1234', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `cloths`
--
ALTER TABLE `cloths`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cloth_type` (`cloth_type`);

--
-- Indeks untuk tabel `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `order_id` (`invoice_no`);

--
-- Indeks untuk tabel `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id_deliv`);

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indeks untuk tabel `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indeks untuk tabel `expense_type`
--
ALTER TABLE `expense_type`
  ADD PRIMARY KEY (`exps_id`),
  ADD UNIQUE KEY `exps_type` (`exps_type`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_name` (`service_name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cloths`
--
ALTER TABLE `cloths`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id_deliv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `expenses`
--
ALTER TABLE `expenses`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `expense_type`
--
ALTER TABLE `expense_type`
  MODIFY `exps_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `helc1968_etransport`
--
CREATE DATABASE IF NOT EXISTS `helc1968_etransport` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `helc1968_etransport`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bus_master`
--

CREATE TABLE `bus_master` (
  `id` int(11) NOT NULL,
  `bus_name` varchar(255) NOT NULL,
  `bus_type` varchar(255) NOT NULL,
  `departure` time DEFAULT NULL,
  `total_time` float(10,2) DEFAULT NULL,
  `arrival` time DEFAULT NULL,
  `seat` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `bus_no` varchar(255) DEFAULT NULL,
  `bus_owner_name` varchar(255) NOT NULL,
  `owner_phone` bigint(11) NOT NULL,
  `permit_no` varchar(255) DEFAULT NULL,
  `owner_address` varchar(255) NOT NULL,
  `permit_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bus_master`
--

INSERT INTO `bus_master` (`id`, `bus_name`, `bus_type`, `departure`, `total_time`, `arrival`, `seat`, `price`, `bus_no`, `bus_owner_name`, `owner_phone`, `permit_no`, `owner_address`, `permit_type`) VALUES
(7, 'DAMRI', 'DAMRI', NULL, NULL, NULL, 50, NULL, NULL, 'DAMRI', 227800506, NULL, 'Soekarno-Hatta St No.787, Babakan Penghulu, Gedebage, Bandung City, West Java 40294', NULL),
(8, 'ANGKOT', 'ANGKOT', NULL, NULL, NULL, 7, NULL, NULL, 'DPC/DPU Organda Kota Bandung', 226023422, NULL, 'Jl. Jend. Sudirman No.561B, Kb. Jeruk, Kec. Andir, Kota Bandung, Jawa Barat 40181', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bus_timing`
--

CREATE TABLE `bus_timing` (
  `id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `place_master`
--

CREATE TABLE `place_master` (
  `id` int(11) NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `is_highway` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `place_master`
--

INSERT INTO `place_master` (`id`, `place_name`, `latitude`, `longitude`, `is_highway`) VALUES
(28, 'Terminal Cibaduyut', '-6.961624', '107.593861', 0),
(30, 'Riung bandung', '-6.949066', '107.683232', 0),
(31, 'Terminal caringin', '-6.946485', '107.588363', 0),
(32, 'Margahayu raya', '-6.946279', '107.662591', 0),
(33, 'Terminal Leuwipanjang', '-6.946416', '107.593272', 0),
(35, 'Gede bage', '-6.935538', '107.697169', 0),
(36, 'Bumi asri', '-6.932296', '107.550759', 0),
(38, 'Terminal kebon kalapa', '-6.927313', '107.605848', 0),
(40, 'Stasiun hall', '-6.915741', '107.602551', 0),
(42, 'Terminal ciroyom', '-6.913713', '107.587573', 0),
(45, 'Terminal cicaheum', '-6.899706', '107.655653', 0),
(47, 'Sadang serang', '-6.890925', '107.625032', 0),
(50, 'Dago', '-6.866693', '107.621184', 0),
(51, 'Ciumbeuleuit', '-6.863066', '107.604877', 0),
(52, 'Ledeng', '-6.858535', '107.595086', 0),
(53, 'Pasar Induk Caringin', '-6.943463', '107.582262', 0),
(54, 'Terminal dipatiukur', '-6.8975381', '107.6535578', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `route_master`
--

CREATE TABLE `route_master` (
  `id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `route_master`
--

INSERT INTO `route_master` (`id`, `bus_id`, `place_id`) VALUES
(3, 1, 20),
(4, 1, 21),
(5, 1, 22),
(6, 1, 23),
(7, 1, 24),
(8, 1, 25),
(9, 2, 22),
(10, 2, 23),
(11, 2, 24),
(12, 2, 25),
(13, 3, 1),
(14, 3, 2),
(15, 3, 3),
(16, 3, 4),
(17, 3, 5),
(18, 3, 6),
(19, 3, 7),
(20, 3, 8),
(21, 3, 9),
(22, 3, 10),
(23, 4, 20),
(24, 4, 21),
(25, 4, 22),
(26, 4, 23),
(27, 5, 1),
(28, 5, 2),
(29, 5, 3),
(30, 5, 4),
(31, 5, 5),
(32, 5, 6),
(33, 5, 7),
(34, 5, 8),
(35, 5, 9),
(36, 5, 10),
(37, 5, 11),
(38, 5, 12),
(39, 5, 13),
(40, 5, 14),
(41, 5, 15),
(42, 5, 16);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bus_master`
--
ALTER TABLE `bus_master`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bus_timing`
--
ALTER TABLE `bus_timing`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `place_master`
--
ALTER TABLE `place_master`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `route_master`
--
ALTER TABLE `route_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bus_master`
--
ALTER TABLE `bus_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `bus_timing`
--
ALTER TABLE `bus_timing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `place_master`
--
ALTER TABLE `place_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `route_master`
--
ALTER TABLE `route_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- Database: `helc1968_makanan`
--
CREATE DATABASE IF NOT EXISTS `helc1968_makanan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `helc1968_makanan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email_id` varchar(75) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `last_login` varchar(100) NOT NULL,
  `ip_add` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `mobile`, `email_id`, `username`, `password`, `last_login`, `ip_add`) VALUES
(0, 'Laundry Administrator', '9897979897', 'buattubes@laundry.com', 'buattubes', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', ''),
(1, 'Laundry Administrator', '9897979897', 'laundryadmin@laundry.com', 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chart`
--

CREATE TABLE `chart` (
  `id` int(11) NOT NULL,
  `id_product` int(10) NOT NULL,
  `nama_product` varchar(50) NOT NULL,
  `harga_product` int(20) NOT NULL,
  `kuantitas` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chart`
--

INSERT INTO `chart` (`id`, `id_product`, `nama_product`, `harga_product`, `kuantitas`) VALUES
(10, 15, 'Ayam Sambal Kemangi', 12000, 5),
(11, 17, 'Ayam Sambal Thaitea', 12000, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cloths`
--

CREATE TABLE `cloths` (
  `id` int(11) NOT NULL,
  `cloth_type` varchar(100) NOT NULL,
  `cloth_code` varchar(50) NOT NULL,
  `cloth_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cloths`
--

INSERT INTO `cloths` (`id`, `cloth_type`, `cloth_code`, `cloth_image`) VALUES
(1, 'Shirt', 'SHRT', ''),
(2, 'Pants', 'PANTS', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_order`
--

CREATE TABLE `customer_order` (
  `auto_id` int(11) NOT NULL,
  `invoice_no` varchar(15) NOT NULL,
  `order_date` date NOT NULL,
  `order_month` varchar(5) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `total_qty` int(3) NOT NULL,
  `discount` int(2) DEFAULT NULL,
  `service_tax` float(8,2) DEFAULT NULL,
  `total_paid` float(8,2) NOT NULL,
  `total_balance` float(8,2) NOT NULL,
  `delivery_date` varchar(15) DEFAULT NULL,
  `remarks` text NOT NULL,
  `amt_paidby` varchar(25) NOT NULL,
  `cheque_no` varchar(25) DEFAULT NULL,
  `cheque_date` varchar(25) DEFAULT NULL,
  `order_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer_order`
--

INSERT INTO `customer_order` (`auto_id`, `invoice_no`, `order_date`, `order_month`, `customer_id`, `total_qty`, `discount`, `service_tax`, `total_paid`, `total_balance`, `delivery_date`, `remarks`, `amt_paidby`, `cheque_no`, `cheque_date`, `order_status`) VALUES
(10, 'Fakhri', '2019-08-24', '', 'Fakhri', 3123, 0, 879797.00, 97979.00, 0.00, 'Sat Aug 31 2019', 'Coba', 'Bambang', NULL, NULL, 'Not Paid'),
(11, '82259', '2019-08-24', '', 'Fakhri', 10, 0, 2.00, 2.00, 0.00, 'Tue Aug 27 2019', 'paid contoh', 'Sultan', NULL, NULL, 'Paid');

-- --------------------------------------------------------

--
-- Struktur dari tabel `delivery`
--

CREATE TABLE `delivery` (
  `id_deliv` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ambil1` varchar(100) DEFAULT NULL,
  `ambil2` varchar(100) DEFAULT NULL,
  `wa` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `delivery`
--

INSERT INTO `delivery` (`id_deliv`, `nama`, `alamat`, `tanggal`, `ambil1`, `ambil2`, `wa`) VALUES
(54, 'Tobet', 'sukabirus', '2019-09-10 10:39:14', '10', '', '082148822149'),
(55, 'Sultan', 'Sukabirus', '2019-09-10 10:41:35', '10', '', '0853'),
(56, 'Tobet', 'sukabirus', '2019-09-15 13:00:03', '10', '', '082148822149'),
(57, 'Tobet', 'sukabirus', '2019-09-15 13:10:58', '10', '', '082148822149');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `join_date` varchar(15) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `birth_date` varchar(15) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `status` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `leave_date` varchar(15) NOT NULL,
  `last_login` varchar(50) NOT NULL,
  `salary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`emp_id`, `join_date`, `first_name`, `last_name`, `mobile`, `email_id`, `address`, `birth_date`, `gender`, `status`, `password`, `leave_date`, `last_login`, `salary`) VALUES
(1, '11-07-2017', 'demo', '435', '546546', 'demo@demo.com', '435435', '11-07-2017', 'male', 'enable', 'mm6Ge', '', '', ''),
(2, '23-08-2019', 'Sultan', 'Arif', '082148822149', 'sultan@gmail.com', 'Komp. Permata Buah Batu No. B-14', '23-08-2019', 'male', 'enable', 'zx3E6', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expenses`
--

CREATE TABLE `expenses` (
  `exp_id` int(11) NOT NULL,
  `exps_date` varchar(15) NOT NULL,
  `exp_payee_name` varchar(100) NOT NULL,
  `exp_type` varchar(100) NOT NULL,
  `exp_amt` float(8,2) NOT NULL,
  `exp_paidby` varchar(10) NOT NULL,
  `exp_chequeno` varchar(20) NOT NULL,
  `exp_cheque_date` varchar(15) NOT NULL,
  `exp_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `expense_type`
--

CREATE TABLE `expense_type` (
  `exps_id` int(11) NOT NULL,
  `exps_type` varchar(100) NOT NULL,
  `exps_code` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `service_code` varchar(50) NOT NULL,
  `duration` int(11) NOT NULL,
  `price_kg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_code`, `duration`, `price_kg`) VALUES
(2, 'Express', 'express', 1, 200000),
(3, 'Lambat', 'lambat', 3, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `produk_id` int(11) NOT NULL,
  `produk_nama` varchar(100) DEFAULT NULL,
  `produk_harga` double DEFAULT NULL,
  `produk_image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`produk_id`, `produk_nama`, `produk_harga`, `produk_image`) VALUES
(15, 'Ayam Sambal Kemangi', 12000, ''),
(16, 'Ayam Sambal Thaitea', 12000, ''),
(17, 'Ayam Sambal Thaitea', 12000, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `join_date` varchar(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_login` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `join_date`, `first_name`, `last_name`, `address`, `email_id`, `phone`, `mobile`, `status`, `password`, `last_login`) VALUES
(1, '11-07-2017', 'Demo', 'Demo', 'dfsd', 'aasd@demo.com', '', '12345678', 'enable', 'demo', ''),
(2, '23-08-2019', 'Fakhri', 'Ramadhan', 'Komp. Permata Buah Batu No. B-14', 'fakhrikamar216@gmail.com', '', '082148822149', 'enable', 'DisTY', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `chart`
--
ALTER TABLE `chart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cloths`
--
ALTER TABLE `cloths`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cloth_type` (`cloth_type`);

--
-- Indeks untuk tabel `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `order_id` (`invoice_no`);

--
-- Indeks untuk tabel `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id_deliv`);

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indeks untuk tabel `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indeks untuk tabel `expense_type`
--
ALTER TABLE `expense_type`
  ADD PRIMARY KEY (`exps_id`),
  ADD UNIQUE KEY `exps_type` (`exps_type`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_name` (`service_name`);

--
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chart`
--
ALTER TABLE `chart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `cloths`
--
ALTER TABLE `cloths`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id_deliv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `expenses`
--
ALTER TABLE `expenses`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `expense_type`
--
ALTER TABLE `expense_type`
  MODIFY `exps_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `helc1968_user`
--
CREATE DATABASE IF NOT EXISTS `helc1968_user` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `helc1968_user`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_tempat` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `website` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_tempat`, `nama`, `tempat`, `deskripsi`, `website`) VALUES
(1, 'Situ patenggang', 'Kota Bandung', 'Situ Patenggang atau Situ Patengan adalah suatu danau yang terletak di kawasan objek wisata alam Bandung Selatan, Jawa Barat, Indonesia, tepatnya di Ciwidey. Terletak di ketinggian 1600 meter di atas permukaan laut, danau ini memiliki pemandangan yang sangat eksotik. Situ patenggang juga memiliki pemandangan alam yang asri, karena disekitarnya terdapat hamparan kebun teh.\r\n\r\nLuas Situ Patenggang sekitar 45.000 hektar. Serta total luas cagar alamnya mencapai 123.077,15 hektar. Situ patenggang selalu menjadi pilihan wisatawan terutama bagi mereka yang baru pulang dari tempat wisata Kawah Putih. Jaraknya dari wisata kawah putih hanya sekitar 7 KM dan membutuhkan waktu sekitar 10 menit saja.', 'https://id.wikipedia.org/wiki/Situ_Patenggang'),
(2, 'Pantai Pasir Panjang', 'Singkawang', 'Pantai Pasir Panjang adalah obyek wisata alam berupa pantai yang berpasir putih dan panjang yang terletak di Kecamatan Tujuh Belas, Kota Singkawang, Kalimantan Barat. Pantai ini membentang sepanjang 3 kilometer, sehingga dinamakan pantai Pasir Panjang. Pantai ini memiliki pasir putih yang cantik dan ombak yang tenang. Pantai ini dapat dicapai dengan kendaraan selama 20 menit (17 km) dari pusat Kota Singkawang ke arah Kota Pontianak.[1] ', 'https://id.wikipedia.org/wiki/Pantai_Pasir_Panjang'),
(3, 'Nama Tempat 1', 'Lokasi 1', 'Deskripsi 1', 'Website 1'),
(4, 'Nama Tempat 2', 'Lokasi 2', 'Deskripsi 2', ''),
(5, 'Bukit Bintang', 'Jl. Ciwidey', 'Merupakan bukit bintang yang ada dibandung', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id_event` int(11) NOT NULL,
  `id_tempat` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat` varchar(1000) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `events`
--

INSERT INTO `events` (`id_event`, `id_tempat`, `nama`, `tempat`, `tanggal`, `deskripsi`) VALUES
(1, 1, 'Perang Bantal', 'Situ Patenggang', '2019-03-21', 'Perang bantal adalah salah satu permainan yang populer saat perayaan hari kemerdekaan Indonesia.\r\n\r\nDua orang pemain duduk di atas sebuah batang pohon yang diletakkan di atas air, bisa berupa sungai atau kolam. Pemain tersebut duduk berhadapan dan bersenjatakan bantal baku pukul sampai salah satu terjatuh ke dalam air. Yang tetap bertahan di atas dinyatakan sebagai pemenang.'),
(2, 2, 'Tahun baru', 'Singkawang', '2019-04-26', 'Perayaan tahun baru dimeriahkan oleh ustadz abdul somad'),
(3, 5, 'Event Musik Nusantara', 'Bukit Bintang', '2019-05-17', 'Merupakan event musik terbesar di Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laundry`
--

CREATE TABLE `laundry` (
  `id` int(11) NOT NULL,
  `nama_laundry` varchar(50) NOT NULL,
  `dbname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT 'helc1968_togu',
  `password` varchar(50) NOT NULL DEFAULT 'tugastechno'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laundry`
--

INSERT INTO `laundry` (`id`, `nama_laundry`, `dbname`, `username`, `password`) VALUES
(1, 'Yellow Laundry', 'helc1968_yellowlaundry', 'helc1968_togu', 'tugastechno'),
(2, 'Cyan Laundry', 'helc1968_cyanlaundry', 'helc1968_togu', 'tugastechno');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `fullname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`fullname`, `username`, `email`, `password`) VALUES
('aasd', 'asdasd', 'root', 'lll'),
('aasd', 'asdasd', 'root', 'abcd'),
('aasd', 'asdasd', 'fakhrikamar216@gmail', 'aaaaa'),
('aasd', '1234', 'fakhrikamar216@gmail.com', '1234'),
('Fakhri Ramadhan', 'fakhriramadhan', 'fakhrikamar216@gmail.com', 'pakri'),
('Fakhri Ramadhan', 'fakhriramadhan', 'fakhrikamar216@gmail.com', '1111'),
('tobet', 'tobet', 'tobet@tobet.com', 'tobat'),
('sultan arif m', 'sultanarifma', 'sultanarifma@gmail.com', '123'),
('Ilham Fannani', 'ilhamfannani', 'fannani690@gmail.com', 'ilhamelek09'),
('Fakhri', 'Fakhri', 'pakri@pakri.com', 'pakri'),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('leo', 'leo123', 'leo@Gmail.com', 'leo123'),
('Muhammad', 'Nazri', 'muhammadnazri@hellotogu.com', 'nazri1593572580'),
('Sultanarifma@gmail.c', 'Sultanarifma', 'sultanarifma@gmail.com', 'Selamat12'),
('Farhan Prasetia', 'kudakurap', 'abc@abc.com', '123456789'),
('Fikri Miftah Maulana', 'fikrimiftah', 'fikrimiftahm@gmail.com', '123456'),
('azkajulda', 'azkajulda', 'azkajulda@gmail.com', 'azkajulda10'),
('Thio Fauzi', 'thiofauzi', 'beebagi.id@gmail.com', '123456'),
('ghifari', 'ghifari', 'ghifari@test.com', '12345678'),
('Makan Nasi', 'NasiGoreng', 'nazritech@gmail.com', '123'),
('Retna Taqiyyah', 'retnataqiyyah', 'retnadiba@gmail.com', 'retna'),
('Lontong kari', 'makanbang', 'lontongkari@maiproyek.com', 'lontongkarienak'),
('Dendy Armandiaz Aziz', 'dendyaziz', 'dendy.aziz@gmail.com', 'dendydendy'),
('Muhammad Nazri', 'Nazri', 'm.nazri9032@gmail.com', 'nazri098'),
('Leo Dikkardo Sagala ', 'leosagala', 'sagalaleo7@gmail.com', 'Leosagala1'),
('admin', 'admin', 'admin@hellotogu.com', 'sinergibangunnegeri'),
('Rylie Bush', 'Rylie Bush', 'freddiencastle5522@gmail.com', 'Rylie Bush'),
('Soni Fajar Surya Gum', 'mustonie', 'mustonie@gmail.com', '123456'),
('AbQSjMLyRGBW', 'OmArchipRnKN', 'olabmaili@gmail.com', 'Eosf3vM0U'),
('12345', '12345', '12345', ''),
('12345', '12345', '12345', ''),
('fakhriramadhan@hello', 'fakhriramadhan@hello', 'fakhriramadhan@hellotogu.com', '12345'),
('fakhriramadhan@hello', 'fakhriramadhan@hello', 'fakhriramadhan@hellotogu.com', '12345'),
('aan.pro88@gmail.com', 'aan.pro88@gmail.com', 'aan.pro88@gmail.com', 'togu123'),
('ilhamfannani', 'ilhamfannani', 'ilhamfannani', 'ilhamelek09'),
('ilhamfannani', 'ilhamfannani', 'ilhamfannani', 'ilhamelek09'),
('fannani690@gmail.com', 'fannani690@gmail.com', 'fannani690@gmail.com', 'ilhamelek09'),
('sonifsg@btp.or.id', 'sonifsg@btp.or.id', 'sonifsg@btp.or.id', ''),
('fannani690@gmail.com', 'fannani690@gmail.com', 'fannani690@gmail.com', ''),
('fannani690@gmail.com', 'fannani690@gmail.com', 'fannani690@gmail.com', ''),
('stevendavis6085@gmai', 'stevendavis6085@gmai', 'stevendavis6085@gmail.com', '0H7srdy9j'),
('fannani690@gmail.com', 'fannani690@gmail.com', 'fannani690@gmail.com', ''),
('bungoustray80@gmail.', 'bungoustray80@gmail.', 'bungoustray80@gmail.com', ''),
('faathir.muhammad@gma', 'faathir.muhammad@gma', 'faathir.muhammad@gmail.com', ''),
('emerylong91@gmail.co', 'emerylong91@gmail.co', 'emerylong91@gmail.com', 'DTjs71IpaeQr!'),
('emerylong91@gmail.co', 'emerylong91@gmail.co', 'emerylong91@gmail.com', 'tawK03y8IonL!'),
('sonifsg@btp.or.id', 'sonifsg@btp.or.id', 'sonifsg@btp.or.id', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('krystalwagner.he.642', 'krystalwagner.he.642', 'krystalwagner.he.642375@supers', 'krystal wagner'),
('lenardhines0@gmail.c', 'lenardhines0@gmail.c', 'lenardhines0@gmail.com', 'TUw5XPDjpOQH!'),
('lenardhines0@gmail.c', 'lenardhines0@gmail.c', 'lenardhines0@gmail.com', '2KSsMBAjVGLl!'),
('averifrazier.sc.5346', 'averifrazier.sc.5346', 'averifrazier.sc.53463201@super', 'averi frazier'),
('laylavillarreal.sc.5', 'laylavillarreal.sc.5', 'laylavillarreal.sc.549605126@s', 'layla villarreal'),
('fannani690@gmail.com', 'fannani690@gmail.com', 'fannani690@gmail.com', ''),
('fannani690@gmail.com', 'fannani690@gmail.com', 'fannani690@gmail.com', ''),
('cleopatrastratan98@g', 'cleopatrastratan98@g', 'cleopatrastratan98@gmail,com', ''),
('raelynnballard.gm.33', 'raelynnballard.gm.33', 'raelynnballard.gm.335232236@gc', 'raelynn ballard');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_tempat`);

--
-- Indeks untuk tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id_event`);

--
-- Indeks untuk tabel `laundry`
--
ALTER TABLE `laundry`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `events`
--
ALTER TABLE `events`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `laundry`
--
ALTER TABLE `laundry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `helc1968_yellowlaundry`
--
CREATE DATABASE IF NOT EXISTS `helc1968_yellowlaundry` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `helc1968_yellowlaundry`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email_id` varchar(75) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `last_login` varchar(100) NOT NULL,
  `ip_add` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `mobile`, `email_id`, `username`, `password`, `last_login`, `ip_add`) VALUES
(0, 'Laundry Administrator', '9897979897', 'buattubes@laundry.com', 'buattubes', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', ''),
(1, 'Laundry Administrator', '9897979897', 'laundryadmin@laundry.com', 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cloths`
--

CREATE TABLE `cloths` (
  `id` int(11) NOT NULL,
  `cloth_type` varchar(100) NOT NULL,
  `cloth_code` varchar(50) NOT NULL,
  `cloth_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cloths`
--

INSERT INTO `cloths` (`id`, `cloth_type`, `cloth_code`, `cloth_image`) VALUES
(1, 'Shirt1', 'SHRT', ''),
(2, 'Pants', 'PANTS', ''),
(3, 'kaos', 'kaos', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_order`
--

CREATE TABLE `customer_order` (
  `auto_id` int(11) NOT NULL,
  `invoice_no` varchar(15) NOT NULL,
  `order_date` date NOT NULL,
  `order_month` varchar(5) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `total_qty` int(3) NOT NULL,
  `discount` int(2) DEFAULT NULL,
  `service_tax` float(8,2) DEFAULT NULL,
  `total_paid` float(8,2) NOT NULL,
  `total_balance` float(8,2) NOT NULL,
  `delivery_date` varchar(15) DEFAULT NULL,
  `remarks` text NOT NULL,
  `amt_paidby` varchar(25) NOT NULL,
  `cheque_no` varchar(25) DEFAULT NULL,
  `cheque_date` varchar(25) DEFAULT NULL,
  `order_status` varchar(10) NOT NULL,
  `process` varchar(20) NOT NULL DEFAULT 'waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer_order`
--

INSERT INTO `customer_order` (`auto_id`, `invoice_no`, `order_date`, `order_month`, `customer_id`, `total_qty`, `discount`, `service_tax`, `total_paid`, `total_balance`, `delivery_date`, `remarks`, `amt_paidby`, `cheque_no`, `cheque_date`, `order_status`, `process`) VALUES
(13, '72903', '2019-10-24', '', 'Fakhri', 10, NULL, 0.00, 0.00, 0.00, NULL, 'bisa nih', 'Not Paid', NULL, NULL, 'Not Paid', 'drying'),
(14, '28313', '2019-11-01', '', 'Dian', 10, NULL, 0.00, 1000000.00, 0.00, NULL, '123123', 'Sultan', NULL, NULL, 'Not Paid', 'ironing'),
(15, '62850', '2019-12-18', '', 'Ilham', 3, NULL, 0.00, 100000.00, 0.00, NULL, 'ok', 'Not Paid', NULL, NULL, 'Paid', 'drying');

-- --------------------------------------------------------

--
-- Struktur dari tabel `delivery`
--

CREATE TABLE `delivery` (
  `id_deliv` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ambil1` varchar(100) DEFAULT NULL,
  `ambil2` varchar(100) DEFAULT NULL,
  `wa` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `delivery`
--

INSERT INTO `delivery` (`id_deliv`, `nama`, `alamat`, `tanggal`, `ambil1`, `ambil2`, `wa`) VALUES
(51, 'Bambang', 'sukabirus', '2019-09-09 04:09:33', '10', '', '082148822149'),
(52, 'Tobet', 'sukabirus', '2019-09-09 04:11:14', '10', '', '082148822149'),
(53, 'Tobet', 'sukabirus', '2019-09-09 10:56:12', '10', '', '082148822149'),
(54, 'Tobet', 'sukabirus', '2019-09-10 10:39:14', '10', '', '082148822149'),
(55, 'Sultan', 'Sukabirus', '2019-09-10 10:41:35', '10', '', '0853'),
(56, 'Udin', 'PGA', '2019-09-15 12:41:27', '12.00', '13.00', '082148822149'),
(57, 'Tobet', 'sukabirus', '2019-09-15 13:12:15', '10', '', '082148822149'),
(58, 'Bambang', 'sukabirus', '2019-11-03 11:08:53', '10', '', '082148822149'),
(59, 'Budi', 'sukabirus', '2019-12-02 00:46:26', '10', '', '082148822149'),
(60, 'Bambang', 'sukabirus', '2019-12-02 02:29:42', '10', '', '082148822149'),
(61, 'Budi', 'sukabirus', '2019-12-02 02:31:25', '10', '', '082148822149'),
(62, 'Fakhri', 'sukabirus', '2019-12-10 05:36:48', '10', '', '082148822149');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `join_date` varchar(15) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `birth_date` varchar(15) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `status` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `leave_date` varchar(15) NOT NULL,
  `last_login` varchar(50) NOT NULL,
  `salary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`emp_id`, `join_date`, `first_name`, `last_name`, `mobile`, `email_id`, `address`, `birth_date`, `gender`, `status`, `password`, `leave_date`, `last_login`, `salary`) VALUES
(1, '11-07-2017', 'demo', '435', '546546', 'demo@demo.com', '435435', '11-07-2017', 'male', 'enable', 'mm6Ge', '', '', ''),
(2, '23-08-2019', 'Sultan', 'Arif', '082148822149', 'sultan@gmail.com', 'Komp. Permata Buah Batu No. B-14', '23-08-2019', 'male', 'enable', 'zx3E6', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expenses`
--

CREATE TABLE `expenses` (
  `exp_id` int(11) NOT NULL,
  `exps_date` varchar(15) NOT NULL,
  `exp_payee_name` varchar(100) NOT NULL,
  `exp_type` varchar(100) NOT NULL,
  `exp_amt` float(8,2) NOT NULL,
  `exp_paidby` varchar(10) NOT NULL,
  `exp_chequeno` varchar(20) NOT NULL,
  `exp_cheque_date` varchar(15) NOT NULL,
  `exp_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `expenses`
--

INSERT INTO `expenses` (`exp_id`, `exps_date`, `exp_payee_name`, `exp_type`, `exp_amt`, `exp_paidby`, `exp_chequeno`, `exp_cheque_date`, `exp_remarks`) VALUES
(1, '02-12-2019', 'Fakhri Ramadhan', 'Beli Sabun', 0.00, 'bycash', '1111', '02-12-2019', 'aaa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expense_type`
--

CREATE TABLE `expense_type` (
  `exps_id` int(11) NOT NULL,
  `exps_type` varchar(100) NOT NULL,
  `exps_code` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `expense_type`
--

INSERT INTO `expense_type` (`exps_id`, `exps_type`, `exps_code`) VALUES
(1, 'Beli Sabun', 'sabun');

-- --------------------------------------------------------

--
-- Struktur dari tabel `process`
--

CREATE TABLE `process` (
  `id` int(11) NOT NULL,
  `process_name` varchar(20) NOT NULL,
  `process_code` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `service_code` varchar(50) NOT NULL,
  `duration` int(11) NOT NULL,
  `price_kg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_code`, `duration`, `price_kg`) VALUES
(2, 'Express', 'express', 16, 200000),
(3, 'Lambat', 'lambat', 3, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `join_date` varchar(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_login` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `join_date`, `first_name`, `last_name`, `address`, `email_id`, `phone`, `mobile`, `status`, `password`, `last_login`) VALUES
(1, '11-07-2017', 'Demo', 'Demo', 'dfsd', 'aasd@demo.com', '', '12345678', 'enable', 'demo', ''),
(2, '23-08-2019', 'Fakhri', 'Ramadhan', 'Komp. Permata Buah Batu No. B-14', 'fakhrikamar216@gmail.com', '', '082148822149', 'enable', 'DisTY', ''),
(3, '25-10-2019', 'Andika', 'Triandhika', 'jl.terusan batununggal Rt.05 Rw.04', 'andikattb@gmail.com', '', '082245451235', 'enable', '12345', ''),
(4, '01-11-2019', 'Dian', 'Fadhilah', 'sukabirus', 'fadhilahdianutami12@gmail.com', '', '081287095755', 'enable', 'dian', ''),
(5, '08-12-2019', 'Ilham', 'Fannani', 'Jl Telekomunikasi gang pga kos pondok arfa no 125 kel bejongsoang kec bojongsoan kab bandung, 40354', 'fannani690@gmail.com', '', '083895490180', 'enable', 'hehehe', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `cloths`
--
ALTER TABLE `cloths`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cloth_type` (`cloth_type`);

--
-- Indeks untuk tabel `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `order_id` (`invoice_no`);

--
-- Indeks untuk tabel `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id_deliv`);

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indeks untuk tabel `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indeks untuk tabel `expense_type`
--
ALTER TABLE `expense_type`
  ADD PRIMARY KEY (`exps_id`),
  ADD UNIQUE KEY `exps_type` (`exps_type`);

--
-- Indeks untuk tabel `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_name` (`service_name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cloths`
--
ALTER TABLE `cloths`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id_deliv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `expenses`
--
ALTER TABLE `expenses`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `expense_type`
--
ALTER TABLE `expense_type`
  MODIFY `exps_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `process`
--
ALTER TABLE `process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
