-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2021 pada 14.32
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_sispak_uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id` varchar(5) NOT NULL,
  `nama` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id`, `nama`) VALUES
('G001', 'Badan Kurus'),
('G002', 'Bersin-bersin'),
('G003', 'Bulu Kusam dan Mengkerut'),
('G004', 'Diare'),
('G005', 'Duduk Membungkuk'),
('G006', 'Kaki Pincang'),
('G007', 'Kelihatan Ngantuk dan Bulu Berdiri'),
('G008', 'Kelopak Mata Kemerahan'),
('G009', 'Keluar Nanah dari Mata dan Bau'),
('G010', 'Kualitas Telur Jelek'),
('G011', 'Mencret Bercampur Darah'),
('G012', 'Mencret Kehijau-hijauan'),
('G013', 'Mencret Keputih-putihan'),
('G014', 'Muka Pucat'),
('G015', 'Nafas Cepat'),
('G016', 'Nafsu Makan Berkurang'),
('G017', 'Pembengkakan dari Sinus dan Mata'),
('G018', 'Produksi Telur Menurun'),
('G019', 'Sayap Menggantung'),
('G020', 'Sempoyongan'),
('G021', 'Tampak Lesu'),
('G022', 'Tidur Paruhnya Turun ke Bawah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala_user`
--

CREATE TABLE `gejala_user` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `gejala` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala_user`
--

INSERT INTO `gejala_user` (`id`, `id_user`, `gejala`) VALUES
(1, 1, 'G001'),
(2, 1, 'G004'),
(3, 1, 'G005'),
(4, 2, 'G001'),
(5, 2, 'G006'),
(6, 2, 'G007'),
(31, 9, 'G001'),
(32, 9, 'G006'),
(33, 9, 'G007'),
(34, 10, 'G002'),
(35, 10, 'G008'),
(36, 10, 'G009'),
(37, 11, 'G003'),
(38, 11, 'G013'),
(39, 11, 'G014'),
(40, 11, 'G015'),
(41, 12, 'G001'),
(42, 12, 'G006'),
(43, 12, 'G007'),
(44, 13, 'G001'),
(45, 13, 'G006'),
(46, 13, 'G007'),
(47, 14, 'G002'),
(48, 14, 'G008'),
(49, 14, 'G009'),
(50, 15, 'G002'),
(51, 15, 'G003'),
(52, 15, 'G006'),
(53, 15, 'G008'),
(54, 15, 'G012'),
(55, 15, 'G014'),
(56, 15, 'G018'),
(57, 15, 'G020'),
(58, 16, 'G001'),
(59, 16, 'G003'),
(60, 16, 'G011'),
(61, 16, 'G014'),
(62, 16, 'G016'),
(63, 16, 'G017'),
(64, 16, 'G018'),
(65, 17, 'G005'),
(66, 17, 'G006'),
(67, 17, 'G007'),
(68, 17, 'G009'),
(69, 17, 'G012'),
(70, 17, 'G015'),
(71, 17, 'G017'),
(72, 17, 'G020'),
(73, 18, 'G005'),
(74, 18, 'G006'),
(75, 18, 'G007'),
(76, 18, 'G009'),
(77, 18, 'G012'),
(78, 18, 'G015'),
(79, 18, 'G017'),
(80, 18, 'G020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id` varchar(5) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `penyebab` varchar(256) NOT NULL,
  `solusi` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id`, `nama`, `penyebab`, `solusi`) VALUES
('P1', 'Tipus Ayam (Fowl Typhoid)', 'Disebabkan oleh bakteri Salmonella enterica subspecies enterica serovars Gallinarum biovars Gallinarum yang terdistribusi di seluruh dunia.', 'Dapat dilakukan dengan memberikan amoxycillin, sulponamide, tetracylines, atau fluoroquinolones'),
('P2', 'Berak Darah (Coccidosis)', 'Disebabkan oleh parasit protozoa dari genus Eimeria', 'Dapat dilakukan dengan pemberian obat - obatan yang bersifat coccidiostat atau coccidiocidal. Pemberian obat ini tidak mengeliminasi seluruh parasit dari dalam tubuh, tetapi hanya menekan jumlah parasit yang ada didalam tubuh. dengan jumlah parasit yang te'),
('P3', 'Selesma  Ayam (Infectious Coryza)', 'Disebabkan oleh bakteri Haemophilus paragallinarum (HPG)', 'Memberikan antibiotik sulfadimethoxine'),
('P4', 'Gumboro (Gumboro  Disease)', 'Disebabkan oleh virus famili Birnaviridae', '1. Apabila ayam berusia dibawah 25 hari maka tindakan yang tepat adalah melakukan pemanasan atau brooding namun ventilasi harus lancer karena ayam sudah besar dan membutuhkan banyak oksigen.\r\n\r\n2. Berikan antibiotic dengan dosis yang ringan seperti Neomici'),
('P5', 'Mareks (Mareks  Disease)', 'Disebabkan oleh virus herpes-2 golongan B dari famili Herpesviridae.', 'Sampai saat ini belum ditemukan obatnya \r\n'),
('P6', 'Produksi (Egg Drop  Syndrome 76)', 'Disebabkan oleh adenovirus dari famili adenoviridae', 'Tidak ada obat yang berhasil guna dalam menurunkan keparahan ataupun mengurangi gejala penyakit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rule`
--

CREATE TABLE `rule` (
  `id` varchar(5) NOT NULL,
  `G001` int(11) DEFAULT 0,
  `G002` int(11) DEFAULT 0,
  `G003` int(11) DEFAULT 0,
  `G004` int(11) DEFAULT 0,
  `G005` int(11) DEFAULT 0,
  `G006` int(11) DEFAULT 0,
  `G007` int(11) DEFAULT 0,
  `G008` int(11) DEFAULT 0,
  `G009` int(11) DEFAULT 0,
  `G010` int(11) DEFAULT 0,
  `G011` int(11) DEFAULT 0,
  `G012` int(11) DEFAULT 0,
  `G013` int(11) DEFAULT 0,
  `G014` int(11) DEFAULT 0,
  `G015` int(11) DEFAULT 0,
  `G016` int(11) DEFAULT 0,
  `G017` int(11) DEFAULT 0,
  `G018` int(11) DEFAULT 0,
  `G019` int(11) DEFAULT 0,
  `G020` int(11) DEFAULT 0,
  `G021` int(11) DEFAULT 0,
  `G022` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rule`
--

INSERT INTO `rule` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`, `G011`, `G012`, `G013`, `G014`, `G015`, `G016`, `G017`, `G018`, `G019`, `G020`, `G021`, `G022`) VALUES
('P1', 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0),
('P2', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0),
('P3', 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0),
('P4', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1),
('P5', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0),
('P6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `analisa` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `no_telp`, `analisa`) VALUES
(15, 'Khalil Attala', '081395549265', 'P000'),
(16, 'Torangto Situngkir', '081264378327', 'P000'),
(17, 'Khalil Attala', '08126437832', 'P000'),
(18, 'Khalil Attala', '08126437832', 'P000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gejala_user`
--
ALTER TABLE `gejala_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rule`
--
ALTER TABLE `rule`
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
-- AUTO_INCREMENT untuk tabel `gejala_user`
--
ALTER TABLE `gejala_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
