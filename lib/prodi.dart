class Prodi {
  String label;
  String imgUrl;
  int servings;
  String programType; // Properti untuk menunjukkan jenis program (S1 atau S2)
  List<Information> information;

  Prodi(this.label, this.imgUrl, this.servings, this.programType,
      this.information);

  static List<Prodi> samples = [
    Prodi('Prodi Akutansi', 'images/logo_AK1.png', 4, 'S1', [
      Information(
          "Program Studi S1 Akuntansi didirikan pada bulan April 1966 di bawah Fakultas Ekonomi dan Bisnis, UPN Veteran Jawa Timur. Program Studi Akuntansi memperoleh Akreditasi A dari BAN-PT. Setelah itu, berturut-turut pada tahun 2014 dan 2019, program studi Akuntansi berhasil mempertahankan Akreditasi A dari BAN-PT.",
          'Menjadi Jurusan Akuntansi world class Unggul Berkarakter Bela Negara di tahun 2039',
          '  1. Menyelenggarakan dan mengembangkan pendidikan bidang akuntansi yang berkarakter bela negara guna membentuk pelajar berjiwa Pancasila yang kompeten di tingkat internasional. \n2. Meningkatkan kemampuan riset dan iptek di bidang akuntansi yang berdayaguna untuk meningkatkan transparansi dan akuntabilitas dalam bermasyarakat dan bernegara.\n3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset bidang akuntansi dan kearifan lokal.\n4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan keuangan yang WBK (wilayah bebas korupsi) dan WBBM (wilayah bebas bersih melayani) di Jurusan akuntansi.\n5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang akuntansi.\n6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di Jurusan akuntansi.\n7. Meningkatkan kerjasama institusional dengan stakeholder baik dalam dan luar negeri di bidang akuntansi.',
          'assets/asset_akutansi/akutansi_akred.jpeg',
          'assets/asset_akutansi/kaprodi_akutansi.jpeg',
          'assets/asset_akutansi/dosen_AK1.png',
          'assets/asset_akutansi/dosen_AK2.png',
          'assets/asset_akutansi/dosen_AK3.png',
          'https://akuntansi.upnjatim.ac.id/',
          'akuntansi@upnjatim.ac.id',
          '1. Juara I National Accounting Essay Competition 2022 Komunitas Jago Akuntansi Indonesia (KJAI) \n2. Juara I Kompetisi Akuntansi Sebelas Maret (KAS 2022) \n3. Juara III National Public Essay Competition Reviresco Reformation XXIX'),
    ]),
    Prodi('Prodi Manajemen ', 'images/logo_MJ1.png', 2, 'S1', [
      Information(
          'Program Studi S1 Manajemen di UPNVJT, didirikan pada Maret 1966 di bawah Fakultas Ekonomi, telah menjadi program yang sangat dicari, menarik sekitar 300-350 siswa setiap tahun di Surabaya, Jawa Timur. Dikenal sebagai favorit dalam studi manajemen ekonomi, program ini secara teratur mendapat akreditasi "A" dari BAN-PT. Sejak diberlakukannya kebijakan "Kampus Merdeka, Kebebasan Belajar" pada awal 2020, kursus Manajemen telah diubah untuk memberikan lebih banyak fleksibilitas kepada siswa, dengan memperkenalkan mata pelajaran internasional untuk empat konsentrasi: Pemasaran, Keuangan, Sumber Daya Manusia, dan Manajemen Operasional.',
          'Menjadi salah satu program studi yang unggul dalam pengembangan Ilmu Manajemen yang berkarakter bela negara pada tahun 2024',
          ' 1. Menyelenggarakan pendidikan bidang manejemen yang berkarakter bela negara \n2. Meningkatkan pengembangan ilmu manajemen melalui kegiatan penelitian \n3. Melaksanakan pengabdian kepada masyarakat melalui karya inovatif berbasis iptek dan kearifan lokal \n4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntanbilitas pengelolaan anggaran \n5. Mengembangkan kualitas sumber manusia unggul dalam sikap dan tata nilai, unjuk rasa, penguasaan pengetahuan dan manajerial \n6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu \n7. Membangun jejaring dengan institusi baik nasional dan internasional melalui Implementasi kerjasama.',
          'assets/asset_manajemen/manajemen_akred.png',
          'assets/asset_manajemen/KaprodiMJ.png',
          'assets/asset_manajemen/dosen_MJ1.png',
          'assets/asset_manajemen/dosen_MJ2.png',
          'assets/asset_manajemen/dosen_MJ3.png',
          'https://manajemen.upnjatim.ac.id/',
          'feb@upnjatim.ac.id',
          '1. Juara 1 National Economic Business Plan Competition Festival 2022 \n2. Juara 3 LENS (Lomba Esai Nasional) Chemistry Friendship Competition V 2022 \n3. 8th Place National BMCC 2022 Himpunan Mahasiswa Sistem Pembangkit Energi Politeknik Elektronika Negeri Surabaya'),
    ]),
    Prodi('Prodi Ekonomi Pembangunan', 'images/logo_EP1.png', 1, 'S1', [
      Information(
          "Program Studi Ekonomi Pembangunan Fakultas Ekonomi dan Bisnis UPNV Jawa Timur didirikan pada tahun 1974 dengan ijin pendirian dari Departemen Pertahanan Keamanan (Dephankam) dengan status “Negeri Kedinasan”. Hal ini terjadi karena pada saat itu UPN “Veteran” Jawa Timur merupakan Perguruan tinggi Kedinasan yang berada di dibawah pengelolaan Departemen Pertahanan Keamanan.",
          'Menjadi Program Studi Ekonomi Pembangunan yang unggul dalam penerapan dan pengembangan IPTEK di bidang Ekonomi Pembangunan yang memiliki kareakter bela negara.',
          '1. Menyelenggarakan dan mengembangkan pendidikan di bidang Ekonomi Pembangunan berkarakter bela negara.Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdaya guna untuk kesejahteraan masyarakat. \n2. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal. \n3. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran. \n4.  Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial. \n5. Meningkatkan kerja sama institusional dengan stakeholders baik dalam dan luar negeri.',
          'assets/asset_EP/EP_akred.jpg',
          'assets/asset_EP/KaprodiEP.png',
          'assets/asset_EP/dosen_EP1.png',
          'assets/asset_EP/dosen_EP2.png',
          'assets/asset_EP/dosen_EP3.png',
          'https://ekbang.upnjatim.ac.id/',
          'progdi.ep@gmail.com',
          '1. PENGHARGAAN BERGENGSI ITU DI HOTEL RITZ CARLTON 4 DESEMBER 2023 \n2. Best Speaker National Business Plan Competition \n3. Juara 1 & 3 Lomba Essay Milenial yang diadakan IDEI Insan Doktor Ekonomi Indonesia Oleh Mahasiswa Prodi Ekonomi Pembanguna FEB UPN "Veteran" Jatim'),
    ]),
    Prodi('Prodi Kewirausahaan', 'images/logo_KWU1.png', 24, 'S1', [
      Information(
          "program studi kewirausahaan yang mengutamakan inovasi dan kreativitas berbasis kearifan lokal dengan memanfaatkan teknologi informasi dalam pengembangan ilmu kewirausahaan yang berkarakter Bela Negara.",
          'Menjadi program studi kewirausahaan yang mengutamakan inovasi dan kreativitas berbasis kearifan lokal dengan memanfaatkan teknologi informasi dalam pengembangan ilmu kewirausahaan yang berkarakter Bela Negara.',
          '1. Menyelenggarakan dan mengembangkan pendidikan di bidang kewirausahaan yang berbasis digital dan berkarakter bela negara.\n2. Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdayaguna untuk kesejahteraan masyarakat. \n3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal. \n4. Menyelenggarakan tata kelola yang baik dan bersih untuk mencapai akuntabilitas pengelolaan anggaran. \n5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, kompetensi dan manajerial. \n6. Meningkatkan kerja sama institusional dengan stakeholders baik dalam dan luar negeri.',
          'assets/asset_KWU/akredKWU.jpg',
          'assets/asset_KWU/kaprodi_KWU.png',
          'assets/asset_KWU/dosen_KWU1.png',
          'assets/asset_KWU/dosen_KWU2.png',
          'assets/asset_KWU/dosen_KWU3.png',
          'https://kwu.upnjatim.ac.id/',
          'feb@upnjatim.ac.id',
          '1. Medali perak di kompetisi NASPO (National Applied Science Project Olympiad) 2022 \n2. Medali perunggu di kompetisi AISEEF (Asean Innovative Science and Enterpreneur Fair) 2023'),
    ]),
    Prodi('Prodi Manajemen ', 'images/logo_MJ1.png', 2, 'S2', [
      Information(
          'Program Studi S1 Manajemen di UPNVJT, didirikan pada Maret 1966 di bawah Fakultas Ekonomi, telah menjadi program yang sangat dicari, menarik sekitar 300-350 siswa setiap tahun di Surabaya, Jawa Timur. Dikenal sebagai favorit dalam studi manajemen ekonomi, program ini secara teratur mendapat akreditasi "A" dari BAN-PT. Sejak diberlakukannya kebijakan "Kampus Merdeka, Kebebasan Belajar" pada awal 2020, kursus Manajemen telah diubah untuk memberikan lebih banyak fleksibilitas kepada siswa, dengan memperkenalkan mata pelajaran internasional untuk empat konsentrasi: Pemasaran, Keuangan, Sumber Daya Manusia, dan Manajemen Operasional.',
          'Menjadi Jurusan Manajemen Unggul berkarakter Bela Negara pada tahun 2030',
          ' 1. Menyelenggarakan pendidikan bidang manejemen yang berkarakter bela negara. \n2. Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdayaguna untuk kesejahteraan masyarakat \n3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal \n4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntanbilitas pengelolaan anggaran \n5. Mengembangkan kualitas sumber manusia unggul dalam sikap dan tata nilai, unjuk rasa, penguasaan pengetahuan dan manajerial \n6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu \n7. Membangun jejaring dengan institusi baik nasional dan internasional melalui Implementasi kerjasama.',
          'assets/asset_manajemen2/akreditas_MJ2.jpeg',
          'assets/asset_manajemen2/KaprodiMJ2.png',
          'assets/asset_manajemen2/dosen_MJJ1.png',
          'assets/asset_manajemen2/dosen_MJJ2.png',
          'assets/asset_manajemen2/dosen_MJJ3.png',
          'https://manajemen.upnjatim.ac.id/',
          'feb@upnjatim.ac.id',
          '\n1 Juara 1 National Economic Business Plan Competition Festival 2022. \n2. Juara 3 LENS (Lomba Esai Nasional) Chemistry Friendship Competition V 2022. \n3. 8th Place National BMCC 2022 Himpunan Mahasiswa Sistem Pembangkit Energi Politeknik Elektronika Negeri Surabaya'),
    ]),
  ];
}

class Information {
  String profil;
  String visi;
  String misi;
  String akreditasi;
  String kaprodi;
  String dosen1;
  String dosen2;
  String dosen3;
  String weblink;
  String email;
  String presatsi;

  Information(
      this.profil,
      this.visi,
      this.misi,
      this.akreditasi,
      this.kaprodi,
      this.dosen1,
      this.dosen2,
      this.dosen3,
      this.weblink,
      this.email,
      this.presatsi);
}
