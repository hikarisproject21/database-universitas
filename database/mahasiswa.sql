-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Bulan Mei 2022 pada 04.49
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` enum('Laki-laki','Perempuan','','') NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `angkatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jk`, `kelas`, `prodi`, `angkatan`) VALUES
('200401010091\r\n', 'RIRIN MARLIANA\r\n', 'Perempuan', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401010105\r\n', 'ILHAM SAPUTRA\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401010117\r\n', 'KRISTIOPAN KENNARD\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401010149\r\n', 'DEDE SETIAWAN PRAMBONO\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401010156\r\n', 'MUKIJO\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401010165\r\n', 'ANDI PRASETYO\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401010169', 'MUHAMMAD ARUM\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401010176\r\n', 'YOHANES HARI WIDIASTOMO\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401010179\r\n', 'SUCIANA SUKMA KENCANA\r\n', 'Perempuan', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401010182\r\n', 'UMAR\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401010186\r\n', 'CHYNTIA KREIZUM\r\n', 'Perempuan', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401010188\r\n', 'HILDA MARTA NAULI\r\n', 'Perempuan', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401070051\r\n', 'Dani Hamdani\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401070053\r\n', 'Yonathan Tanuwidjaja\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401070065\r\n', 'Yosafat Himawan Prasetyo\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072010\r\n', 'Jessica Juniati\r\n', 'Perempuan', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072012\r\n', 'Widya Amboro\r\n', 'Perempuan', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072015\r\n', 'Muhamad Fakhri Firdaus\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072030\r\n', 'Genta Ananda Rakhsy\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072049\r\n', 'Annissa Muthmainnah\r\n', 'Perempuan', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072053\r\n', 'karnoto', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072057\r\n', 'Alexander\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072106\r\n', 'Erwin Marganda Silitonga\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072144\r\n', 'Natalia Tandilembang\r\n', 'Perempuan', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072151\r\n', 'Muhardi\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072163\r\n', 'Idris Umamit\r\n', 'Perempuan', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072174\r\n', 'Benny Setio Handoko\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072178\r\n', 'Anggi Rahmat Ginanjar\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072188\r\n', 'Mochamad Ramadhany\r\n', 'Laki-laki', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020'),
('200401072191\r\n', 'Muslihudin\r\n', 'Perempuan', 'IT403\r\n', 'S-1 PJJ Informatika\r\n', '2020');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
