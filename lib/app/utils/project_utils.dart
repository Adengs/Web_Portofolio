class ProjectUtils {
  final String banners;
  // final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    // required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/kepul.png',
    // icons: 'assets/imgs/flutter.png',
    titles: 'Aplikasi Booking Service & Online Shop',
    description:
        'Aplikasi dengan nama SiTepat ini berfungsi untuk booking service dan membeli berbagai macam sparepart motor secara online.',
    links: 'https://github.com/Adengs/Sitepat',
  ),
  ProjectUtils(
    banners: 'assets/imgs/myoffice.PNG',
    // icons: 'assets/imgs/flutter.png',
    titles: 'Aplikasi Absensi Karyawan',
    description:
        'Aplikasi ini ditujukan untuk membantu pencatatan waktu dan manajemen kehadiran karyawan, yang tentunya dapat mempermudah pencatatan absensi karyawan, izin serta cuti, laporan lokasi absen, dan pemantauan kinerja.',
    links: 'https://github.com/Adengs/MyOffice',
  ),
  ProjectUtils(
    banners: 'assets/imgs/sitepat.png',
    // icons: 'assets/imgs/flutter.png',
    titles: 'Aplikasi Driver Bank Sampah',
    description:
        'Aplikasi ini diperuntukan bagi para Driver Bank Sampah yang dapat digunakan sebagai sitem pengecekan dan pemrosesan order, serta dapat melakukan penjemputan barang berdasarkan lokasi yang dicantumkan oleh customer.',
    links: 'https://github.com/Adengs/DiverKepul',
  ),
  ProjectUtils(
    banners: 'assets/imgs/pdam.png',
    // icons: 'assets/imgs/flutter.png',
    titles: 'Aplikasi Cek Meteran Air',
    description:
        'Aplikasi Cek Meteran Air merupakan aplikasi yang difungsikan untuk petugas PAM mencatat dan melaporkan total penggunaan bulanan yang tertera pada meteran air setiap rumah.',
    links: 'https://github.com/Adengs/PDAM',
  ),
];
