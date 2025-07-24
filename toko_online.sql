-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jul 2025 pada 07.27
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(5, 'sabuk ', 'leopard', 'aksesoris', 70000, 50, 'sabukloepard1.jpeg'),
(6, 'jersy', 'jersy', 'pakaian wanita', 110000, 42, 'jearsy1.jpeg'),
(7, 'Dress', 'y2k', 'pakian wanita', 150000, 35, 'dress1.jpg'),
(8, 'sepatu', 'sepatu nike', 'sepatu', 600000, 7, 'sepatunike1.jpg'),
(9, 'jaket', 'jaket HAGT', 'pakaian pria', 900000, 6, 'jakethagt.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `invoice`
--

INSERT INTO `invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, '', '', '2025-07-22 14:16:23', '2025-07-23 14:16:23'),
(2, 'nita', 'wates', '2025-07-22 14:16:51', '2025-07-23 14:16:51'),
(3, 'nita', 'wates', '2025-07-22 14:20:31', '2025-07-23 14:20:31'),
(4, 'nita', 'wates', '2025-07-22 14:20:44', '2025-07-23 14:20:44'),
(5, 'nita', 'wates', '2025-07-22 14:21:35', '2025-07-23 14:21:35'),
(6, 'nita', 'wates', '2025-07-22 14:22:40', '2025-07-23 14:22:40'),
(7, 'eni', 'grabag', '2025-07-22 14:27:32', '2025-07-23 14:27:32'),
(8, 'reva', 'semarang', '2025-07-22 16:49:04', '2025-07-23 16:49:04'),
(9, 'reva', 'semarang', '2025-07-22 16:50:01', '2025-07-23 16:50:01'),
(10, 'reva', 'semarang', '2025-07-22 16:50:19', '2025-07-23 16:50:19'),
(11, 'talita', 'wates', '2025-07-22 16:54:50', '2025-07-23 16:54:50'),
(12, 'riyan', 'grabag', '2025-07-22 17:35:55', '2025-07-23 17:35:55'),
(13, 'riyan', 'grabag', '2025-07-22 17:36:48', '2025-07-23 17:36:48'),
(14, 'eni banowati', 'grabag', '2025-07-23 21:15:30', '2025-07-24 21:15:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `id_invoice`, `id_barang`, `nama_barang`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 6, 4, 'hp ip', 1, 14600000, ''),
(2, 7, 6, 'jersy', 2, 110000, ''),
(3, 10, 7, 'Dress', 1, 150000, ''),
(4, 10, 8, 'sepatu', 1, 600000, ''),
(5, 10, 6, 'jersy', 1, 110000, ''),
(6, 11, 6, 'jersy', 1, 110000, ''),
(7, 11, 7, 'Dress', 1, 150000, ''),
(8, 12, 5, 'sabuk ', 1, 70000, ''),
(9, 14, 4, 'hp ip', 1, 14600000, ''),
(10, 14, 5, 'sabuk ', 1, 70000, ''),
(11, 14, 6, 'jersy', 1, 110000, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(16, 'admin', 'admin', 'admin', 1),
(17, 'admin', 'admin', 'admin', 1),
(18, 'admin', 'admin', 'admin', 1),
(19, '', 'lala', '9aa6e5f2256c17d2d430b100032b997c', 2),
(21, '', 'eni', 'c1a19a0ace281c65630df6bb58bc24fa', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
