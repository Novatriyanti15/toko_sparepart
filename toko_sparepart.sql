-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Jul 2021 pada 18.41
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_sparepart`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL,
  `nama_barang` varchar(1000) NOT NULL,
  `harga_barang` int(15) NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`barang_id`, `nama_barang`, `harga_barang`, `stok`, `keterangan`) VALUES
(10, 'Oli samping Deltalube', 65000, 50, ''),
(11, 'Oli gardan', 35000, 30, ''),
(12, 'kampas rem ori', 50000, 30, ''),
(13, 'Aki motor Yuasa', 150000, 20, ''),
(14, 'Aki motor GS', 100000, 30, ''),
(15, 'obeng T', 140000, 3, ''),
(16, 'Baud 10', 2000, 100, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `no_tlp` text NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `nama_pelanggan`, `no_tlp`, `alamat`) VALUES
(5, 'nova triyanti', '082315671076', 'majalengka'),
(6, 'amira shoffa ', '089765765431', 'Cirebon'),
(7, 'putri lestari', '087665432211', 'Cirebon'),
(8, 'adelia okta', '087665334215', 'Cirebon\r\n'),
(9, 'm raja assidiq', '085227668776', 'Majalengka'),
(10, 'Apriansyah', '0859152951627', 'rajagaluh\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `tgl_penjualan` varchar(50) NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `total` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `tgl_penjualan`, `pelanggan_id`, `keterangan`, `total`) VALUES
(1627664343, '2021-07-30', 5, '', 158500),
(1627664506, '2021-07-30', 6, '', 135000),
(1627664544, '2021-07-30', 7, '', 140000),
(1627664620, '2021-07-30', 8, '', 140000),
(1627664641, '2021-07-30', 9, '', 170000),
(1627664716, '2021-07-30', 10, '', 35000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `penjualan_detail_id` int(11) NOT NULL,
  `penjualan_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `harga_total` int(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`penjualan_detail_id`, `penjualan_id`, `barang_id`, `harga_total`, `jumlah`, `diskon`) VALUES
(16, 1627572792, 11, 35, 1, 0),
(17, 1627572876, 10, 130, 2, 0),
(18, 1627572908, 12, 50, 1, 0),
(19, 1627572908, 14, 100, 1, 0),
(20, 1627653939, 12, 90, 2, 10),
(21, 1627664343, 10, 123500, 2, 5),
(22, 1627664343, 11, 35000, 1, 0),
(23, 1627664506, 13, 135000, 1, 10),
(24, 1627664544, 14, 130000, 2, 35),
(25, 1627664544, 16, 10000, 5, 0),
(26, 1627664620, 15, 140000, 1, 0),
(27, 1627664641, 13, 120000, 1, 20),
(28, 1627664641, 12, 50000, 1, 0),
(29, 1627664716, 11, 35000, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`);

--
-- Indeks untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`penjualan_detail_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1627664717;

--
-- AUTO_INCREMENT untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `penjualan_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
