create database if not exists uts default character set utf8;
grant all privileges on uts .* to 'eaap_user'@'%' identified by 'eaap_pwd';
grant all privileges on uts .* to 'eaap_user'@'localhost' identified by 'eaap_pwd';
flush privileges;

use uts;

CREATE TABLE IF NOT EXISTS `dosen` (
  `id` int(11) NOT NULL,
  `nomor_induk` varchar(32) NOT NULL,
  `nomor_induk_nasional` varchar(32) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `jenjang_pendidikan` varchar(32) NOT NULL,
  `institusi_penempatan` varchar(256) NOT NULL,
  `nomor_serdos` varchar(256) NOT NULL,
  `gelar_depan` varchar(32) NOT NULL,
  `gelar_belakang` varchar(32) NOT NULL,
  `tahun_lulus` int(11) NOT NULL,
  `jabatan_akademik` varchar(256) NOT NULL,
  `flag_aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nomor_induk`, `nomor_induk_nasional`, `nama`, `jenjang_pendidikan`, `institusi_penempatan`, `nomor_serdos`, `gelar_depan`, `gelar_belakang`, `tahun_lulus`, `jabatan_akademik`, `flag_aktif`) VALUES
(1, '19621026403801', '19622012001', 'Dono Djoyohadikusumo', 'Doktor', 'Fakkultas Teknik', '1962993884', 'Ir.', 'M.Sc, Ph.D.', 2005, 'Lektor Kepala', 1),
(2, '19829384229482', '19822012001', 'Vito Alamsyah', 'Magister', 'Fakultas Ekonomi dan Bisnis', '1982774839', '', 'M.BA.', 2009, 'Asisten Ahli', 1),
(3, '197302938192001', '19732011001', 'Endang Suryani', 'Doktor', 'Fakultas Ilmu Keperawatan', '1973203941', 'Dr.', '', 2011, 'Lektor', 1),
(4, '198029381920901', '19802011001', 'Budi Wardana', 'Magister', 'Fakultas Ilmu Budaya', '1980382718', '', 'S.Hum, M.Hum.', 2010, 'Asisten Ahli', 1),
(5, '198992837162001', '19892016001', 'Alfan Farizki', 'Magister', 'Fakultas Ilmu Komputer', '1989293847', '', 'M.Sc.', 2014, 'Asisten Ahli', 1),
(6, '197720129382001', '19772012001', 'Denny', 'Doktor', 'Fakultas Ilmu Komputer', '1977201293', '', 'Ph.D.', 2014, 'Asisten Ahli', 1),
(7, '198720129384001', '19872012837001', 'Bayu Distiawan', 'Magister', 'Fakultas Ilmu Komputer', '1987201293', '', 'M.Kom.', 2011, 'Asisten Ahli', 1),
(8, '198420142938001', '1984201402', 'Yulia Sartika', 'Doktor', 'Fakultas Ilmu Sosial Politik', '19842014921', 'Dra.', 'Ph.D.', 2016, 'Lektor', 1),
(9, '197820159283001', '19782014928', 'Dian Nurhayati', 'Magister', 'Fakultas Kesehatan Masyarakat', '19782014002', 'dr.', 'M.Sc.', 2016, 'Lektor', 1),
(10, '19621026403802', '19622012002', 'Paulus Sihombing', 'Doktor', 'Gakultas Kedokteran Gigi', '1962203928', 'Prof. Dr. dr.', '', 1990, 'Guru Besar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE IF NOT EXISTS `mata_kuliah` (
  `id` int(11) NOT NULL,
  `kode` varchar(32) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `sks` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `kelompok` varchar(32) NOT NULL,
  `nama_institusi` varchar(256) NOT NULL,
  `semester` int(11) NOT NULL,
  `flag_aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `kode`, `nama`, `sks`, `keterangan`, `kelompok`, `nama_institusi`, `semester`, `flag_aktif`) VALUES
(1, 'CSC120601', 'Dasar Dasar Pemrograman I', 4, 'Mata kuliah ini membahas hal-hal yang berkaitan dengan pemrograman. Bahasa pemrograman yang akan digunakan adalah Python. ', 'Mata Kuliah Wajib', 'Fakultas Ilmu Komputer', 1, 1),
(2, 'CSC120602', 'Struktur Data dan Algoritma', 4, 'Dalam Mata kuliah ini akan dibahas beberapa struktur data yang umum digunakan untuk problem solving. Bahasa pengantar dalam mata kuliah ini adalah Bahasa Indonseia', 'Mata Kuliah Wajib', 'Fakultas Ilmu Komputer', 3, 1),
(3, 'BAE060201', 'Penngantar Ilmu Ekonomi', 3, 'Mata kuliah ini akan memberikan anda pengetahuan dasar mengenai ilmu ekonomi, hukum ekonomi, dan kaidah-kaidah yang berkaitan dengan jual-beli. Mata kuliah ini merupakan mata kuliah wajib yang harus diambil pada semester 1.', 'Mata Kuliah Wajib', 'Fakultas Ekononmi dan Bisnis', 1, 1),
(4, 'BAL030202', 'Pengantar Bahasa Jawa II', 2, 'Mata kuliah ini memberikan anda bekal pengetahuan mengenai tulisan aksara jawa. Sebelum mengambil mata kuliah ini, anda diharuskan sudah lulus mata kuliah Pengantar Bahasa Jawa I', 'Mata Kuliah Wajib', 'Fakultas Ilmu Budaya', 2, 1),
(5, 'MDH020304', 'Kesehatan Mulut dan Gigi', 6, 'Ini merupakan mata kuliah praktek untuk melatih mahasiswa dalam mengaplikasikan teori mengenai kesehatan mulut dan gigi. Mata kuliah ini akan dilangsungkan di rumah sakit terdekat dengan kampus. Jadwal pembagian kerja, akan diumumkan apabila peserta mata kuliah sudah terdaftar secara lengkap.', 'Mata Kuliah Pilihan', 'Fakultas Kedokteran Gigi', 6, 1),
(6, 'LAO002001', 'Pengantar Hukum Alam', 3, 'Mata kuliah ini akan mempelajari fenomena-fenomena alam yang terjadi di sekitar kita. Bagaimana fenomena tersebut terjadi, dan apa efek sampingnya terhadap kesehatan kita akan dikupas secara mendalam pada kuliah ini.', 'Mata Kuliah Wajib Rumpun', 'Fakultas Hukum', 8, 1),
(7, 'MAS129387', 'Kalkulus Terapan', 3, 'Penerapan ilmu kalkulus untuk menghitung laba dan rugi sebuah perusahaan, peroranganm maupun organisasi. Dalam mata kuliah ini, juga akan dipelajari bagaimana organisasi non-profit mendapatkan keuntungan. Pengetahuan yang anda dapatkan dari mata kuliah ini mungkin akan bermanfaat di kemudian hari.', 'Mata Kuliah Wajib Rumpun', 'Fakultas Matematika dan Ilmu Alam', 3, 1),
(8, 'MPK001001', 'Olahraga Sepak Bola', 1, 'Mata kuliah ini berisi tentang teori-teori umum dalam permainan sepak bola. Dalam mata kuliah ini anda tidak akan bermain sepak bola, namun anda akan mengetahui seluk beluk olah raga ini secara lengkap.', 'Mata Kuliah Wajib Universitas', 'Fakultas Kesehatan Jasmani', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE IF NOT EXISTS `pasien` (
  `no_rekam_medik` varchar(32) NOT NULL,
  `nama_pasien` varchar(256) NOT NULL,
  `no_ktp` varchar(32) NOT NULL,
  `tempat_lahir` varchar(256) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_bpjs` varchar(32) NOT NULL,
  `jenis_kelamin` int(11) NOT NULL,
  `agama` varchar(32) NOT NULL,
  `status_perkawinan` varchar(32) NOT NULL,
  `no_telp` varchar(32) NOT NULL,
  `suku` varchar(32) NOT NULL,
  `pendidikan_terakhir` varchar(32) NOT NULL,
  `pekerjaan` varchar(32) NOT NULL,
  `flag_aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`no_rekam_medik`, `nama_pasien`, `no_ktp`, `tempat_lahir`, `tanggal_lahir`, `no_bpjs`, `jenis_kelamin`, `agama`, `status_perkawinan`, `no_telp`, `suku`, `pendidikan_terakhir`, `pekerjaan`, `flag_aktif`) VALUES
('MRC20131012004', 'Topan Badai', '198029381029001', 'Ujung Kulon', '1980-10-24', '198023645729', 1, 'Islam', 'Belum Menikah', '+628562736819', 'Betawi', 'Sarjana', 'Artis', 1),
('MRC20141012004', 'Romy Siahaan', '1977837462198001', 'Medan', '1977-02-10', '197783746678', 1, 'Budha', 'Bercerai', '+6287837469987', 'Batak', 'Sarjana', 'Wirausaha', 1),
('MRC20141012009', 'Dana Nadana', '1990938477669001', 'New York', '1990-01-11', '1990837466676798', 0, 'Katolik', 'Belum Menikah', '+62888736466760', 'Sunda', 'Sarjana', 'Mahasiswa', 1),
('MRC20141012015', 'Tari Putri', '196018276638002', 'Padang', '1960-03-14', '196032100937', 0, 'Islam', 'Bercerai', '+62856253445', 'Dayak', 'Magister', 'Guru', 1),
('MRC20150912001', 'Endang Juwana', '197692837049009', 'Jakarta', '1976-09-28', '197692888309', 1, 'Islam', 'Sudah Menikah', '+6285263748376', 'Jawa', 'Doktor', 'Dosen', 1),
('MRC20150912002', 'Diah Sulistyowati', '1988746737282002', 'Makassar', '1988-04-12', '1988746566887', 0, 'Hindu', 'Belum Menikah', '+62887462829399', 'Bugis', 'Sarjana', 'PNS', 1),
('MRC20150912022', 'Pingkan Belinda', '198588726374001', 'Manado', '1985-03-22', '198566273849', 0, 'Kristen', 'Menikah', '+6285625347898', 'Minang', 'Magister', 'Dosen', 1),
('MRC20161013001', 'Dian Nurhayati', '199304540001231', 'Malang', '1993-04-14', '199384777750', 0, 'Islam', 'Belum Menikah', '+6281172635546', 'Jawa', 'Sarjana', 'Mahasiswa', 1),
('MRC20161013002', 'Susilo Bakti', '198294857789001', 'Surabaya', '1982-07-19', '198273647767', 0, 'Islam', 'Menikah', '+62815736748989', 'Jawa', 'Sarjana', 'Guru', 1),
('MRC20161013022', 'Robin Mulawarman', '199382776374001', 'Denpasar', '1993-09-15', '1993892889988', 1, 'Hindu', 'Belum Menikah', '+628765655587', 'Sasak', 'Sarjana', 'Wirausaha', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(256) NOT NULL,
  `alamat_kantor` varchar(256) NOT NULL,
  `no_telp_kantor` varchar(32) NOT NULL,
  `nama_narahubung` varchar(256) NOT NULL,
  `no_telp_narahubung` varchar(256) NOT NULL,
  `alamat_email_narahubung` varchar(256) NOT NULL,
  `npwp` varchar(32) NOT NULL,
  `flag_aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `alamat_kantor`, `no_telp_kantor`, `nama_narahubung`, `no_telp_narahubung`, `alamat_email_narahubung`, `npwp`, `flag_aktif`) VALUES
(1, 'PT. Lancar Usaha', 'Jl. Keamanan no 321, Surabaya', '+622262783840', 'Gatot Pribadi', '+6285672638890', 'gatot@gmail.com', '3928102938000', 1),
(2, 'CV. Wijaya Bakti Karya', 'Gedung Bundar Lantai 7, Kampus UI Depok', '+6216345267', 'Prof. Dr. Tuntunan Iman', '+628562736690', 'tuntun.iman@yahoo.com', '524653718909878', 1),
(3, 'CV. Maju Sejahtera', 'Capitol Hill Complex No 1, Washington DC', '+125362567', 'Joko Santoso', '+6287892837777', 'joko@majusejahtera.com', '93364628291373900', 1),
(4, 'Straight Flow ltd.', 'Bojongsari Utara no 114, Sidoarjo', '+622837466678', 'Anton Tonaka', '+6288374666556', 'anton@starigth.co.id', '938475628719870', 1),
(5, 'Maju Jalan tbk.', 'Jl. Sudirman no.1 Jakarta Selatan', '+621536475867', 'Bill Bili', '+62868765910327', 'bill@bili.com', '3746556272364809', 1),
(6, 'Mercury & partners', 'Jl. Penuh Perhitungan no 5/4, Manado', '+628374626347', 'Johny Pribadi', '+628873645510', 'john@gmail.com', '938475627826736', 1),
(7, 'Export Import Company', 'Jl. MH. Thamrin No 1, Jakarta', '+62187463746', 'Putri Chalid', '+628534253647', 'putri@export.com', '847563728129283', 1),
(8, 'PT Jaya Raya', 'Jl. Jaya no 2, Samarinda', '+62435167253', 'Achmad Badar', '+6285637462545', 'badar@yahoo.com', '843746273646581', 1),
(9, 'September Ceria tbk.', 'Jl. Tiga Ruas Kurang No. 24, Tebet, Jakarta', '+621435467563', 'Miya Putri', '+627364532734', 'miya@putri.co.id', '83475627461238', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`no_rekam_medik`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;