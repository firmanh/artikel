-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02 Feb 2016 pada 08.13
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `firmanhidayat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
`id_artikel` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi_artikel` text NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `id_user`, `judul`, `isi_artikel`, `id_kategori`, `tanggal`) VALUES
(1, 0, '$judul', '$isi_artikel', 0, '0000-00-00 00:00:00'),
(2, 2, 'sdfsd', 'dsfsdf', 1, '2016-02-01 15:32:43'),
(3, 2, 'Perkembangan dunia Programming di masa kini', 'Distinctively underwhelm effective channels after focused opportunities. Efficiently reintermediate empowered methods of empowerment before worldwide resources. Phosfluorescently re-engineer mission-critical processes whereas team driven ideas. Dramatically predominate go forward deliverables for effective process improvements. Intrinsicly drive synergistic metrics before empowered benefits.\r\n\r\nDynamically drive interdependent vortals and integrated e-business. Authoritatively procrastinate real-time opportunities with 24/7 customer service. Progressively create plug-and-play technology after fully researched expertise. Phosfluorescently generate superior sources without reliable methodologies. Completely actualize collaborative growth strategies through fully tested growth strategies.\r\n\r\nInteractively enable functionalized results rather than resource sucking products. Uniquely repurpose distributed materials with goal-oriented action items. Dramatically maintain emerging channels for client-centric metrics. Distinctively simplify intermandated applications via worldwide meta-services. Continually syndicate extensive manufactured products via interdependent ideas.\r\n\r\nUniquely coordinate high-payoff infrastructures whereas maintainable products. Proactively syndicate error-free channels rather than ethical best practices. Globally utilize multimedia based infomediaries without multidisciplinary initiatives. Assertively morph exceptional communities vis-a-vis magnetic convergence. Professionally exploit bleeding-edge action items before resource sucking e-business.\r\n\r\nIntrinsicly create client-centric products without 24/365 synergy. Interactively transition corporate manufactured products vis-a-vis long-term high-impact internal or &quot;organic&quot; sources. Enthusiastically re-engineer resource-leveling process improvements vis-a-vis best-of-breed action items. Appropriately develop resource-leveling value after high standards in paradigms. Dynamically extend global &quot;outside.', 4, '2016-02-01 15:33:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id_kategori` int(11) NOT NULL,
  `kategori` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'submit'),
(2, '$tambah_kategori'),
(3, 'sdfs'),
(4, 'programming'),
(5, 'programming'),
(6, 'jaringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
`id_komentar` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
 ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
 ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
