-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Bulan Mei 2020 pada 17.34
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_waspas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_naker`
--

CREATE TABLE `data_naker` (
  `id_naker` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_naker`
--

INSERT INTO `data_naker` (`id_naker`, `nama`, `jabatan`, `status`) VALUES
(2, 'Anisa Dyah', '13', 'aktif'),
(3, 'Anisa Dyah Fatmawati', '1', 'aktif'),
(4, 'Akbar Formadika', '3', 'aktif'),
(5, 'Beby Novia', '18', 'aktif'),
(6, 'athaya', '19', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_keputusan`
--

CREATE TABLE `hasil_keputusan` (
  `id_hasil` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `hasil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_keputusan`
--

INSERT INTO `hasil_keputusan` (`id_hasil`, `id_user`, `hasil`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `kode_kriteria` varchar(100) NOT NULL,
  `bobot` int(100) NOT NULL,
  `jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `keterangan`, `kode_kriteria`, `bobot`, `jenis`) VALUES
(1, 'Jenis Jabatan', 'C1', 25, 'Benifit'),
(2, 'Kinerja', 'C2', 15, 'Benifit'),
(3, 'Lama Honorer', 'C3', 25, 'Benifit'),
(4, 'Attitude', 'C4', 20, 'Benifit'),
(5, 'Skill', 'C5', 15, 'Benifit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_histori`
--

CREATE TABLE `log_histori` (
  `log_id` int(11) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `log_user` int(11) NOT NULL,
  `log_tipe` varchar(100) NOT NULL,
  `log_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_histori`
--

INSERT INTO `log_histori` (`log_id`, `log_time`, `log_user`, `log_tipe`, `log_desc`) VALUES
(1, '2020-04-21 05:12:15', 1, '0', 'Login'),
(2, '2020-04-21 05:23:46', 1, '0', 'Login'),
(3, '2020-04-21 05:24:37', 1, '0', 'Login'),
(4, '2020-04-21 05:25:53', 1, '0', 'Login'),
(5, '2020-04-21 05:31:26', 1, '2', 'menambahkan user'),
(6, '2020-04-21 05:33:08', 1, '3', 'mengubah data user'),
(7, '2020-04-21 05:33:16', 1, '4', 'menghapus data user'),
(8, '2020-04-21 05:36:56', 1, '1', 'Logout'),
(9, '2020-04-21 05:44:52', 1, '0', 'Login'),
(10, '2020-04-21 05:44:57', 1, '1', 'Logout'),
(11, '2020-04-21 05:53:04', 5, '0', 'Login'),
(12, '2020-04-21 05:53:10', 5, '1', 'Logout'),
(13, '2020-04-21 05:53:16', 1, '0', 'Login'),
(14, '2020-04-21 05:53:26', 1, '4', 'menghapus data user'),
(15, '2020-04-21 05:55:19', 1, '1', 'Logout'),
(16, '2020-04-21 05:55:28', 5, '0', 'Login'),
(17, '2020-04-21 12:11:30', 5, '0', 'Login'),
(18, '2020-04-21 16:31:03', 5, '0', 'Login'),
(19, '2020-04-21 16:32:22', 5, '0', 'Login'),
(20, '2020-04-21 16:34:08', 5, '0', 'Login'),
(21, '2020-04-21 16:34:19', 5, '0', 'Login'),
(22, '2020-04-21 16:34:42', 5, '0', 'Login'),
(23, '2020-04-21 16:35:01', 5, '0', 'Login'),
(24, '2020-04-21 16:35:10', 5, '0', 'Login'),
(25, '2020-04-21 16:35:26', 5, '0', 'Login'),
(26, '2020-04-21 16:35:50', 5, '0', 'Login'),
(27, '2020-04-21 16:37:33', 5, '0', 'Login'),
(28, '2020-04-21 16:37:55', 5, '0', 'Login'),
(29, '2020-04-21 16:38:51', 5, '0', 'Login'),
(30, '2020-04-21 16:39:27', 5, '0', 'Login'),
(31, '2020-04-21 16:39:39', 5, '0', 'Login'),
(32, '2020-04-21 16:40:49', 5, '0', 'Login'),
(33, '2020-04-21 16:41:24', 5, '0', 'Login'),
(34, '2020-04-21 16:41:44', 5, '0', 'Login'),
(35, '2020-04-21 16:42:33', 5, '0', 'Login'),
(36, '2020-04-21 16:42:45', 5, '0', 'Login'),
(37, '2020-04-21 16:42:59', 5, '0', 'Login'),
(38, '2020-04-21 16:43:19', 5, '0', 'Login'),
(39, '2020-04-21 16:43:45', 5, '0', 'Login'),
(40, '2020-04-21 16:44:11', 5, '0', 'Login'),
(41, '2020-04-21 16:44:20', 5, '1', 'Logout'),
(42, '2020-04-21 16:46:46', 1, '0', 'Login'),
(43, '2020-04-26 13:55:37', 1, '0', 'Login'),
(44, '2020-04-26 14:34:52', 1, '0', 'Login'),
(45, '2020-04-26 14:36:45', 1, '1', 'Logout'),
(46, '2020-04-26 14:36:52', 1, '0', 'Login'),
(47, '2020-04-26 14:39:07', 1, '1', 'Logout'),
(48, '2020-04-26 15:12:10', 1, '0', 'Login'),
(49, '2020-04-26 15:43:10', 1, '2', 'menambahkan kriteria'),
(50, '2020-04-26 16:14:33', 1, '3', 'mengubah data kriteria'),
(51, '2020-04-26 16:14:40', 1, '4', 'menghapus data kriteria'),
(52, '2020-04-26 16:35:58', 1, '3', 'mengubah data kriteria'),
(53, '2020-04-26 16:36:36', 1, '2', 'menambahkan tenaga_kerja'),
(54, '2020-04-26 16:39:13', 1, '3', 'mengubah data tenaga_kerja'),
(55, '2020-04-26 16:39:21', 1, '4', 'menghapus data tenaga_kerja'),
(56, '2020-04-26 16:42:24', 1, '2', 'menambahkan tenaga_kerja'),
(57, '2020-04-26 16:42:38', 1, '1', 'Logout'),
(58, '2020-04-26 16:42:44', 5, '0', 'Login'),
(59, '2020-04-26 16:50:12', 5, '1', 'Logout'),
(60, '2020-04-26 16:50:20', 1, '0', 'Login'),
(61, '2020-04-26 17:06:19', 1, '1', 'Logout'),
(62, '2020-04-26 17:06:24', 1, '0', 'Login'),
(63, '2020-04-30 13:54:12', 1, '0', 'Login'),
(64, '2020-04-30 14:27:01', 1, '2', 'menambahkan sub_kriteria'),
(65, '2020-04-30 14:27:16', 1, '3', 'mengubah data sub_kriteria'),
(66, '2020-04-30 14:27:30', 1, '2', 'menambahkan sub_kriteria'),
(67, '2020-04-30 14:27:37', 1, '4', 'menghapus data sub_kriteria'),
(68, '2020-04-30 14:29:36', 1, '2', 'menambahkan kriteria'),
(69, '2020-04-30 14:29:59', 1, '3', 'mengubah data kriteria'),
(70, '2020-04-30 14:30:24', 1, '2', 'menambahkan kriteria'),
(71, '2020-04-30 14:30:44', 1, '2', 'menambahkan kriteria'),
(72, '2020-04-30 14:30:59', 1, '2', 'menambahkan kriteria'),
(73, '2020-04-30 15:58:14', 1, '2', 'menambahkan sub_kriteria'),
(74, '2020-04-30 16:24:27', 1, '3', 'mengubah data sub_kriteria'),
(75, '2020-04-30 16:29:15', 1, '3', 'mengubah data sub_kriteria'),
(76, '2020-04-30 16:31:10', 1, '3', 'mengubah data sub_kriteria'),
(77, '2020-04-30 16:31:25', 1, '3', 'mengubah data sub_kriteria'),
(78, '2020-04-30 16:39:19', 1, '2', 'menambahkan sub_kriteria'),
(79, '2020-04-30 16:39:48', 1, '4', 'menghapus data sub_kriteria'),
(80, '2020-04-30 16:40:07', 1, '3', 'mengubah data sub_kriteria'),
(81, '2020-04-30 16:44:15', 1, '3', 'mengubah data sub_kriteria'),
(82, '2020-04-30 16:45:11', 1, '3', 'mengubah data sub_kriteria'),
(83, '2020-04-30 16:45:43', 1, '3', 'mengubah data sub_kriteria'),
(84, '2020-04-30 16:45:50', 1, '3', 'mengubah data sub_kriteria'),
(85, '2020-04-30 16:45:56', 1, '3', 'mengubah data sub_kriteria'),
(86, '2020-04-30 16:46:03', 1, '3', 'mengubah data sub_kriteria'),
(87, '2020-04-30 17:53:12', 1, '0', 'Login'),
(88, '2020-04-30 18:49:02', 1, '2', 'menambahkan sub_kriteria'),
(89, '2020-05-01 07:43:06', 1, '0', 'Login'),
(90, '2020-05-01 08:10:41', 1, '2', 'menambahkan tenaga_kerja'),
(91, '2020-05-01 09:04:20', 1, '2', 'menambahkan tenaga_kerja'),
(92, '2020-05-01 13:17:07', 1, '0', 'Login'),
(93, '2020-05-01 14:53:17', 1, '2', 'menambahkan sub_kriteria'),
(94, '2020-05-01 14:53:34', 1, '2', 'menambahkan sub_kriteria'),
(95, '2020-05-01 14:53:48', 1, '2', 'menambahkan sub_kriteria'),
(96, '2020-05-01 15:03:46', 1, '0', 'Login'),
(97, '2020-05-02 05:18:32', 1, '0', 'Login'),
(98, '2020-05-02 13:00:00', 1, '0', 'Login'),
(99, '2020-05-02 14:36:37', 1, '1', 'Logout'),
(100, '2020-05-02 14:36:45', 5, '0', 'Login'),
(101, '2020-05-02 14:36:56', 5, '1', 'Logout'),
(102, '2020-05-02 14:37:01', 1, '0', 'Login'),
(103, '2020-05-02 15:34:25', 1, '1', 'Logout'),
(104, '2020-05-02 15:34:30', 5, '0', 'Login'),
(105, '2020-05-02 15:35:38', 5, '1', 'Logout'),
(106, '2020-05-02 15:35:46', 1, '0', 'Login'),
(107, '2020-05-02 16:12:32', 1, '1', 'Logout'),
(108, '2020-05-02 16:12:40', 5, '0', 'Login'),
(109, '2020-05-04 05:18:02', 1, '0', 'Login'),
(110, '2020-05-04 15:28:29', 1, '0', 'Login'),
(111, '2020-05-04 15:45:01', 1, '3', 'menambahkan data keputusan'),
(112, '2020-05-04 16:11:10', 1, '1', 'Logout'),
(113, '2020-05-04 16:11:15', 5, '0', 'Login'),
(114, '2020-05-04 16:11:39', 5, '1', 'Logout'),
(115, '2020-05-04 16:11:45', 1, '0', 'Login'),
(116, '2020-05-04 16:13:14', 1, '3', 'mengubah data keputusan'),
(117, '2020-05-04 16:14:24', 1, '3', 'mengubah data keputusan'),
(118, '2020-05-04 16:16:41', 1, '3', 'mengubah data keputusan'),
(119, '2020-05-04 16:17:29', 1, '3', 'mengubah data keputusan'),
(120, '2020-05-04 16:18:14', 1, '3', 'mengubah data keputusan'),
(121, '2020-05-04 16:35:25', 1, '3', 'mengubah data tenaga_kerja'),
(122, '2020-05-04 16:36:20', 1, '3', 'mengubah data tenaga_kerja'),
(123, '2020-05-04 16:36:41', 1, '2', 'menambahkan tenaga_kerja'),
(124, '2020-05-04 16:37:17', 1, '4', 'menghapus data tenaga_kerja'),
(125, '2020-05-04 21:50:46', 1, '0', 'Login'),
(126, '2020-05-04 21:52:40', 1, '2', 'menambahkan tenaga_kerja'),
(127, '2020-05-04 21:53:11', 1, '3', 'mengubah data tenaga_kerja'),
(128, '2020-05-04 21:54:58', 1, '3', 'mengubah data tenaga_kerja'),
(129, '2020-05-04 22:09:26', 1, '3', 'mengubah data sub_kriteria'),
(130, '2020-05-04 22:15:04', 1, '2', 'menambahkan sub_kriteria'),
(131, '2020-05-04 22:20:03', 1, '2', 'menambahkan sub_kriteria'),
(132, '2020-05-04 22:20:23', 1, '2', 'menambahkan sub_kriteria'),
(133, '2020-05-04 22:21:02', 1, '2', 'menambahkan sub_kriteria'),
(134, '2020-05-04 22:21:18', 1, '2', 'menambahkan sub_kriteria'),
(135, '2020-05-04 22:22:57', 1, '2', 'menambahkan sub_kriteria'),
(136, '2020-05-04 22:23:35', 1, '2', 'menambahkan sub_kriteria'),
(137, '2020-05-04 23:58:17', 1, '3', 'mengubah data tenaga_kerja'),
(138, '2020-05-05 00:00:31', 1, '3', 'mengubah data tenaga_kerja'),
(139, '2020-05-05 00:00:41', 1, '3', 'mengubah data tenaga_kerja'),
(140, '2020-05-05 00:26:08', 1, '1', 'Logout'),
(141, '2020-05-05 00:26:14', 3, '0', 'Login'),
(142, '2020-05-05 00:31:10', 3, '1', 'Logout'),
(143, '2020-05-05 00:31:17', 1, '0', 'Login'),
(144, '2020-05-05 00:31:26', 1, '3', 'mengubah data tenaga_kerja'),
(145, '2020-05-05 00:31:33', 1, '3', 'mengubah data tenaga_kerja'),
(146, '2020-05-05 00:31:40', 1, '3', 'mengubah data tenaga_kerja'),
(147, '2020-05-05 00:36:16', 1, '1', 'Logout'),
(148, '2020-05-05 00:36:22', 3, '0', 'Login'),
(149, '2020-05-05 00:46:01', 3, '1', 'Logout'),
(150, '2020-05-05 00:46:06', 1, '0', 'Login');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_naker` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_user`, `id_naker`, `id_kriteria`, `nilai`) VALUES
(22, 5, 2, 1, 1),
(23, 5, 2, 2, 5),
(24, 5, 2, 3, 7),
(25, 5, 2, 4, 8),
(26, 5, 2, 5, 9),
(32, 3, 2, 1, 13),
(33, 3, 2, 2, 5),
(34, 3, 2, 3, 10),
(35, 3, 2, 4, 8),
(36, 3, 2, 5, 12),
(37, 3, 5, 1, 18),
(38, 3, 5, 2, 5),
(39, 3, 5, 3, 10),
(40, 3, 5, 4, 8),
(41, 3, 5, 5, 9),
(42, 3, 3, 1, 1),
(43, 3, 3, 2, 5),
(44, 3, 3, 3, 10),
(45, 3, 3, 4, 8),
(46, 3, 3, 5, 9),
(47, 1, 2, 1, 13),
(48, 1, 2, 2, 5),
(49, 1, 2, 3, 7),
(50, 1, 2, 4, 8),
(51, 1, 2, 5, 9),
(52, 1, 3, 1, 1),
(53, 1, 3, 2, 5),
(54, 1, 3, 3, 7),
(55, 1, 3, 4, 11),
(56, 1, 3, 5, 12),
(57, 1, 4, 1, 3),
(58, 1, 4, 2, 6),
(59, 1, 4, 3, 10),
(60, 1, 4, 4, 8),
(61, 1, 4, 5, 9),
(62, 1, 5, 1, 18),
(63, 1, 5, 2, 5),
(64, 1, 5, 3, 7),
(65, 1, 5, 4, 8),
(66, 1, 5, 5, 9),
(67, 1, 6, 1, 19),
(68, 1, 6, 2, 6),
(69, 1, 6, 3, 7),
(70, 1, 6, 4, 8),
(71, 1, 6, 5, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `nilai` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `deskripsi`, `nilai`) VALUES
(1, 1, 'Dokter Gigi', 8),
(3, 1, 'Bidan', 7),
(5, 2, 'Sangat Bagus', 5),
(6, 2, 'Bagus', 4),
(7, 3, '>3thn', 5),
(8, 4, 'Sopan', 5),
(9, 5, 'Profesional', 5),
(10, 3, '1-2 thn', 4),
(11, 4, 'Tidak Sopan', 1),
(12, 5, 'Noob', 1),
(13, 1, 'Analis Kesehatan', 6),
(14, 1, 'Perawat', 5),
(15, 1, 'Sopir', 4),
(16, 1, 'Penjaga Malam', 3),
(17, 1, 'Binatu', 2),
(18, 1, 'Cleaning Service', 1),
(19, 1, 'Asisten Apoteker', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `id_user_level`, `email`, `username`, `password`) VALUES
(1, 1, 'admin000@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 2, 'ataya@gmail.com', 'ataya', '03edb16ea044edf5f8cb502ad9ba8965'),
(5, 2, 'anisadyah353@gmail.com', 'ans', '1298cbdc3eacd6eed0690cdad2626813'),
(6, 2, 'admin@bewithdhanu.in', 'peserta', '129451d83a60351a82516cb836842c68');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_level`
--

CREATE TABLE `user_level` (
  `id_user_level` int(11) NOT NULL,
  `user_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'Administrator'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_naker`
--
ALTER TABLE `data_naker`
  ADD PRIMARY KEY (`id_naker`);

--
-- Indeks untuk tabel `hasil_keputusan`
--
ALTER TABLE `hasil_keputusan`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `hasil` (`hasil`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `log_histori`
--
ALTER TABLE `log_histori`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_user` (`log_user`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_naker` (`id_naker`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `nilai` (`nilai`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user_level` (`id_user_level`);

--
-- Indeks untuk tabel `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_naker`
--
ALTER TABLE `data_naker`
  MODIFY `id_naker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `hasil_keputusan`
--
ALTER TABLE `hasil_keputusan`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `log_histori`
--
ALTER TABLE `log_histori`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil_keputusan`
--
ALTER TABLE `hasil_keputusan`
  ADD CONSTRAINT `hasil_keputusan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_keputusan_ibfk_2` FOREIGN KEY (`hasil`) REFERENCES `data_naker` (`id_naker`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `log_histori`
--
ALTER TABLE `log_histori`
  ADD CONSTRAINT `log_histori_ibfk_1` FOREIGN KEY (`log_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_naker`) REFERENCES `data_naker` (`id_naker`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_3` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_4` FOREIGN KEY (`nilai`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user_level`) REFERENCES `user_level` (`id_user_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
