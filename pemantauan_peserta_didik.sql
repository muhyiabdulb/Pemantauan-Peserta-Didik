-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Apr 2020 pada 08.00
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemantauan_peserta_didik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Muhyi Abdul Basith', 'muhyi', '1ff1de774005f8da13f42943881c655f');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivitas`
--

CREATE TABLE `aktivitas` (
  `id` int(11) NOT NULL,
  `kode_aktivitas` varchar(100) NOT NULL,
  `aktivitas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aktivitas`
--

INSERT INTO `aktivitas` (`id`, `kode_aktivitas`, `aktivitas`) VALUES
(1, 'AK001', 'Shalat Tahajud'),
(2, 'AK002', 'Shalat Shubuh'),
(3, 'AK003', 'Membersihkan Kamar'),
(4, 'AK004', 'Sarapan'),
(5, 'AK005', 'Mengerjakan Tugas'),
(6, 'AK006', 'Shalat Dhuha'),
(7, 'AK007', 'Shalat Dzuhur'),
(8, 'AK008', 'Nonton TV(berita)'),
(9, 'AK009', 'Shalat Ashar'),
(10, 'AK010', 'Bercengkrama dengan keluarga'),
(11, 'AK011', 'Shalat Maghrib'),
(12, 'AK012', 'Tadarus'),
(14, 'AK013', 'Shalat Isya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_jadwal`
--

CREATE TABLE `detail_jadwal` (
  `kode_waktu` varchar(100) NOT NULL,
  `hari` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam_mulai` time NOT NULL,
  `jam_akhir` time NOT NULL,
  `aktivitas` varchar(100) DEFAULT NULL,
  `kode_mapel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_jadwal`
--

INSERT INTO `detail_jadwal` (`kode_waktu`, `hari`, `tanggal`, `jam_mulai`, `jam_akhir`, `aktivitas`, `kode_mapel`) VALUES
('1', 'Sabtu', '2020-04-25', '03:00:00', '04:00:00', 'Sahur', 'PAI'),
('2', 'Sabtu', '2020-04-25', '04:00:00', '05:00:00', 'Shalat Shubuh', 'PAI'),
('3', 'Sabtu', '2020-04-25', '05:00:00', '06:00:00', 'Membersihkan Kamar', 'PPKn'),
('4', 'Sabtu', '2020-04-25', '06:00:00', '07:00:00', 'Sarapan', 'PPKn'),
('5', 'Sabtu', '2020-04-25', '07:00:00', '08:00:00', 'Belajar', 'PPKn'),
('6', '', '0000-00-00', '09:00:00', '01:00:00', 'Makan', 'PPKn'),
('KW0001', 'Sabtu', '2020-04-25', '03:01:00', '02:01:00', 'Sahur', 'PPKn'),
('KW0002', 'Sabtu', '2020-04-25', '00:00:00', '01:00:00', 'Makan', 'PPKn'),
('KW0003', 'Selasa', '2020-04-25', '03:00:00', '02:00:00', 'Nonton Tv', 'PPKn'),
('KW0004', 'Senin', '2020-04-25', '06:01:00', '05:02:00', 'Belajar', 'PPKn'),
('KW0005', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn'),
('KW0006', 'Senin', '2020-04-25', '11:11:00', '11:01:00', 'Makan', 'PPKn'),
('KW0007', 'Sabtu', '2020-04-25', '02:00:00', '22:02:00', 'Belajar', 'PAI'),
('KW0008', 'Sabtu', '2020-04-25', '20:20:00', '20:20:00', 'Sarapan', 'PPKn'),
('KW0009', 'Sabtu', '2020-04-25', '20:20:00', '20:20:00', 'Sarapan', 'PPKn'),
('KW0010', 'Sabtu', '2020-04-25', '20:20:00', '20:20:00', 'Sarapan', 'PPKn'),
('KW0011', 'Sabtu', '2020-04-25', '23:43:00', '23:16:00', 'Sarapan', 'PPKn'),
('KW0012', 'Senin', '2020-04-25', '05:05:00', '05:05:00', 'Sahur', 'PAI'),
('KW0013', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI'),
('KW0014', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI'),
('KW0015', 'Sabtu', '2020-04-25', '12:12:00', '12:12:00', 'Sahur', 'PAI'),
('KW0015', 'Selasa', '2020-04-23', '12:12:00', '12:12:00', 'Sarapan', 'PAI'),
('KW0016', 'Sabtu', '2020-04-25', '12:12:00', '12:12:00', 'Sahur', 'PAI'),
('KW0017', 'Minggu', '2020-04-25', '12:12:00', '12:12:00', 'Belajar', 'PAI'),
('KW0018', 'Senin', '2020-04-01', '12:12:00', '12:12:00', 'Shalat Shubuh', 'PPKn'),
('KW0019', 'Sabtu', '2020-04-25', '22:02:00', '22:02:00', 'Sarapan', 'PAI'),
('KW0020', 'Sabtu', '2020-04-25', '22:22:00', '22:22:00', 'Belajar', 'PPKn'),
('KW0021', 'Sabtu', '2020-04-25', '00:00:00', '00:00:00', 'Petualang', 'PJOK'),
('KW0022', 'Rabu', '2020-04-02', '11:11:00', '11:11:00', 'Main Bola', 'PJOK'),
('KW0023', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI'),
('KW0024', 'Kamis', '2020-04-23', '22:22:00', '22:22:00', 'Membersihkan Kamar', 'PPKn'),
('KW0025', 'Rabu', '2020-04-25', '11:11:00', '11:01:00', 'Belajar', 'PAI'),
('KW0026', 'Rabu', '2020-04-15', '04:23:00', '02:02:00', 'Sarapan', 'PPKn'),
('KW0027', 'Senin', '2020-04-05', '11:11:00', '11:11:00', 'Sarapan', 'PAI'),
('KW0028', 'Senin', '2020-04-10', '00:00:00', '00:00:00', 'Membersihkan Kamar', 'PPKn'),
('KW0029', 'Selasa', '2020-04-25', '22:22:00', '22:22:00', 'Shalat Isya', 'PAI'),
('KW0030', 'Sabtu', '2020-04-25', '11:01:00', '11:01:00', 'Tadarus', 'PAI'),
('KW0031', 'Minggu', '2020-04-26', '07:00:00', '08:00:00', 'AK004', 'MP003'),
('KW0032', 'Minggu', '2020-04-26', '08:00:00', '09:00:00', 'Nonton TV(berita)', 'PPKn'),
('KW0033', 'Senin', '2020-04-26', '10:10:00', '10:00:00', 'Shalat Tahajud', 'PAI'),
('KW0034', 'Rabu', '2020-04-26', '11:11:00', '21:21:00', 'Tadarus', 'PAI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `g_mapel` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `pasword` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `kode`, `nama`, `jk`, `g_mapel`, `username`, `pasword`) VALUES
(1, 'KG001', 'Muhyi Abdul Basith', 'L', 'MP001', 'muhyi', '054062d2801cfbe9c782dd92daace4fd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode_mapel` varchar(100) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `kode_mapel`, `nama_mapel`) VALUES
(1, 'MP001', 'PAI'),
(2, 'MP002', 'PPKn'),
(3, 'MP003', 'PJOK'),
(4, 'MP004', 'PKK-KWh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembuktian`
--

CREATE TABLE `pembuktian` (
  `nis` char(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kode_laporan` varchar(100) NOT NULL,
  `hari` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_akhir` time NOT NULL,
  `aktivitas` varchar(100) NOT NULL,
  `kode_mapel` varchar(100) NOT NULL,
  `bukti1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembuktian`
--

INSERT INTO `pembuktian` (`nis`, `nama`, `kode_laporan`, `hari`, `tanggal`, `jam_mulai`, `jam_akhir`, `aktivitas`, `kode_mapel`, `bukti1`) VALUES
('', '', 'KL0001', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'PPKn', '', ''),
('', '', 'KL0002', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'PPKn', '', ''),
('', '', 'KL0003', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', ''),
('', '', 'KL0004', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806468_Adi Pramono.JPG'),
('', '', 'KL0005', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', ''),
('', '', 'KL0006', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806506_Anindya Maharani.JPG'),
('', '', 'KL0007', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806609_Firdaus.JPG'),
('', '', 'KL0008', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806609_Firdaus.JPG'),
('', '', 'KL0008', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806609_Firdaus.JPG'),
('', '', 'KL0009', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806560_Devangga Rizki Naraya.JPG'),
('', '', 'KL0010', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806609_Firdaus.JPG'),
('', '', 'KL0011', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806461_Achmad Zabal Zaenudin.JPG'),
('', '', 'KL0012', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806609_Firdaus.JPG'),
('', '', 'KL0013', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806609_Firdaus.JPG'),
('', '', 'KL0014', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806591_Fadli Nurichsan.JPG'),
('', '', 'KL0015', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806609_Firdaus.JPG'),
('', '', 'KL0016', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', ''),
('', '', 'KL0017', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', ''),
('', '', 'KL0018', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806461_Achmad Zabal Zaenudin.JPG'),
('', '', 'KL0019', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806956_Yoga Ramadhan.JPG'),
('', '', 'KL0020', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', '11806956_Yoga Ramadhan.JPG'),
('', '', 'KL0021', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', ''),
('', '', 'KL0022', 'Sabtu', '2020-04-25', '11:11:00', '22:22:00', 'Makan', 'PPKn', ''),
('', '', 'KL0023', 'Senin', '2020-04-25', '11:11:00', '11:01:00', 'Makan', 'PPKn', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0024', 'Sabtu', '2020-04-25', '02:00:00', '22:02:00', 'Belajar', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0025', 'Sabtu', '2020-04-25', '20:20:00', '20:20:00', 'Sarapan', 'PPKn', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0026', 'Sabtu', '2020-04-25', '23:43:00', '23:16:00', 'Sarapan', 'PPKn', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0027', 'Senin', '2020-04-25', '05:05:00', '05:05:00', 'Sahur', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0028', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0028', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0029', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0029', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0030', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0030', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0031', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', 'IMG_20200425_152844.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0032', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0033', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0034', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0034', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0035', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0035', 'Sabtu', '2020-04-18', '21:12:00', '21:02:00', 'Shalat Shubuh', 'PAI', ''),
('11806784', 'Rausan Fikri', 'KL0036', 'Sabtu', '2020-04-25', '12:12:00', '12:12:00', 'Sahur', 'PAI', 'IMG_20200425_153411.jpg'),
('11806784', 'Rausan Fikri', 'KL0037', 'Sabtu', '2020-04-25', '12:12:00', '12:12:00', 'Sahur', 'PAI', '11806778_Muhyi Abdul Basith.pdf'),
('11806784', 'Rausan Fikri', 'KL0038', 'Sabtu', '2020-04-25', '12:12:00', '12:12:00', 'Sahur', 'PAI', 'IMG_20200425_153354.jpg'),
('11806784', 'Rausan Fikri', 'KL0039', 'Minggu', '2020-04-25', '12:12:00', '12:12:00', 'Belajar', 'PAI', 'IMG_20200425_153411.jpg'),
('11806784', 'Rausan Fikri', 'KL0040', 'Minggu', '2020-04-25', '12:12:00', '12:12:00', 'Belajar', 'PAI', 'IMG_20200425_153411.jpg'),
('11806784', 'Rausan Fikri', 'KL0041', 'Minggu', '2020-04-25', '12:12:00', '12:12:00', 'Belajar', 'PAI', 'IMG_20200425_153001.jpg'),
('11806784', 'Rausan Fikri', 'KL0042', 'Minggu', '2020-04-25', '12:12:00', '12:12:00', 'Belajar', 'PAI', 'IMG_20200425_153411.jpg'),
('11806784', 'Rausan Fikri', 'KL0043', 'Minggu', '2020-04-25', '12:12:00', '12:12:00', 'Belajar', 'PAI', 'IMG_20200425_153001.jpg'),
('11806784', 'Rausan Fikri', 'KL0044', 'Minggu', '2020-04-25', '12:12:00', '12:12:00', 'Belajar', 'PAI', 'IMG_20200425_153001.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0045', 'Sabtu', '2020-04-25', '22:02:00', '22:02:00', 'Sarapan', 'PAI', 'IMG_20200425_153411.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0046', 'Sabtu', '2020-04-25', '22:22:00', '22:22:00', 'Belajar', 'PPKn', 'IMG_20200425_153411.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0047', 'Sabtu', '2020-04-25', '00:00:00', '00:00:00', 'Petualang', 'PJOK', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0048', 'Rabu', '2020-04-02', '11:11:00', '11:11:00', 'Main Bola', 'PJOK', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0049', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0050', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0050', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0050', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0051', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0051', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0051', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0051', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0052', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0052', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0052', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', ''),
('11806778', 'Muhyi Abdul Basith', 'KL0053', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', 'IMG_20200425_153411.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0053', 'Selasa', '2020-04-10', '00:00:00', '00:00:00', 'kkkkk', 'PAI', 'IMG_20200425_153411.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0054', 'Kamis', '2020-04-23', '22:22:00', '22:22:00', 'Membersihkan Kamar', 'PPKn', 'IMG_20200425_152832.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0055', 'Rabu', '2020-04-25', '11:11:00', '11:01:00', 'Belajar', 'PAI', '11806778_Muhyi Abdul Basith.pdf'),
('11806784', 'Rausan Fikri', 'KL0056', 'Rabu', '2020-04-15', '04:23:00', '02:02:00', 'Sarapan', 'PPKn', 'IMG_20200425_153201.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0057', 'Senin', '2020-04-05', '11:11:00', '11:11:00', 'Sarapan', 'PAI', 'IMG_20200425_153001.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0058', 'Senin', '2020-04-10', '00:00:00', '00:00:00', 'Membersihkan Kamar', 'PPKn', '11806778_Muhyi Abdul Basith_RPL XI-I_Ciawi - 2_b. indo.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0059', 'Selasa', '0000-00-00', '22:22:00', '22:22:00', 'Shalat Isya', 'PAI', '11806778_Muhyi Abdul Basith_RPL XI-I_Ciawi - 2_b. indo.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0060', 'Sabtu', '2020-04-25', '11:01:00', '11:01:00', 'Tadarus', 'PAI', 'IMG_20200425_152832.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0061', 'Minggu', '2020-04-26', '07:00:00', '08:00:00', 'AK004', 'MP003', 'IMG_20200425_152832.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0062', 'Minggu', '2020-04-26', '08:00:00', '09:00:00', 'Nonton TV(berita)', 'PPKn', 'IMG_20200425_153001.jpg'),
('11806778', 'Muhyi Abdul Basith', 'KL0063', 'Senin', '2020-04-26', '10:10:00', '10:00:00', 'Shalat Tahajud', 'PAI', 'IMG_20200425_152844.jpg'),
('11806777', 'M Virga M', 'KL0064', 'Rabu', '2020-04-26', '11:11:00', '21:21:00', 'Tadarus', 'PAI', 'IMG_20200425_152844.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta_didik`
--

CREATE TABLE `peserta_didik` (
  `nis` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(100) DEFAULT NULL,
  `rombel` varchar(100) NOT NULL,
  `rayon` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peserta_didik`
--

INSERT INTO `peserta_didik` (`nis`, `nama`, `jk`, `rombel`, `rayon`, `username`, `password`) VALUES
('11806777', 'M Virga M', 'P', 'RPL XI-3', 'Ciawi 3', 'virga', '6512bd43d9caa6e02c990b0a82652dca'),
('11806778', 'Muhyi Abdul Basith', 'L', 'RPL XI-1', ' Ciawi 2', 'muhyi', '1ff1de774005f8da13f42943881c655f');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rayon`
--

CREATE TABLE `rayon` (
  `id_rayon` int(11) NOT NULL,
  `rayon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rayon`
--

INSERT INTO `rayon` (`id_rayon`, `rayon`) VALUES
(1, 'Ciawi 1'),
(2, ' Ciawi 2'),
(3, 'Ciawi 3'),
(4, 'Ciawi 4'),
(5, 'Ciawi 5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rombel`
--

CREATE TABLE `rombel` (
  `id_rombel` int(11) NOT NULL,
  `rombel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rombel`
--

INSERT INTO `rombel` (`id_rombel`, `rombel`) VALUES
(1, 'RPL XI-1'),
(2, 'RPL XI-2'),
(3, 'RPL XI-3'),
(4, 'RPL XI-4');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_jadwal`
--
ALTER TABLE `detail_jadwal`
  ADD KEY `kode_mapel` (`kode_mapel`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peserta_didik`
--
ALTER TABLE `peserta_didik`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `rayon`
--
ALTER TABLE `rayon`
  ADD PRIMARY KEY (`id_rayon`);

--
-- Indeks untuk tabel `rombel`
--
ALTER TABLE `rombel`
  ADD PRIMARY KEY (`id_rombel`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rayon`
--
ALTER TABLE `rayon`
  MODIFY `id_rayon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rombel`
--
ALTER TABLE `rombel`
  MODIFY `id_rombel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
