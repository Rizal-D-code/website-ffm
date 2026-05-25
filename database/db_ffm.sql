-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Sep 2023 pada 17.00
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ffm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id`, `photo`) VALUES
(5, 'dc3c6237115ce2e3050ee1b1e79429fb.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id`, `title`, `text`, `photo`) VALUES
(3, 'Universitas Pertahanan Republik Indonesia', 'Sebagai Kampus Bela Negara yang Menjunjung Tinggi Identitas, Naionalisme, dan Integritas', '34489eec05158a9946533249a2cd018f.jpeg'),
(4, 'Fakultas Farmasi Militer', 'Menjadikan Fakultas unggulan bidang farmasi militer pada tahun 2024 di tingkat global\r\nyang melestarikan nilai – nilai kebangsaan', 'cbdee91952c41a1bbc8c18315dd93747.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bg_majors`
--

CREATE TABLE `bg_majors` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bg_majors`
--

INSERT INTO `bg_majors` (`id`, `photo`) VALUES
(1, 'b33cf167c20cef419c93c4b9ee494b0a.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `photo`) VALUES
(11, 'Laboratorium', 'laboratorium-20230817012705.jpeg'),
(12, 'Ruang Fitnes', 'ruang-fitnes-20230817012724.jpeg'),
(13, 'Ruang Kelas', 'ruang-kelas-20230817012807.jpg'),
(14, 'Perpustakaan', 'perpustakaan-20230817012825.jpg'),
(15, 'Lapangan Tenis', 'lapangan-tenis-20230817012847.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubins`
--

CREATE TABLE `hubins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hubins`
--

INSERT INTO `hubins` (`id`, `name`, `photo`) VALUES
(14, 'Universitas Indonesia', ''),
(15, 'w', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identity`
--

INSERT INTO `identity` (`id`, `meta_title`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus.', 'Fakultas Farmasi Militer', '18efe02e7fcc5c6a4ee8c619e501a7d9.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `name`, `photo`) VALUES
(0, 'Marching Band', 'marching-band-20230817050236.jpg'),
(0, 'Pencak Silat', 'pencak-silat-20230817054044.jpg'),
(0, 'Kolintang', 'kolintang-20230817054108.jpg'),
(0, 'Paduan Suara', 'paduan-suara-20230817054128.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(5, '::1', 'rizal@gmail.com', 1693639939),
(7, '::1', 'rz@gmail.com', 1693649838),
(8, '::1', 'rz@gmail.com', 1693649848);

-- --------------------------------------------------------

--
-- Struktur dari tabel `majors`
--

CREATE TABLE `majors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `user_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 2, 'Pengaturan Web', '', 'fas fa-fw fa-cog', 'Y'),
(3, 2, 'Manajemen Media', '', 'fas fa-fw fa-school', 'Y'),
(4, 2, 'Struktur Organisasi', 'struktur', 'fas fa-fw fa-sitemap', 'Y'),
(5, 1, 'Manajemen User', 'user', 'fas fa-fw fa-user', 'Y'),
(6, 2, 'Profile', '', 'fas fa-fw fa-home', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `opening`
--

CREATE TABLE `opening` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `opening`
--

INSERT INTO `opening` (`id`, `content`, `photo`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel.', '92d81dcc1fc0dceb8b582fc271d48a76.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `seo_title`, `content`, `photo`, `is_active`, `date`) VALUES
(14, 'Fakultas Farmasi Militer Ikut Andil dalam Pembentukan Pelatihan Kedaruratan Kesehatan', 'fakultas-farmasi-militer-ikut-andil-dalam-pembentukan-pelatihan-kedaruratan-kesehatan', 'Fakultas Farmasi Militer menjadi salah satu Penyokong dalam pembentukan Pelatihan Kedaruratan Kesehatan tingkat Global yang dibawahi oleh Universitas Pertahanan RI dari Pemerintah Indonesia yang berkerja sama dengan Organisasi Kesehatan Dunia (WHO).\r\n\r\n­­­Menteri Kesehatan Ir. Budi Gunadi Sadikin, CHFC., CLU., Menteri Pertahana Letnan Jenderal TNI (Purn.) H. Prabowo Subianto Djojohadikusumo, Dirjen WHO Dr. Tedros Adhanom Ghebreyesus di sela KTT G20, telah menandatangani nota kesepahaman (Memorandum of Understanding/MoU) pada Selasa 15 November di Bali. Fakultas Farmasi Militer dibawah  Unhan RI diwakilkan oleh Ibu Prof. Apt. Yahdiana Harahap, M.S.\r\n\r\nPada kesepakatan Kementerian Kesehatan, Kementerian Pertahanan, dan WHO dalam kolaborasi sistem pertahanan global menghadapi pandemi di masa depan, Mereka menetapkan Universitas Pertahanan Republik Indonesia sebagai Pusat pelatihan Multi-Negara untuk darurat kesehatan dengan nama “The WHO Multi Country EMT Training Hub For Health Emergency Operational Readiness”.\r\n\r\nPada G20 ini diharapkan  dapat membangun kolaborasi pentahelix, yang melibatkan pemerintah, masyarakat,  media, akademisi, dan entitas bisnis untuk berkerjasama memecahkan masalah dalam mengurangi risiko bencana.\r\n\r\nDengan demikian, fakultas farmasi militer menjadi semangat untuk terus berkembang dalam mengaplikasikan ilmu ditingkat global. Hal ini sesuai dengan harapan Universitas Pertahanan RI untuk membangun Word Class University', 'ffm-20230818055551.jpeg', 'Y', '2023-08-18'),
(15, 'Pengabdian Masyarakat FFM Unhan RI “Bahaya Penyalahgunaan Narkoba di Kalangan Remaja di SMA 1 Cibinong”', 'pengabdian-masyarakat-ffm-unhan-ri-bahaya-penyalahgunaan-narkoba-di-kalangan-remaja-di-sma-1-cibinong', 'FFM Unhan RI berkolaborasi dengan Badan Narkotika Nasional (BNN) menyelenggarakan Pengabdian kepada Masyrakat dalam bentuk Penyuluhan mengenai Bahaya Narkoba di Kalangan Remaja.\r\n\r\nSaat ini penyalahgunaan narkoba bagi generasi penerus bangsa kian menghawatirkan. Survei dari Badan Narkotika Nasional (BNN) dan Lembaga Ilmu Pengetahuan Indonesia (LIPI) tahun 2019 menunjukan 2,3 juta pelajar dan mahasiswa di indonesia pernah menggunakan atau mengkonsumsi narkoba. Angka ini setara dengan 3,2 ?ri populasi kelompok tersebut. Jika hal ini terus dibiarkan dan tanpa pencegahan mungkin kita tidak akan bisa berharap kepemimpinan mereka dimasa yang akan datang. Pengunaan narkoba bagi pelajar juga mendapatkan perhatian dari skala global. The United Nation Office on Drugs and Crime (UNDOC) menemukan 275 juta orang dalam rentang usia 15 hingga 64 tahun pernah mengkonsumsi narkoba minimal sekali. Angka ini menjadi peringatan bahwa upaya untuk penanganaan masalah narkoba dikalangan pelajar dan mahasiswa tidak hanya dapat dilakukan secara masif saja tapi juga harus lebih agresif karna ini sangat berefek kepada keberlangsungan hidup bangsa. Melihat fenomena tersebut, maka jajaran civitas akademika Fakultas Farmasi Militer, Unhan RI berusaha mengambil peran dalam memberikan edukasi dan sosialisasi kepada kalangan remaja terkait dengan bahaya penyalahgunaan Narkoba melalui program kegiatan Pengabdian Kepada Masyarakat (PkM).\r\n\r\n\r\nKegiatan PkM ini dilaksanakan di SMAN 1 Cibinong. Kegiatan ini diikuti oleh 70 peserta siswa kelas 12. Kegiatan ini dimulai dengan pembukaan dan pembacaan doa oleh MC, kemudian dilanjut dengan sambutan-sambutan. Materi yang pertama mengenai Vidio Edukasi Bahaya Merokok disampaikan oleh kadet FFM Unhan RI yakni F. Josse Pasca Pradana, Hisyam Nabil Najmuddin Al-Baariq, dan Oktavian Arya Putra. Lalu dilanjutkan pemaparan materi kedua tentang Pencegahan Narkoba di Kalangan Remaja yang disampaikan oleh Penyuluh Narkoba Ahli Muda BNN Kabupaten Bogor, Bapak Eko Sumartono. Sesi pemaparan materi yang ketiga atau materi terakhir mengenai New Psychoactive Substance (NPS) disampaikan oleh Tesia Aisyah Rahmania, S.Si., M.Pharm.Sci dari Fakultas Farmasi Militer Unhan RI.  Kegiatan ditutup dengan sesi tanya jawab dan sesi foto bersama peserta kegiatan. Kegiatan disambut baik oleh para peserta, hal ini dapat dilihat dari antusiasme dan keaktifan para peserta sepanjang rangkaian kegiatan. Kegiatan berjalan dengan lancar sampai akhir acara.\r\n\r\nAdapun hasil yang diharapkan dalam kegiatan pengabdian kali ini adalah terbentuknya kader Sekolah Bersinar di Kabupaten Bogor yang dapat mendukung program pemberantasan dan pencegahan penyalahgunaan narkoba di Indonesia', '-20230818060158.png', 'Y', '2023-08-18'),
(16, 'Hari Ke-2 : 2nd International Conference on Pharmaceutical Sciences and Military Pharmacy (ICOPMAP)', 'hari-ke-2-2nd-international-conference-on-pharmaceutical-sciences-and-military-pharmacy-icopmap', 'Bogor, Hari kedua kegiatan 2nd International Conference on Pharmaceutical Sciences and Military Pharmacy (ICOPMAP), dengan tema “Pharmaceutical Perspective: From Upstream to Downstream for Reinforcing Health Resilience”. Konferensi ini diselenggarakan oleh Fakultas Farmasi Militer (FFM) Unhan RI, yang berlangsung secara hybrid (online dan offline), dari tanggal 3 s.d. 4 September 2022. Minggu (04/09/2022).\r\n\r\nHari kedua konferensi dimulai dengan pemateri 6 plenary speakers yang berasal dari dalam dan luar negeri diantaranya Dekan Fakultas Farmasi Militer Unhan RI Prof. apt. Yahdiana Harahap, MS. Assoc. Prof. Surakit Nathisuwan, Dekan Fakultas Farmasi, Mahidol University, Thailand. Dr. apt. Fatimah, MSc, berasal dari School of Pharmacy, University College London, UK. Prof. Dr. apt. Arry Yanuar, M.Si, Dekan Fakultas Farmasi, Universitas Indonesia. Prof. Habibah A. Wahab, M.Sc, Dekan School of Pharmaceutical Science University Sains Malaysia, dan Dr. apt. Mas Rahman Roestan, MBA, Board of Executive PT. Bio Farma, Indonesia.\r\n\r\nSesi dilanjutkan dalam break-out rooms untuk masing-masing bidang ilmu farmasi. Di dalam break-out room tersebut dilaksanakan sesi invited speakers, oral dan poster competition. Break-out room A diisi oleh bidang Kimia Farmasi dan Farmasi Militer dan Kepemimpinan dengan 6 invited speakers yang terdiri atas Prof. Dr. apt. M. Yuwono, MS, Fakultas Farmasi, Universitas Airlangga. apt. Drs. Pamian Siregar, MM, Kimia Farma Sungwun Pharmacopeia, Indonesia. Prof. Irwandi Jaswir, Ph.D, The International Islamic University Malaysia, Malaysia. Mayjen TNI (Purn) dr. Daniell Tjen, Sp.S, Indonesia Health Resilience Centre. Marsma TNI Dr. Drs. Apt. Yuli Subiakto, M.Si, Fakultas Farmasi Militer, Universitas Pertahanan RI. Prof. Dr.rer.nat.,Drs. I Made Agus Gelgel Wirasuta, Apt., M.Si, Fakultas MIPA Prodi Farmasi, Universitas Udayana.\r\n\r\n\r\nAdapun break-out room B diisi oleh Biologi Farmasi dan Farmasi Klinik dengan 6 Invited Speakers diantaranya Prof. Dr. apt. Elfahmi, M.Si dari Sekolah Farmasi, Institut Teknologi Bandung. Prof. Dr. Ibrahim Jantan, Univeristi Kebangsaan Malaysia. apt. Editha Renesteen, M.Sc, Fakultas Farmasi Militer, Universitas Pertahanan RI. Kolonel Dr. apt. Widyati, M.Clin.Pharm, Fakultas Farmasi Militer, Universitas Pertahanan RI. Prof. Dr. Syed Azhar Syed Sulaiman, School of Pharmaceutical Science University Sains Malaysia, dan dr. Dedyanto Henky Saputra, M.Gizi, AIFO-K, Medical General Manager, PT Kalbe Farma.\r\n\r\nTerakhir break-out room C Teknologi Farmasi, Farmakologi dan Toksikologi dengan 5 invited speakers yang terdiri atas Dr.rer.nat. Ronny Martien, M.Si, Fakultas Farmasi, Universitas Gadjah Mada. apt. Delly Ramadon, M.Farm., Ph.D, Fakultas Farmasi, Universitas Indonesia. apt. Dwiyanto Hari Nugraha, M.Si, Sekolah Farmasi, Institut Teknologi Bandung. Prof. Dr. apt. Ajeng Diantini, M.Si, Fakultas Farmasi, Universitas Padjajaran. Dr. apt. Bantari Wisynu Kusuma Wardhani, M.Biomed, Fakultas Farmasi Militer, Universitas Pertahanan RI.\r\n\r\nSelanjutnya, diakhiri dengan agenda awarding moment, pengumuman best oral and poster presentation. Tesia Aisyah Rahmania selaku Chairman of 2nd ICOPMAP menyatakan harapannya bahwa dengan adanya international conference ini dapat memicu semangat dan keinginan serta potensi dari kadet dan mahasiswa Indonesia khususnya mitra 2nd ICOPMAP untuk semangat mengikuti konferensi ilmiah agar terbangunnya pola pikir researcher (peneliti), serta pola pikir mahasiswa untuk melakukan inovasi. Harapannya ide mahasiswa selaras dengan visi peningkatan dari kemajuan Indonesia', 'fmm-20230818060239.png', 'Y', '2023-08-18'),
(17, 'Hari Ke-1 : 2nd International Conference on Pharmaceutical Sciences and Military Pharmacy (ICOPMAP)', 'hari-ke-1-2nd-international-conference-on-pharmaceutical-sciences-and-military-pharmacy-icopmap', 'Bogor – Rektor Universitas Pertahanan RI Laksamana Madya TNI Prof. Dr. Ir. Amarulla Octavian, S.T., M.Sc., DESD, ASEAN Eng., secara resmi membuka kegiatan 2nd International Conference on Pharmaceutical Sciences and Military Pharmacy (ICOPMAP) yang diselenggarakan oleh Fakultas Farmasi Militer, Universitas Pertahanan RI. Kegiatan ini berlangsung secara hybrid (online dan offline). Sabtu dan Minggu (03-04/09/2022).\r\n\r\nUpacara pembukaan ini dihadiri oleh Menteri Kesehatan Indonesia Ir. Budi Gunadi Sadikin, Menteri Bappenas yang diwakili oleh Pungkas Bahjuri Ali, S.TP, MS, Ph.D, dan FIP yang diwakili oleh Wakil Presiden Bidang  Militer dan Emergensi Farmasi Brigadier General Dato’ Dr. A Halim Basari sebagai keynote speakers.\r\n\r\nBeberapa undangan yang hadir diantaranya Organisasi Kesehatan Dunia (WHO), International Pharmaceutical Federation (FIP), Defense Thread Reduction Agency (DTRA), Amerika Serikat, Inggris, Malaysia, Thailand, Filipina, dan kolaborator yang berasal dari industri farmasi nasional. Serta para tamu undangan diantaranya, Kepala RSPAD Gatot Subroto, Letjen dr. A. Budi Sulistya, Sp.THT-KL., M.A.R.S., Wakil Rektor, pejabat eselon I, dan II Unhan RI, Ketua Asosiasi Perguruan Tinggi Farmasi Indonesia (APTFI), Prof. Dr. apt. Daryono Hadi Tjahjono, M.Sc., Kepala Pusat Kesehatan Tentara Nasional Indonesia, dan Kepala Pusat Kesehatan Angkatan Darat, Perwakilan Ikatan Apoteker Indonesia (IAI), Dekan dan Wakil Dekan Fakultas Farmasi Universitas Mahidol, Fakultas Ilmu Farmasi Universitas Sains Malaysia, Fakultas Farmasi Universiti Kebangsaan Malaysia, Fakultas Farmasi Universitas Indonesia, dan Fakultas Farmasi Universitas Padjajaran, Kepala Lembaga Biologi dan Vaksin TNI, Kepala Lembaga Farmai TNI Angkatan Darat, Angkatan Laut, dan Angkatan Udara, serta Kepala Lembaga Biomedik, Direktur PT. Dexa Medica, PT. Bio Farma, PT. Kalbe Farma, PT Novell Pharmaceutical Laboratories, PT. Yakult Indonesia Persada, PT. Berca Niaga Medica, PT. Ditek Jaya, PT. Guardian Pharmatama dan PT. Gaia Science.\r\n\r\nRektor Unhan RI dalam sambutannya menyampaikan terima kasih kepada semua pembicara yang hadir pada konferensi ini keynote, plenary, dan invited speakers. Rektor Unhan RI menyampaikan bahwa semua pembicara akan memberikan wawasan yang sangat berharga dan bermanfaat untuk memperkuat ketahanan kesehatan dari hulu hingga hilir.  Rektor Unhan RI sangat berharap bahwa konferensi ini akan merangsang ide-ide baru, strategi, dan rencana aksi yang akan membawa kontribusi signifikan bagi kolaborasi farmasi dalam proses pemulihan dari hulu ke hilir untuk memperkuat ketahanan Kesehatan nasional.\r\n\r\nDinamika tantangan lingkungan strategis yang semakin kompleks, bergerak sangat cepat dan tidak dapat diprediksi. Menjawab dinamika ini, bangsa dan negara berupaya mempersiapkan sumber daya manusia yang berkualitas baik dari segi keilmuan maupun kepribadian sebagai garda terdepan kedaulatan bangsa Indonesia. Pembentukan sumber daya manusia yang berkualitas tentunya membutuhkan dukungan dan sinergi dari segenap komponen bangsa sesuai tugas dan fungsinya.\r\n\r\n\r\nLebih lanjut, sejalan dengan program pemerintah dalam mewujudkan implementasi visi Presiden RI No.1 tentang pengembangan sumber daya manusia unggul Indonesia menuju 2045, maka Unhan RI berperan dan berkontribusi untuk menyiapkan serta membentuk SDM pertahanan berkualitas, unggul dan berwawasan kebangsaan yang dilandasi semangat bela negara melalui Pendidikan, Penelitian dan Pengabdian kepada Masyarakat.\r\n\r\nDalam kesempatan ini, Dekan Fakultas Farmasi Militer, Unhan RI Prof. Dr. apt. Yahdiana Harahap, MS memberikan sambutan dan mengucapkan terima kasih kepada seluruh sponsor dan kolaborator baik yang berasal dari universitas maupun industri farmasi yang telah memberikan dukungan demi mensukseskan kegiatan konferensi ini.\r\n\r\nLebih lanjut Prof Yahdiana menyampaikan, konferensi ini merupakan penjabaran dari komitmen kami terhadap pengembangan ilmu farmasi, farmasi klinis, dan farmasi militer. Konferensi ini juga bertujuan untuk menjalin kolaborasi dengan para akademisi, peneliti, dan praktisi baik dari industri farmasi, rumah sakit, dan komunitas farmasi baik pada skala nasional maupun internasional. Pada konferensi kali ini, Fakultas Farmasi Militer merasa beruntung dengan hadirnya keynote, plenary, dan invited speakers, serta presenter dan peserta yang mewakili ilmuwan farmasi dari lembaga terkemuka, universitas luar negeri, dan industri farmasi yang mencakup semua bidang ilmu kefarmasian sehingga kadet mahasiswa dan peserta konferensi memperoleh pengetahuan dan wawasan secara komprehensif.\r\n\r\nOleh karena itu, melalui ICOPMAP ke-2 ini, Fakultas Farmasi Militer Unhan RI tidak hanya mendapatkan pengakuan internasional tetapi juga berdampak lebih besar pada kualitas kehidupan bangsa. Dalam konferensi ICOPMAP ke-2 ini dihadirkan 3 keynote speaker, 17 plenary speaker, 17 invited speaker, 86 presenter oral dan poster, serta 336 peserta.\r\n\r\nDalam Pembukaan Konferensi ICOPMAP 2 FFM Unhan RI, Rektor Unhan RI didampingi oleh Wakil Rektor III Unhan RI, Laksamana Muda TNI Dr. Ir. Suhirwan, S.T., M.MT., M.Tr.Opsla., CIQnR., CIQaR., IPU., ASEAN Eng., M.M., Dekan Fakultas Manajemen Pertahanan Unhan RI Mayjen TNI Dr. Susilo Adi Purwantoro, S. E., M. M. Eng., M.Sc., CIQnR., CIQaR, Dekan Fakultas Teknologi Pertahanan Unhan RI Laksamana Muda TNI Dr. Kasih Prihantoro, S.E., M.M., M.Tr.(Han)., Dekan Fakultas Keamanan Nasional Unhan RI Mayjen TNI Dr. Ir. Pujo Widodo, S.E., S.H., S.T., M.A., M.D.S., M.Si., M.Si (Han), Dekan Fakultas Farmasi Militer Unhan RI, Prof. Dr. apt. Yahdiana Harahap, M.S, Dekan Fakultas Kedokteran Militer Unhan RI Dr. dr. Herqutanto, M.P.H., M.A.R.S, Dekan Fakultas MIPA Militer Unhan RI, Dr. Ir. Ence Darmo Jaya Supena, M.Si., KaLPPM Unhan RI, Laksma Dr. Ir, Nengah Putra A, M.Si.,  Karorenku Unhan RI, Brigadir Jenderal TNI Dr. Resmanto Widodo Putro, S.Sos., M.M., dan Kepala Biro Akademik Unhan RI, Kolonel Kes Dr.I Dewa Ketut Kertawidana., S.K.M., MKKK., CIQar. CiQnR, dan beberapa Wakil Dekan Program Sarjana dan Pascasarjana Unhan RI.', 'a-20230818060423.png', 'Y', '2023-08-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `structure`
--

CREATE TABLE `structure` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `structure`
--

INSERT INTO `structure` (`id`, `photo`) VALUES
(1, '6d3adcdddadd5e2755f99a3c8a2fd5cc.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenus`
--

CREATE TABLE `submenus` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `submenus`
--

INSERT INTO `submenus` (`id`, `menu_id`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Identitas Web', 'identitas', 'Y'),
(3, 3, 'Banner', 'banner', 'Y'),
(4, 3, 'Fasilitas', 'fasilitas', 'Y'),
(5, 3, 'Berita', 'berita', 'Y'),
(7, 3, 'Kegiatan', 'kegiatan', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$pfe4X24wUalRwJseC96pLOh2FshRtmYVNRhS8eLTKCSv9KVXRWxBy', 'admin@mail.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1693649870, 1, 'Muhammad', 'Rizaldi', NULL, '081222332442');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(45, 1, 1),
(46, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bg_majors`
--
ALTER TABLE `bg_majors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hubins`
--
ALTER TABLE `hubins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `opening`
--
ALTER TABLE `opening`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `structure`
--
ALTER TABLE `structure`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `bg_majors`
--
ALTER TABLE `bg_majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `hubins`
--
ALTER TABLE `hubins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `opening`
--
ALTER TABLE `opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `structure`
--
ALTER TABLE `structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `submenus`
--
ALTER TABLE `submenus`
  ADD CONSTRAINT `submenus_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
