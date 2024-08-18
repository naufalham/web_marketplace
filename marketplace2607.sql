-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2024 pada 15.32
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketplace2607`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'hambali@gmail.com', '4d296427e6d9da4885408a285d6fc0a4b089f650', 'Muhammad Naufal Hambali'),
(2, 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'ham');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `isi_artikel` text NOT NULL,
  `foto_artikel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `foto_artikel`) VALUES
(1, 'Sejarah Kadal Beserta Saudaranya', '<p>itu anu trus itu anu trus di anu</p>\r\n', 'DSC_00922.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `foto_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `foto_kategori`) VALUES
(1, 'fashion wanita', 'DSC_0088.JPG'),
(2, 'sparepart motor', 'DSC_0132.JPG'),
(4, 'anu', 'DSC_0167.JPG'),
(5, 'una', 'DSC_0256.JPG'),
(6, 'itut', 'DSC_0302.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `email_member` varchar(100) NOT NULL,
  `password_member` varchar(100) NOT NULL,
  `nama_member` varchar(100) NOT NULL,
  `alamat_member` text NOT NULL,
  `wa_member` varchar(50) NOT NULL,
  `kode_distrik_member` varchar(10) NOT NULL,
  `nama_distrik_member` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `email_member`, `password_member`, `nama_member`, `alamat_member`, `wa_member`, `kode_distrik_member`, `nama_distrik_member`) VALUES
(1, 'arif@gmail.com', 'bb6113797d13f9451665a7591e5943986f546dfa', 'Arif Nur Rohman', 'Purwomatani Kalasan', '085716224757', '521', 'Sleman'),
(2, 'ham@gmail.com', '78844960f3ebdb074babae8cc5981cae5981aa32', 'Naufal Hambali', 'Jekulo Kudus', '085715062366', '209', 'Kabupaten Kudus Jawa Tengah'),
(3, 'peng@gmail.com', '23e9454b11ca6698fe6e49d3a0ba1791b64e07a2', 'pepeng', 'Jekulo Karang rt.04/07', '0613675474', '419', 'Kabupaten Sleman DI Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `foto_produk` varchar(255) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `berat_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_member`, `id_kategori`, `nama_produk`, `harga_produk`, `foto_produk`, `deskripsi_produk`, `berat_produk`) VALUES
(1, 1, 1, 'Hijab Segi Empat', 90000, 'hijab.jpg', 'Hijab adalah kerudung yang dipakai oleh banyak wanita beragama Islam. Meskipun terdapat banyak macam penutup kepala Muslim, hijab biasanya merujuk kepada kain yang dikenakan di sekitar kepala dan leher perempuan, yang menutup rambut namun tidak menutup wajah. Penggunaan hijab meningkat sejak 1970-an dan dipandang oleh banyak orang Muslim sebagai ekspresi kesopanan dan iman.', 0),
(2, 1, 1, 'Mukena Travel Dewasa', 200000, 'mukena.jpg', 'Hijab adalah kerudung yang dipakai oleh banyak wanita beragama Islam. Meskipun terdapat banyak macam penutup kepala Muslim, hijab biasanya merujuk kepada kain yang dikenakan di sekitar kepala dan leher perempuan, yang menutup rambut namun tidak menutup wajah. Penggunaan hijab meningkat sejak 1970-an dan dipandang oleh banyak orang Muslim sebagai ekspresi kesopanan dan iman.', 0),
(3, 2, 1, 'Hijab Segi Empat', 90000, 'DSC_0083.JPG', 'Hijab adalah kerudung yang dipakai oleh banyak wanita beragama Islam. Meskipun terdapat banyak macam penutup kepala Muslim, hijab biasanya merujuk kepada kain yang dikenakan di sekitar kepala dan leher perempuan, yang menutup rambut namun tidak menutup wajah. Penggunaan hijab meningkat sejak 1970-an dan dipandang oleh banyak orang Muslim sebagai ekspresi kesopanan dan iman.', 200),
(4, 2, 1, 'Mukena Travel Dewasa', 200000, 'DSC_0171.JPG', 'Hijab adalah kerudung yang dipakai oleh banyak wanita beragama Islam. Meskipun terdapat banyak macam penutup kepala Muslim, hijab biasanya merujuk kepada kain yang dikenakan di sekitar kepala dan leher perempuan, yang menutup rambut namun tidak menutup wajah. Penggunaan hijab meningkat sejak 1970-an dan dipandang oleh banyak orang Muslim sebagai ekspresi kesopanan dan iman.', 2),
(5, 2, 1, 'daster', 90000, 'DSC_0001.JPG', 'daster bahan adem', 3),
(7, 2, 1, 'entah', 100000, 'DSC_0266.JPG', 'yo ndak tau kok tanya saya', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `caption_slider` text NOT NULL,
  `foto_slider` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id_slider`, `caption_slider`, `foto_slider`) VALUES
(1, 'anuuuu ituuu', 'CSC_0217.JPG'),
(2, 'itu anuuuu', 'DSC_0064.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL DEFAULT current_timestamp(),
  `belanja_transaksi` int(11) NOT NULL,
  `status_transaksi` enum('pesan','lunas','batal','dikirim','selesai') NOT NULL DEFAULT 'pesan',
  `ongkir_transaksi` int(11) NOT NULL,
  `total_transaksi` int(11) NOT NULL,
  `bayar_transaksi` int(11) NOT NULL,
  `distrik_pengirim` varchar(255) NOT NULL,
  `nama_pengirim` varchar(100) NOT NULL,
  `wa_pengirim` varchar(50) NOT NULL,
  `alamat_pengirim` text NOT NULL,
  `distrik_penerima` varchar(255) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `wa_penerima` varchar(50) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `nama_ekspedisi` varchar(100) NOT NULL,
  `layanan_ekspedisi` varchar(100) NOT NULL,
  `estimasi_ekspedisi` varchar(50) NOT NULL,
  `berat_ekspedisi` varchar(50) NOT NULL,
  `resi_ekspedisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_transaksi`, `id_member_beli`, `id_member_jual`, `tanggal_transaksi`, `belanja_transaksi`, `status_transaksi`, `ongkir_transaksi`, `total_transaksi`, `bayar_transaksi`, `distrik_pengirim`, `nama_pengirim`, `wa_pengirim`, `alamat_pengirim`, `distrik_penerima`, `nama_penerima`, `wa_penerima`, `alamat_penerima`, `nama_ekspedisi`, `layanan_ekspedisi`, `estimasi_ekspedisi`, `berat_ekspedisi`, `resi_ekspedisi`) VALUES
(1, '', 1, 2, '2024-03-15 15:09:47', 100000, 'pesan', 20000, 120000, 120000, 'Bantul', 'Anas', '084628365929', 'Paris No 10 Bantul', 'Sleman', 'Hambali', '086792740928', 'Purwomatani Baru No 12 Sleman', 'JNE', 'Kilat', '1 Hari', '100', ''),
(2, '', 2, 2, '2024-03-15 15:09:47', 100000, 'pesan', 20000, 120000, 120000, 'Bantul', 'Anas', '084628365929', 'Paris No 10 Bantul', 'Sleman', 'Hambali', '086792740928', 'Purwomatani Baru No 12 Sleman', 'JNE', 'Kilat', '1 Hari', '100', ''),
(3, '202406251819307868', 2, 2, '2024-06-25 18:19:30', 180000, 'pesan', 8000, 188000, 188000, 'Kabupaten Kudus Jawa Tengah', 'Naufal Hambali', '085715062366', 'Jekulo Kudus', 'Kabupaten Kudus Jawa Tengah', 'Naufal Hambali', '085715062366', 'Jekulo Kudus', 'Jalur Nugraha Ekakurir (JNE)', 'JNE City Courier', '8000', '400', ''),
(4, '202406251825258023', 2, 2, '2024-06-25 18:25:25', 180000, 'pesan', 8000, 188000, 188000, 'Kabupaten Kudus Jawa Tengah', 'Naufal Hambali', '085715062366', 'Jekulo Kudus', 'Kabupaten Kudus Jawa Tengah', 'Naufal Hambali', '085715062366', 'Jekulo Kudus', 'Jalur Nugraha Ekakurir (JNE)', 'JNE City Courier', '8000', '400', ''),
(5, '202406251826359910', 2, 2, '2024-06-25 18:26:35', 180000, 'pesan', 8000, 188000, 188000, 'Kabupaten Kudus Jawa Tengah', 'Naufal Hambali', '085715062366', 'Jekulo Kudus', 'Kabupaten Kudus Jawa Tengah', 'Naufal Hambali', '085715062366', 'Jekulo Kudus', 'Jalur Nugraha Ekakurir (JNE)', 'JNE City Courier', '8000', '400', ''),
(6, '202406251833199568', 2, 2, '2024-06-25 18:33:19', 180000, 'lunas', 8000, 188000, 188000, 'Kabupaten Kudus Jawa Tengah', 'Naufal Hambali', '085715062366', 'Jekulo Kudus', 'Kabupaten Kudus Jawa Tengah', 'Naufal Hambali', '085715062366', 'Jekulo Kudus', 'Jalur Nugraha Ekakurir (JNE)', 'JNE City Courier', '8000', '400', ''),
(7, '202407050524018764', 2, 2, '2024-07-05 05:24:01', 200000, 'lunas', 8000, 208000, 208000, 'Kabupaten Kudus Jawa Tengah', 'Naufal Hambali', '085715062366', 'Jekulo Kudus', 'Kabupaten Kudus Jawa Tengah', 'Naufal Hambali', '085715062366', 'Jekulo Kudus', 'Jalur Nugraha Ekakurir (JNE)', 'JNE City Courier', '8000', '16', 'wkwk'),
(8, '202407061503526452', 3, 2, '2024-07-06 15:03:52', 300000, 'pesan', 12000, 312000, 312000, 'Kabupaten Kudus Jawa Tengah', 'Naufal Hambali', '085715062366', 'Jekulo Kudus', 'Kabupaten Sleman DI Yogyakarta', 'pepeng', '0613675474', 'Jekulo Karang rt.04/07', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '12000', '24', ''),
(9, '202407061515586440', 3, 2, '2024-07-06 15:15:58', 190000, 'pesan', 55000, 245000, 245000, 'Kabupaten Kudus Jawa Tengah', 'Naufal Hambali', '085715062366', 'Jekulo Kudus', 'Kabupaten Sleman DI Yogyakarta', 'pepeng', '0613675474', 'Jekulo Karang rt.04/07', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '55000', '11', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_beli` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `jumlah_rating` int(11) DEFAULT NULL,
  `ulasan_rating` text DEFAULT NULL,
  `waktu_rating` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_produk`, `nama_beli`, `harga_beli`, `jumlah_beli`, `jumlah_rating`, `ulasan_rating`, `waktu_rating`) VALUES
(1, 1, 1, 'Hijab Segi Empat', 50000, 1, NULL, NULL, NULL),
(2, 1, 2, 'Mukena', 50000, 1, NULL, NULL, NULL),
(3, 5, 3, 'Hijab Segi Empat', 90000, 2, 3, 'fdg', '2024-07-05 11:39:15'),
(4, 6, 3, 'Hijab Segi Empat', 90000, 2, 5, 'ugo', '2024-07-05 11:38:36'),
(5, 7, 7, 'entah', 100000, 2, NULL, NULL, NULL),
(6, 8, 7, 'entah', 100000, 3, NULL, NULL, NULL),
(7, 9, 5, 'daster', 90000, 1, NULL, NULL, NULL),
(8, 9, 7, 'entah', 100000, 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
