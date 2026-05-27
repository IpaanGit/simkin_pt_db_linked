-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2026 at 07:15 PM
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
-- Database: `simkin_pt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `indikator_kegiatan`
--

CREATE TABLE `indikator_kegiatan` (
  `id` int(11) NOT NULL,
  `sk_id` int(11) NOT NULL,
  `kode_ik` varchar(30) DEFAULT NULL,
  `nama_ik` text NOT NULL,
  `penanggung_jawab` varchar(255) DEFAULT NULL,
  `target_value` decimal(10,2) DEFAULT 0.00,
  `realisasi_value` decimal(10,2) DEFAULT 0.00,
  `satuan` varchar(50) DEFAULT NULL,
  `progress` decimal(5,2) DEFAULT 0.00,
  `bobot` decimal(5,2) DEFAULT 0.00,
  `status` enum('belum','progres','tercapai') DEFAULT 'belum',
  `target_waktu` date DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indikator_kegiatan`
--

INSERT INTO `indikator_kegiatan` (`id`, `sk_id`, `kode_ik`, `nama_ik`, `penanggung_jawab`, `target_value`, `realisasi_value`, `satuan`, `progress`, `bobot`, `status`, `target_waktu`, `tahun`, `created_at`, `updated_at`) VALUES
(1, 1, 'IK001', 'Persentase Kehadiran Dosen', 'Wakil Dekan Akademik', 100.00, 85.00, '%', 85.00, 20.00, 'progres', '2026-12-31', '2026', '2026-05-27 13:47:35', '2026-05-27 16:48:34'),
(2, 1, 'IK002', 'Jumlah Mata Kuliah Digital', 'Kaprodi Teknik Informatika', 10.00, 7.00, 'mata kuliah', 70.00, 15.00, 'progres', '2026-12-31', '2026', '2026-05-27 13:47:35', '2026-05-27 16:48:34'),
(3, 2, 'IK003', 'Jumlah Kurikulum MBKM', 'Tim Kurikulum', 5.00, 5.00, 'dokumen', 100.00, 20.00, 'tercapai', '2026-12-31', '2026', '2026-05-27 13:47:35', '2026-05-27 16:50:02'),
(4, 3, 'IK004', 'Publikasi Jurnal Internasional', 'Koordinator Penelitian', 20.00, 12.00, 'artikel', 60.00, 30.00, 'progres', '2026-12-31', '2026', '2026-05-27 13:47:35', '2026-05-27 16:48:34'),
(5, 4, 'IK005', 'Jumlah Hibah Penelitian', 'Tim Pengabdian', 15.00, 8.00, 'hibah', 53.00, 25.00, 'progres', '2026-12-31', '2026', '2026-05-27 13:47:35', '2026-05-27 16:48:34'),
(6, 5, 'IK006', 'Jumlah Desa Binaan', 'LPPM', 8.00, 6.00, 'desa', 75.00, 20.00, 'progres', '2026-12-31', '2026', '2026-05-27 13:47:35', '2026-05-27 16:49:05'),
(7, 7, 'IK007', 'Server Kampus Aktif', 'Programmer TIPD', 100.00, 98.00, '% uptime', 98.00, 35.00, 'progres', '2026-12-31', '2026', '2026-05-27 13:47:35', '2026-05-27 16:48:34'),
(8, 8, 'IK008', 'Pengembangan Sistem Akademik', 'Administrator Server', 3.00, 2.00, 'sistem', 66.00, 40.00, 'progres', '2026-12-31', '2026', '2026-05-27 13:47:35', '2026-05-27 16:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `indikator_program`
--

CREATE TABLE `indikator_program` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `kode_indikator` varchar(20) NOT NULL,
  `nama_indikator` text NOT NULL,
  `target_value` decimal(10,2) DEFAULT 0.00,
  `realisasi_value` decimal(10,2) DEFAULT 0.00,
  `satuan` varchar(50) DEFAULT NULL,
  `progress` decimal(5,2) DEFAULT 0.00,
  `status` enum('belum','progres','tercapai') DEFAULT 'belum',
  `tahun` year(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indikator_program`
--

INSERT INTO `indikator_program` (`id`, `program_id`, `kode_indikator`, `nama_indikator`, `target_value`, `realisasi_value`, `satuan`, `progress`, `status`, `tahun`, `created_at`, `updated_at`) VALUES
(1, 1, 'IP001', 'IPK Lulusan Minimal 3.25', 0.00, 0.00, 'persen', 0.00, 'belum', '2026', '2026-04-08 04:34:24', '2026-05-27 15:40:26'),
(2, 1, 'IP002', 'Masa Studi Tepat Waktu', 0.00, 0.00, 'publikasi', 0.00, 'belum', '2026', '2026-04-08 04:34:24', '2026-05-27 15:40:26'),
(3, 2, 'IP003', 'Jumlah Publikasi Internasional', 0.00, 0.00, 'kegiatan', 0.00, 'belum', '2026', '2026-04-08 04:34:24', '2026-05-27 15:40:26'),
(4, 3, 'IP004', 'Jumlah Desa Binaan', 0.00, 0.00, 'sistem', 0.00, 'belum', '2026', '2026-04-08 04:34:24', '2026-05-27 15:40:26'),
(5, 5, 'IP005', 'Lulus dengan Prestasi Akademik/ Non-Akademik', 0.00, 0.00, 'unit', 0.00, 'belum', '2026', '2026-05-26 11:12:54', '2026-05-27 15:41:31'),
(6, 5, 'IP006', 'contoh\r\n\r\n', 0.00, 0.00, 'unit', 0.00, 'belum', '2026', '2026-05-26 11:14:14', '2026-05-27 15:41:31'),
(7, 5, 'IP007', 'contoh\r\n', 0.00, 0.00, 'unit', 0.00, 'belum', '2026', '2026-05-26 11:14:19', '2026-05-27 15:41:31'),
(8, 5, 'IP008', 'contoh\r\n', 0.00, 0.00, 'unit', 0.00, 'belum', '2026', '2026-05-26 11:14:23', '2026-05-27 15:41:31'),
(9, 5, 'IP009', 'contoh\r\n', 0.00, 0.00, 'unit', 0.00, 'belum', '2026', '2026-05-26 11:14:29', '2026-05-27 15:41:31'),
(10, 5, 'IP010', 'contoh', 0.00, 0.00, 'unit', 0.00, 'belum', '2026', '2026-05-26 11:14:35', '2026-05-27 15:41:31'),
(11, 5, 'IP011', 'contoh', 0.00, 0.00, 'unit', 0.00, 'belum', '2026', '2026-05-26 11:14:39', '2026-05-27 15:41:31'),
(12, 5, 'IP012', 'contoh', 0.00, 0.00, 'unit', 0.00, 'belum', '2026', '2026-05-26 11:14:44', '2026-05-27 15:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `nama_permission` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `nama_permission`, `deskripsi`) VALUES
(1, 'dashboard.view', 'Melihat dashboard'),
(2, 'sasaran_program.view', 'Melihat sasaran program'),
(3, 'sasaran_program.create', 'Tambah sasaran program'),
(4, 'sasaran_program.edit', 'Edit sasaran program'),
(5, 'sasaran_program.delete', 'Hapus sasaran program'),
(6, 'sasaran_kegiatan.view', 'Melihat sasaran kegiatan'),
(7, 'sasaran_kegiatan.create', 'Tambah sasaran kegiatan'),
(8, 'skp.view', 'Melihat SKP'),
(9, 'skp.create', 'Membuat SKP'),
(10, 'skp.approve', 'Approve SKP'),
(11, 'realisasi.create', 'Input realisasi'),
(12, 'realisasi.view', 'Melihat realisasi'),
(13, 'laporan.view', 'Melihat laporan');

-- --------------------------------------------------------

--
-- Table structure for table `rhk`
--

CREATE TABLE `rhk` (
  `id` int(11) NOT NULL,
  `indikator_kegiatan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kode_rhk` varchar(30) DEFAULT NULL,
  `nama_rhk` text NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `target_kuantitas` int(11) DEFAULT 0,
  `satuan` text DEFAULT NULL,
  `target_kualitas` int(11) DEFAULT 0,
  `target_waktu` int(11) DEFAULT 0,
  `realisasi_kuantitas` int(11) DEFAULT 0,
  `realisasi_kualitas` int(11) DEFAULT 0,
  `realisasi_waktu` int(11) DEFAULT 0,
  `progress` decimal(5,2) DEFAULT 0.00,
  `bobot` decimal(5,2) DEFAULT 0.00,
  `status` enum('draft','diajukan','disetujui','revisi','selesai') DEFAULT 'draft',
  `tahun` year(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rhk`
--

INSERT INTO `rhk` (`id`, `indikator_kegiatan_id`, `user_id`, `kode_rhk`, `nama_rhk`, `deskripsi`, `target_kuantitas`, `satuan`, `target_kualitas`, `target_waktu`, `realisasi_kuantitas`, `realisasi_kualitas`, `realisasi_waktu`, `progress`, `bobot`, `status`, `tahun`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'RHK001', 'Mengajar Mata Kuliah Basis Data', 'Mengampu perkuliahan basis data semester genap', 16, 'pertemuan', 90, 2026, 0, 0, 0, 0.00, 20.00, '', NULL, '2026-05-27 13:53:27', '2026-05-27 13:53:27'),
(2, 4, 5, 'RHK002', 'Publikasi Jurnal Scopus', 'Melakukan publikasi jurnal internasional', 1, 'artikel', 95, 2026, 0, 0, 0, 0.00, 30.00, '', NULL, '2026-05-27 13:53:27', '2026-05-27 13:53:27'),
(3, 5, 6, 'RHK003', 'Pengajuan Hibah Penelitian', 'Menyusun proposal hibah penelitian nasional', 2, 'proposal', 90, 2026, 0, 0, 0, 0.00, 25.00, '', NULL, '2026-05-27 13:53:27', '2026-05-27 13:53:27'),
(4, 7, 1, 'RHK004', 'Monitoring Server Kampus', 'Monitoring uptime server akademik', 12, 'bulan', 99, 2026, 0, 0, 0, 0.00, 35.00, '', NULL, '2026-05-27 13:53:27', '2026-05-27 13:53:27'),
(5, 8, 1, 'RHK005', 'Pengembangan Sistem Akademik', 'Mengembangkan fitur KRS online', 1, 'sistem', 100, 2026, 0, 0, 0, 0.00, 40.00, '', NULL, '2026-05-27 13:53:27', '2026-05-27 13:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nama_role` varchar(50) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama_role`, `deskripsi`, `created_at`) VALUES
(1, 'admin', 'Mengelola seluruh sistem', '2026-05-27 12:49:16'),
(2, 'rektor', 'Monitoring seluruh kinerja kampus', '2026-05-27 12:49:16'),
(3, 'atasan', 'Menilai dan menyetujui SKP bawahan', '2026-05-27 12:49:16'),
(4, 'pegawai', 'Menginput SKP dan realisasi', '2026-05-27 12:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 13),
(3, 1, 11),
(4, 1, 12),
(5, 1, 7),
(6, 1, 6),
(7, 1, 3),
(8, 1, 5),
(9, 1, 4),
(10, 1, 2),
(11, 1, 10),
(12, 1, 9),
(13, 1, 8),
(16, 2, 1),
(17, 2, 2),
(18, 2, 6),
(19, 2, 9),
(20, 2, 12),
(21, 3, 1),
(22, 3, 9),
(23, 3, 10),
(24, 3, 12),
(25, 4, 1),
(26, 4, 9),
(27, 4, 10),
(28, 4, 11);

-- --------------------------------------------------------

--
-- Table structure for table `sasaran_kegiatan`
--

CREATE TABLE `sasaran_kegiatan` (
  `id` int(11) NOT NULL,
  `indikator_program_id` int(11) NOT NULL,
  `kode_sk` varchar(30) DEFAULT NULL,
  `nama_sk` text NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `penanggung_jawab` varchar(100) DEFAULT NULL,
  `bobot` decimal(5,2) DEFAULT 0.00,
  `target_waktu` date DEFAULT NULL,
  `status` enum('perencanaan','berjalan','selesai') DEFAULT 'perencanaan',
  `tahun` year(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sasaran_kegiatan`
--

INSERT INTO `sasaran_kegiatan` (`id`, `indikator_program_id`, `kode_sk`, `nama_sk`, `deskripsi`, `penanggung_jawab`, `bobot`, `target_waktu`, `status`, `tahun`, `created_at`, `updated_at`) VALUES
(1, 1, 'SK001', 'Peningkatan Mutu Pembelajaran', 'Meningkatkan kualitas proses pembelajaran berbasis OBE', 'Wakil Dekan Akademik', 25.00, '2026-12-31', 'berjalan', '2026', '2026-05-27 13:13:08', '2026-05-27 13:13:08'),
(2, 1, 'SK002', 'Pengembangan Kurikulum MBKM', 'Penyesuaian kurikulum dengan program MBKM', 'Kaprodi Teknik Informatika', 20.00, '2026-11-30', 'perencanaan', '2026', '2026-05-27 13:13:08', '2026-05-27 13:13:08'),
(3, 2, 'SK003', 'Peningkatan Publikasi Ilmiah', 'Mendorong dosen melakukan publikasi internasional', 'LPPM', 30.00, '2026-12-31', 'berjalan', '2026', '2026-05-27 13:13:08', '2026-05-27 13:13:08'),
(4, 2, 'SK004', 'Pengembangan Riset Dosen', 'Peningkatan kualitas penelitian dosen', 'Koordinator Penelitian', 15.00, '2026-10-20', 'perencanaan', '2026', '2026-05-27 13:13:08', '2026-05-27 13:13:08'),
(5, 3, 'SK005', 'Pelaksanaan Pengabdian Desa', 'Program pengabdian masyarakat berbasis desa binaan', 'LPPM', 20.00, '2026-09-10', 'berjalan', '2026', '2026-05-27 13:13:08', '2026-05-27 13:13:08'),
(6, 3, 'SK006', 'Pelatihan Teknologi Masyarakat', 'Pelatihan digitalisasi UMKM masyarakat', 'Tim Pengabdian', 15.00, '2026-08-15', 'perencanaan', '2026', '2026-05-27 13:13:08', '2026-05-27 13:13:08'),
(7, 4, 'SK007', 'Pengembangan Infrastruktur Server', 'Peningkatan kapasitas server kampus', 'UPT TIPD', 35.00, '2026-12-20', 'berjalan', '2026', '2026-05-27 13:13:08', '2026-05-27 13:13:08'),
(8, 4, 'SK008', 'Pengembangan Sistem Informasi Kampus', 'Pengembangan aplikasi layanan akademik', 'Programmer TIPD', 40.00, '2026-12-31', 'perencanaan', '2026', '2026-05-27 13:13:08', '2026-05-27 13:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `sasaran_program`
--

CREATE TABLE `sasaran_program` (
  `id` int(11) NOT NULL,
  `kode_program` varchar(20) NOT NULL,
  `nama_program` varchar(255) NOT NULL,
  `tahun` year(4) DEFAULT NULL,
  `status` enum('aktif','nonaktif') DEFAULT 'aktif',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sasaran_program`
--

INSERT INTO `sasaran_program` (`id`, `kode_program`, `nama_program`, `tahun`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'SP001', 'Peningkatan Kualitas Pendidikan', NULL, 'aktif', NULL, '2026-04-08 04:34:24', '2026-04-08 04:34:24'),
(2, 'SP002', 'Peningkatan Kualitas Penelitian', NULL, 'aktif', NULL, '2026-04-08 04:34:24', '2026-04-08 04:34:24'),
(3, 'SP003', 'Peningkatan Kualitas Pengabdian Masyarakat', NULL, 'aktif', NULL, '2026-04-08 04:34:24', '2026-04-08 04:34:24'),
(5, 'SP004', 'Peningkatan Sarana Prasarana', NULL, 'aktif', NULL, '2026-04-07 22:15:55', '2026-05-26 11:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `skp_master`
--

CREATE TABLE `skp_master` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `periode` varchar(20) DEFAULT 'TAHUNAN',
  `unit_kerja` varchar(100) DEFAULT NULL,
  `atasan_id` int(11) DEFAULT NULL,
  `status` enum('draft','disetujui','dinilai','selesai') DEFAULT 'draft',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skp_master`
--

INSERT INTO `skp_master` (`id`, `user_id`, `tahun`, `periode`, `unit_kerja`, `atasan_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 2026, 'TAHUNAN', 'Fakultas Teknik', 3, 'dinilai', '2026-05-26 11:32:43', '2026-05-26 11:50:27'),
(2, 5, 2026, 'TAHUNAN', 'Fakultas Teknik', 3, 'disetujui', '2026-05-26 11:32:43', '2026-05-26 11:32:43'),
(3, 6, 2026, 'TAHUNAN', 'Fakultas Teknik', 3, 'selesai', '2026-05-26 11:32:43', '2026-05-26 11:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `skp_realisasi`
--

CREATE TABLE `skp_realisasi` (
  `id` int(11) NOT NULL,
  `rencana_id` int(11) NOT NULL,
  `realisasi_kuantitas` int(11) DEFAULT 0,
  `realisasi_kualitas` varchar(100) DEFAULT NULL,
  `realisasi_waktu` date DEFAULT NULL,
  `bukti_file` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skp_realisasi`
--

INSERT INTO `skp_realisasi` (`id`, `rencana_id`, `realisasi_kuantitas`, `realisasi_kualitas`, `realisasi_waktu`, `bukti_file`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 1, 10, '80%', '2026-05-27', NULL, 'mahasiswa banyak yang datang terlambat', '2026-05-26 11:32:43', '2026-05-26 11:51:05'),
(2, 2, 3, '55%', '2026-05-20', NULL, 'kendala di waktu dan pempublikasian jurnal yang butuh waktu lama', '2026-05-26 11:32:43', '2026-05-26 11:52:47'),
(3, 3, 0, '', '0000-00-00', NULL, '', '2026-05-26 17:58:37', '2026-05-26 17:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `skp_rencana`
--

CREATE TABLE `skp_rencana` (
  `id` int(11) NOT NULL,
  `skp_id` int(11) NOT NULL,
  `indikator_kegiatan_id` int(11) DEFAULT NULL,
  `kode_rencana` varchar(20) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `target_kuantitas` int(11) DEFAULT 0,
  `target_satuan` varchar(50) DEFAULT NULL,
  `target_kualitas` varchar(100) DEFAULT NULL,
  `target_waktu` date DEFAULT NULL,
  `bobot` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skp_rencana`
--

INSERT INTO `skp_rencana` (`id`, `skp_id`, `indikator_kegiatan_id`, `kode_rencana`, `nama_kegiatan`, `target_kuantitas`, `target_satuan`, `target_kualitas`, `target_waktu`, `bobot`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'R001', 'Melaksanakan Perkuliahan', 16, 'tatap muka', '90%', '2026-12-31', 40, '2026-05-26 11:32:43', '2026-05-26 11:32:43'),
(2, 1, NULL, 'R002', 'Publikasi Jurnal Internasional', 1, 'artikel', '95%', '2026-12-31', 30, '2026-05-26 11:32:43', '2026-05-26 11:32:43'),
(3, 1, NULL, 'R003', 'Membimbing Mahasiswa', 5, 'mahasiswa', '100%', '2026-12-31', 30, '2026-05-26 11:32:43', '2026-05-26 11:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id` int(11) NOT NULL,
  `kode_unit` varchar(20) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `jenis_unit` enum('rektorat','fakultas','pascasarjana','biro','lembaga','upt') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`id`, `kode_unit`, `nama_unit`, `jenis_unit`, `created_at`) VALUES
(1, 'UK001', 'Rektorat', 'rektorat', '2026-05-27 12:56:32'),
(2, 'UK002', 'Fakultas Teknik', 'fakultas', '2026-05-27 12:56:32'),
(3, 'UK003', 'Fakultas Syariah', 'fakultas', '2026-05-27 12:56:32'),
(4, 'UK004', 'UPT TIPD', 'upt', '2026-05-27 12:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `unit_id` varchar(100) DEFAULT NULL,
  `role_id` enum('admin','rektor','atasan','pegawai') DEFAULT 'pegawai',
  `atasan_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `nama_lengkap`, `nip`, `email`, `password`, `jabatan`, `unit_id`, `role_id`, `atasan_id`, `created_at`, `updated_at`) VALUES
(1, 'admin001', 'Admin Utama', 'Paijo ', 'non', 'paijo@gmail.com', '0192023a7bbd73250516f069df18b500', 'admin', 'Sistem', 'admin', NULL, '2026-02-10 10:17:01', '2026-05-27 14:11:49'),
(2, 'rek001', 'Prof. Dr. Rektor', '	Prof. Dr. Zakiyuddin, M.Ag.', '19720521 2005011003', 'zaki@gmail.com', '6bb87a815bda5e58f16e2154875bf677', 'rektor', 'Universitas', 'rektor', NULL, '2026-02-10 10:17:01', '2026-05-27 14:13:55'),
(3, 'dek001', 'Dekan Fakultas', 'Prof. Dr. Adang Kuswaya, M.Ag', '197205311998031002', 'adang@gmail.com', '5318ed7beac30ead69703502bb80b56c', 'dekan', 'Fakultas Dakwah', 'atasan', 2, '2026-02-10 10:17:01', '2026-05-27 16:39:36'),
(4, 'kap001', 'Kaprodi', 'Juwita Artanti Kusumaningtyas M.Cs', '19920715 201903 2 013', 'juwita@gmail.com', 'd5bbfb47ac3160c31fa8c247827115aa', 'kaprodi', 'Program Studi Teknologi Informasi', 'pegawai', 3, '2026-02-10 10:17:01', '2026-05-27 16:39:56'),
(5, 'P001', 'Dosen Erlangga', 'Erlangga Kusuma Wardana M.Kom', '123456789000000001', 'erlangga@gmail.com', 'd5bbfb47ac3160c31fa8c247827115aa', 'dosen', 'Prodi TI', 'pegawai', 3, '2026-05-26 11:32:43', '2026-05-27 16:40:17'),
(6, 'P002', 'Dosen Pida', 'Pida Patiung M.Ekonomi', '123456789000000002', 'pida@gmail.com', 'd5bbfb47ac3160c31fa8c247827115aa', 'dosen', 'Prodi TI', 'pegawai', 3, '2026-05-26 11:32:43', '2026-05-27 16:40:31'),
(7, 'P003', 'Dr. Faris', 'Dr. Faris Setyawawan M.IlKom', '123456789000000003', 'faris@gmail.com', 'd5bbfb47ac3160c31fa8c247827115aa', 'dosen', 'Prodi TI', 'pegawai', NULL, '2026-05-26 11:32:43', '2026-05-27 14:15:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `indikator_kegiatan`
--
ALTER TABLE `indikator_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_ik` (`kode_ik`),
  ADD KEY `sk_id` (`sk_id`);

--
-- Indexes for table `indikator_program`
--
ALTER TABLE `indikator_program`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_indikator` (`kode_indikator`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_permission` (`nama_permission`);

--
-- Indexes for table `rhk`
--
ALTER TABLE `rhk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_rhk` (`kode_rhk`),
  ADD KEY `indikator_kegiatan_id` (`indikator_kegiatan_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_role` (`nama_role`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `sasaran_kegiatan`
--
ALTER TABLE `sasaran_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_sk` (`kode_sk`),
  ADD KEY `indikator_program_id` (`indikator_program_id`);

--
-- Indexes for table `sasaran_program`
--
ALTER TABLE `sasaran_program`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_program` (`kode_program`);

--
-- Indexes for table `skp_master`
--
ALTER TABLE `skp_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `atasan_id` (`atasan_id`);

--
-- Indexes for table `skp_realisasi`
--
ALTER TABLE `skp_realisasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rencana_id` (`rencana_id`);

--
-- Indexes for table `skp_rencana`
--
ALTER TABLE `skp_rencana`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_rencana` (`kode_rencana`),
  ADD KEY `skp_id` (`skp_id`),
  ADD KEY `fk_skp_indikator_kegiatan` (`indikator_kegiatan_id`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_unit` (`kode_unit`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `fk_users_atasan` (`atasan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `indikator_kegiatan`
--
ALTER TABLE `indikator_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `indikator_program`
--
ALTER TABLE `indikator_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rhk`
--
ALTER TABLE `rhk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sasaran_kegiatan`
--
ALTER TABLE `sasaran_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sasaran_program`
--
ALTER TABLE `sasaran_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `skp_master`
--
ALTER TABLE `skp_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skp_realisasi`
--
ALTER TABLE `skp_realisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skp_rencana`
--
ALTER TABLE `skp_rencana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `indikator_kegiatan`
--
ALTER TABLE `indikator_kegiatan`
  ADD CONSTRAINT `indikator_kegiatan_ibfk_1` FOREIGN KEY (`sk_id`) REFERENCES `sasaran_kegiatan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `indikator_program`
--
ALTER TABLE `indikator_program`
  ADD CONSTRAINT `indikator_program_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `sasaran_program` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rhk`
--
ALTER TABLE `rhk`
  ADD CONSTRAINT `rhk_ibfk_1` FOREIGN KEY (`indikator_kegiatan_id`) REFERENCES `indikator_kegiatan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rhk_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sasaran_kegiatan`
--
ALTER TABLE `sasaran_kegiatan`
  ADD CONSTRAINT `sasaran_kegiatan_ibfk_1` FOREIGN KEY (`indikator_program_id`) REFERENCES `indikator_program` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `skp_master`
--
ALTER TABLE `skp_master`
  ADD CONSTRAINT `skp_master_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `skp_master_ibfk_2` FOREIGN KEY (`atasan_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `skp_realisasi`
--
ALTER TABLE `skp_realisasi`
  ADD CONSTRAINT `skp_realisasi_ibfk_1` FOREIGN KEY (`rencana_id`) REFERENCES `skp_rencana` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `skp_rencana`
--
ALTER TABLE `skp_rencana`
  ADD CONSTRAINT `fk_skp_indikator_kegiatan` FOREIGN KEY (`indikator_kegiatan_id`) REFERENCES `indikator_kegiatan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `skp_rencana_ibfk_1` FOREIGN KEY (`skp_id`) REFERENCES `skp_master` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_atasan` FOREIGN KEY (`atasan_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
