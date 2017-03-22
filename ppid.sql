-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2017 at 12:11 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ppid`
--

-- --------------------------------------------------------

--
-- Table structure for table `alasan_keberatan`
--

CREATE TABLE IF NOT EXISTS `alasan_keberatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(350) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alasan_keberatan`
--

INSERT INTO `alasan_keberatan` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Permohonan Informasi yang ditolak', '2017-03-15 12:07:51', '2017-03-15 12:10:39'),
(2, 'Informasi Berkala tidak disediakan', '2017-03-15 12:10:55', '2017-03-15 12:10:55'),
(3, 'Permintaan Informasi tidak ditanggapi', '2017-03-15 12:11:08', '2017-03-15 12:11:08'),
(4, 'Permintaan Informasi tidak dipenuhi', '2017-03-15 12:11:34', '2017-03-15 12:11:34'),
(5, 'Permintaan Informasi tidak sebagaimana diminta', '2017-03-15 12:11:54', '2017-03-15 12:11:54'),
(6, 'Biaya yang dikenakan tidak wajar', '2017-03-15 12:12:14', '2017-03-15 12:12:14'),
(7, 'Informasi yang disampaikan melebihi jangka waktu uang ditentukan', '2017-03-15 12:12:37', '2017-03-15 12:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(350) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(350) NOT NULL,
  `title_gambar` varchar(350) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE IF NOT EXISTS `dokumen` (
  `id` int(11) NOT NULL,
  `nomor` varchar(15) NOT NULL,
  `nama` varchar(350) NOT NULL,
  `tanggal` date NOT NULL,
  `kategori` int(11) NOT NULL,
  `jenis` int(11) NOT NULL,
  `kandungan_informasi` text NOT NULL,
  `ppid_pembantu` int(11) NOT NULL,
  `akses_publik` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `nomor`, `nama`, `tanggal`, `kategori`, `jenis`, `kandungan_informasi`, `ppid_pembantu`, `akses_publik`, `created_at`, `updated_at`) VALUES
(1, '0001', 'Profil Dinas Komunikasi dan Informatika', '2017-03-23', 1, 1, '<p>SDG</p>\r\n', 0, 1, '2017-03-21 16:46:16', '2017-03-21 09:46:16'),
(2, '0002', 'Geografis', '2017-03-16', 3, 1, 'gsdgh', 2, 1, '2017-03-16 11:17:27', '2017-03-16 11:17:27'),
(3, '0003', 'Geografis', '2017-03-16', 3, 1, 'gsdgh', 2, 1, '2017-03-16 11:20:34', '2017-03-16 11:20:34'),
(4, '0004', 'Geografis', '2017-03-23', 3, 2, 'gsdgh', 2, 1, '2017-03-20 07:06:23', '2017-03-20 00:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `file_dokumen`
--

CREATE TABLE IF NOT EXISTS `file_dokumen` (
  `id` int(11) NOT NULL,
  `id_dokumen` int(11) NOT NULL,
  `direktori` varchar(250) NOT NULL,
  `filename` varchar(350) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_dokumen`
--

INSERT INTO `file_dokumen` (`id`, `id_dokumen`, `direktori`, `filename`, `created_at`, `updated_at`) VALUES
(3, 9, '0009', 'BANGKO.NILAI.RAPOR.2016.xlsx', '2017-03-19 20:53:04', '2017-03-19 20:53:04'),
(4, 9, '0009', 'Pedoman.Penyusunan.RKAH.xlsx', '2017-03-19 20:53:20', '2017-03-19 20:53:20'),
(5, 9, '0009', 'Futsal.xlsx', '2017-03-19 20:54:50', '2017-03-19 20:54:50'),
(6, 9, '0009', 'ASET.SDN.51.Kubu.Kandang.2016.xlsx', '2017-03-19 21:36:57', '2017-03-19 21:36:57'),
(9, 2, '0002', 'CV-Irwan.Kurniawan_4183.pdf', '2017-03-21 06:56:24', '2017-03-21 06:56:24'),
(12, 1, '0001', 'codexworld_4.pdf', '2017-03-21 10:41:17', '2017-03-21 10:41:17'),
(13, 1, '0001', 'daftunit.rpt-cetak2.pdf', '2017-03-21 10:41:23', '2017-03-21 10:41:23'),
(14, 1, '0001', 'document.pdf_2.pdf', '2017-03-21 10:41:29', '2017-03-21 10:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_prosedur`
--

CREATE TABLE IF NOT EXISTS `gambar_prosedur` (
  `id` int(11) NOT NULL,
  `id_prosedur` int(11) NOT NULL,
  `filename` varchar(350) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE IF NOT EXISTS `header` (
  `id` int(11) NOT NULL,
  `nama` varchar(350) NOT NULL,
  `gambar` varchar(350) NOT NULL,
  `url` varchar(350) NOT NULL,
  `aktif` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `nama`, `gambar`, `url`, `aktif`, `created_at`, `updated_at`) VALUES
(8, 'Kantor Bupati', '1490179365.png', '#', 1, '2017-03-22 10:42:46', '2017-03-22 03:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_informasi`
--

CREATE TABLE IF NOT EXISTS `jenis_informasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(350) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_informasi`
--

INSERT INTO `jenis_informasi` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Informasi Berkala', '2017-03-16 05:00:55', '2017-03-16 05:00:55'),
(2, 'Informasi Serta Merta', '2017-03-16 05:01:03', '2017-03-16 05:01:03'),
(3, 'Informasi Setiap Saat', '2017-03-16 05:01:23', '2017-03-16 05:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_informasi`
--

CREATE TABLE IF NOT EXISTS `kategori_informasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(350) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_informasi`
--

INSERT INTO `kategori_informasi` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Profil Badan Publik', '2017-03-16 05:02:46', '2017-03-16 12:02:46'),
(3, 'Program dan Kegiatan', '2017-03-16 05:03:43', '2017-03-16 12:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_13_132522_create_permohonan_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permohonan`
--

CREATE TABLE IF NOT EXISTS `permohonan` (
  `id` int(10) unsigned NOT NULL,
  `nomor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nama_pemohon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nomor_identitas` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pekerjaan` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `telepon` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `informasi_diperlukan` text COLLATE utf8_unicode_ci NOT NULL,
  `informasi_tujuan` text COLLATE utf8_unicode_ci NOT NULL,
  `cara_memperoleh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cara_mendapatkan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ppid_pembantu`
--

CREATE TABLE IF NOT EXISTS `ppid_pembantu` (
  `id` int(11) NOT NULL,
  `nama` varchar(350) NOT NULL,
  `alamat` varchar(350) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(350) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `kontak_person` varchar(350) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ppid_pembantu`
--

INSERT INTO `ppid_pembantu` (`id`, `nama`, `alamat`, `email`, `website`, `telepon`, `kontak_person`, `created_at`, `updated_at`) VALUES
(2, 'Dinas Komunikasi dan Informatika', 'Jl. Jenderal Sudirman, Rengas Condong, Muara Bulian, Kabupaten Batang Hari, Jambi 36613', 'diskominfo@batangharikab.go.id', '', '0743 21282', 'Si Pulan 085369702818', '2017-03-16 18:04:59', '0000-00-00 00:00:00'),
(3, 'Dinas Sosial', 'Jl. Jenderal Sudirman, Rengas Condong, Muara Bulian, Kabupaten Batang Hari, Jambi 36613', 'dinsos@batangharikab.go.id', '', '0743 -21087', 'Gunawan 087512345004', '2017-03-16 18:07:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
  `id` int(11) NOT NULL,
  `nama` varchar(350) NOT NULL,
  `isi` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `nama`, `isi`, `updated_at`, `created_at`) VALUES
(1, 'Seputar PPID', '<p><strong>PEJABAT PENGELOLA INFORMASI DAN DOKUMENTASI KABUPATEN BATANG HARI</strong></p>\r\n\r\n<p>Di era globalisasi, informasi merupakan kebutuhan pokok setiap orang bagi pengembangan pribadi dan lingkungan sosialnya serta merupakan bagian penting bagi ketahanan nasional. Hak memperoleh informasi merupakan hak asasi manusia dan keterbukaan informasi publik merupakan salah satu ciripenting negara demokratis yang menjunjung tinggi kedaulatan rakyat untuk mewujudkanpenyelenggaraan Negara yang baik. Pemberlakuan Undang-Undang Nomor 14 tahun 2008 tentang Keterbukaan Inormasi Publik pada 30 April 2010 merupakan momentum penting dalam mendorong keterbukaan di Indonesia, khususnya di Kabupaten Batang Hari. Undang-Undang ini telah memberikan landasan hukum terhadap hak setiap orang untuk memperoleh informasi publik di mana setiap Badan Publik mempunyai kewajiban dalam menyediakan dan melayani permohonan informasi publik secara cepat,tepat waktu, biaya ringan dan cara sederhana.</p>\r\n\r\n<p>Sesuai dengan Keputusan Menteri Komunikasi dan Informatika Republik Indonesia Nomor 117 tahun 2010 tentang Organisasi Pengelola Informasi dan Dokumentasi di mana salah satu tugas Pejabat Pengelola Informasi dan Dokumentasi (PPID) adalah menyediakan akses informasi publik bagi pemohon informasi. Terkait dengan tugas tersebut, Pemerintah Kabupaten Batang Hari menetapkan Pedoman Pengelolaan Informasi dan Dokumentasi di lingkungan Pemerintah Kabupaten Batang Hari . Dengan adanya pedoman ini, diharapkan implementasi Undang-Undang Nomor 14 tahun 2008 tentang Keterbukaan Informasi Publik dapat berjalan efektif dan hak-hak publik terhadap informasi yang berkualitas secara nyata terpenuhi.</p>\r\n\r\n<p>Demi menunjang pelaksanaan kegiatan PPID dan mempermudah masyarakat untuk memperoleh informasi&nbsp; telah dibuka website <strong>ppid.batangharikab</strong><strong>.go.id</strong>&nbsp;yang dikelola oleh Dinas Perhubungan, Komunikasi dan Informatika Kabupaten Batang Hari dan perangkat sarana prasarana lainnya yang masih dalam pembenahan, hal ini merupakan langkah awal untuk menunjang keterbukaan informasi pada Badan Publik yang ada di Kabupaten Batang Hari agar lebih maju, transparan, akuntabel dan responsif&nbsp; dalam mewujudkan dan merubah paradigma baru yang mengarah pada Pemerintahan sehingga terwujudnya Good Governance&nbsp; dan Clean Goverment dalam mendukung tercapainya program pemerintahan dan pembangunan di Kabupaten Batang Hari .</p>\r\n\r\n<p>Bagi pemohon informasi&nbsp; diharapkan mau memanfaatkan sarana yang telah disediakan melalui wibesite ini atau datang langsung kepada badan publik untuk memperoleh informasi yang diinginkan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Implementasi UU No 14 Tahun 2008 tentang Keterbukaan Informasi Publik</strong></p>\r\n\r\n<p><strong>Siapa yang wajib menjalankan :</strong></p>\r\n\r\n<p>Badan Publik Pemerintah dan Badan Publik Non Pemerintah</p>\r\n\r\n<p><strong>UU No 14 Tahun 2015, pasal 1 ayat 3 :</strong></p>\r\n\r\n<p>Badan Publik adalah lembaga eksekutif , legislative, yudikatif dan badan lain yang fungsi dan tugas pokoknya berkaitan dengan penyelenggaraan Negara, yang sebagian atau seluruh dananya bersumber dari Anggaran Pendapatan dan Belanja Negara (APBN) dan/atau Anggaran Pendapatan dan Belanja Daerah (APBD) , atau organisasi non Pemerintah sepanjang sebagian atau seluruh dananya bersumber dari Anggaran Pendapatan dan Belanja Negara (APBN) dan/atau Anggaran Pendapatan dan Belanja Daerah (APBD) , sumbangan masyarakat, dan/atau luar negeri.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kewajiban Badan Publik :</strong></p>\r\n\r\n<p><strong>UU No 14 Tahun 2008 pasal 7</strong></p>\r\n\r\n<ol>\r\n	<li>Badan Publik wajib menyediakan, memberikan dan/atau menerbitkan informasi publikyang berada di bawah kewenangannya kepada Pemohin Informasi Publik, selain informasi yang dikecualikan sesuai dengan ketentuan</li>\r\n	<li>Badan Publik wajib menyediakan Informasi Publik yang akurat, benar dan tidak menyesatkan</li>\r\n	<li>Untuk melaksanakan kewajiban sebagimana dimaksud pada ayat (2) , Badan Publik harus membangun dan mengembangkan system informasi dan dokumentasi untuk mengelola informasi public secara baik dan efisien sehingga dapat diakses dengan mudah.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hak Pemohon Informasi Publik :</strong></p>\r\n\r\n<p><strong>UU No 14 Tahun 2008 pasal 4</strong></p>\r\n\r\n<ol>\r\n	<li>Setiap orang berhak memperoleh informasi public sesuai dengan ketentuan Umdang Undang ini.</li>\r\n	<li>Setiap Orang Berhak :\r\n	<ol>\r\n		<li>Melihat dan mengetahui Informasi Publik</li>\r\n		<li>Menghadiri pertemuan public yang terbuka untuk umum untuk memperoleh Informasi Publik</li>\r\n		<li>Mendaptkan salinan informasi Publik melalui permohonan sesuai dengan Undang &ndash;Undang ini dan/atau</li>\r\n		<li>Menyebarluaskan informasi Publik sesuai peraturan perundang-undangan .</li>\r\n		<li>Setiap Pemohon Informasi Publik berhak mengajukan permintaan informasi disertai&nbsp; alasan permintaan tersebut</li>\r\n		<li>Setiap Permohonan Informasi Publik berhak mengajukan gugatan ke pengadilan apabila dalam memperoleh informasi Publik mendapat hambatan atau kegagalan sesuai dengan ketentuan Undang Undang ini.</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kewajiban Pengguna Informasi Publik : </strong></p>\r\n\r\n<p><strong>UU No 14 Tahun 2008 pasal 5</strong></p>\r\n\r\n<ol>\r\n	<li>Pengguna Informasi Publik wajib menggunakan Informasi Publik sesuai dengan ketentuan peraturan perundang undangan</li>\r\n	<li>Pengguna Informasi Publik wajib mencantumkan sumber darimana ia memperoleh Informasi Publik, baik yang digunakan untuk kepentingan sendiri maupun untuk keperluan publikasi sesuai dengan ketentuan peraturan perundang-undangan</li>\r\n	<li>&nbsp;</li>\r\n</ol>\r\n\r\n<p><strong>Apa yang harus dilakukan Badan Publik :</strong></p>\r\n\r\n<p><strong>UU No 14 Tahun 2008 pasal 13 ayat 1</strong></p>\r\n\r\n<p>Untuk mewujudkan pelayanan cepat, tepat dan sederhana setiap Badan Publik :</p>\r\n\r\n<ol>\r\n	<li>Menunjuk Pejabat Pengelola Informasi dan Dokumentasi (PPID) dan,</li>\r\n	<li>Membuat dan mengembangkan sistem penyediaan layanan informasi secara cepat , mudah, dan wajar sesuai petunjuk teknis standar layanan informasi public yang berlaku secara nasional</li>\r\n</ol>\r\n\r\n<p><strong>UU No 14 Tahun 2008 pasal 1 ayat 9 :</strong></p>\r\n\r\n<p>Pejabat Pengelola Informasi dan Dokumentasi (PPID) adalah Pejabat yang bertanggung di bidang penyimpanan, pendokumentasian, penyediaan, dan/atau pelayanan informasi di badan publik.</p>\r\n\r\n<p><strong><em>PPID Kabupaten Batang Hari</em></strong></p>\r\n\r\n<p><a href="http://localhost/ppid/public/dowload/spesial/1490108515/dalmolen.pdf"><strong><em>Download Formulir Permohonan Informasi</em></strong></a></p>\r\n', '2017-03-21 17:37:09', '2017-03-21 03:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `prosedur`
--

CREATE TABLE IF NOT EXISTS `prosedur` (
  `id` int(11) NOT NULL,
  `nama` varchar(350) NOT NULL,
  `isi` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prosedur`
--

INSERT INTO `prosedur` (`id`, `nama`, `isi`, `updated_at`, `created_at`) VALUES
(6, 'Prosedur Pengajuan Keberatan', '<p>Prosedur Permohonan INforma</p>\r\n', '2017-03-21 17:40:18', '2017-03-20 23:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL,
  `alamat` varchar(350) NOT NULL,
  `nomor_telepon` varchar(350) NOT NULL,
  `email` varchar(350) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spesial_konten`
--

CREATE TABLE IF NOT EXISTS `spesial_konten` (
  `id` int(11) NOT NULL,
  `nama` varchar(350) NOT NULL,
  `filename` varchar(350) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci KEY_BLOCK_SIZE=16;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `nama`, `email`, `password`, `usertype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', 'admin-ppid@batangharikab.go.id', '$2y$10$TTfvqTPduN5khtP4qMIXFeRHzS8hkJUf0245mSHumkjjba2RjQswq', 'admin', 'pt990yImou0iAwIHGTccsv3Sw4jkAXScYWCPFGqrfMHjX8sDQoHD5Qb2ucDB', '2017-03-14 08:40:36', '2017-03-22 03:43:29'),
(3, 'master', 'Admin Master', 'irwanka.email@gmail.com', '$2y$10$qZTWZ6cgnpcFISMJeHoOhO4BUPK/arTDfVBVyeyAv4teQ5l6jyG5q', 'admin', 'F3o1wutBxdj2RbQrJtlcs4oUi6yDcjQemdFGsVdlYLjtP5RnpkKRvspKZUyw', '2017-03-21 08:52:49', '2017-03-21 08:56:49'),
(4, 'operator', 'Operator PPID', 'lambotoleh@gmail.com', '$2y$10$CtUlyk6herGKk5jkjLafGOY2Y5haCcqjDEAy.l5ym5GxE.UjaTIe6', 'operator', 'G15n3c15dwS1qK5MCg3UPxBWAjYYqk1xb8wMgB9Ij9Tt1inByIynrYKCsIhL', '2017-03-21 09:57:31', '2017-03-21 10:05:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alasan_keberatan`
--
ALTER TABLE `alasan_keberatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_dokumen`
--
ALTER TABLE `file_dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_informasi`
--
ALTER TABLE `jenis_informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_informasi`
--
ALTER TABLE `kategori_informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permohonan`
--
ALTER TABLE `permohonan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ppid_pembantu`
--
ALTER TABLE `ppid_pembantu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prosedur`
--
ALTER TABLE `prosedur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spesial_konten`
--
ALTER TABLE `spesial_konten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alasan_keberatan`
--
ALTER TABLE `alasan_keberatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `file_dokumen`
--
ALTER TABLE `file_dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jenis_informasi`
--
ALTER TABLE `jenis_informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kategori_informasi`
--
ALTER TABLE `kategori_informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `permohonan`
--
ALTER TABLE `permohonan`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ppid_pembantu`
--
ALTER TABLE `ppid_pembantu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `prosedur`
--
ALTER TABLE `prosedur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `spesial_konten`
--
ALTER TABLE `spesial_konten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
