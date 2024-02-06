
class Note {
  int id; // Identifikasi unik untuk setiap catatan
  String title; // Judul dari catatan
  String content; // Isi atau konten dari catatan
  DateTime modifiedTime; // Waktu terakhir kali catatan dimodifikasi

  // Konstruktor untuk inisialisasi properti pada objek Note.
  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });
}

// List sampleNotes berisi contoh-catatan yang digunakan dalam aplikasi atau sistem.
// Setiap catatan direpresentasikan sebagai objek dari kelas Note.
List<Note> sampleNotes = [
  Note(
    id: 0,
    title: 'UAS Pemrograman mobile',
    content: 'besok presentasi',
    modifiedTime: DateTime(2024, 1, 1, 34, 5),
  ),
  Note(
    id: 1,
    title: 'UAS E-Commerce',
    content: '1. Tugas E-Commerce \n 2. Download CMS \n 3. Deadline Rabu',
    modifiedTime: DateTime(2022, 1, 1, 34, 5),
  ),
  Note(
    id: 2,
    title: 'MBM',
    content: 'Membuat Laporan',
    modifiedTime: DateTime(2023, 3, 1, 19, 5),
  ),
  Note(
    id: 3,
    title: 'Kepemimpinan',
    content: 'Laporan',
    modifiedTime: DateTime(2023, 1, 4, 16, 53),
  ),
  Note(
    id: 4,
    title: 'Pemrograman Lanjut',
    content: '1. Laporan Project PDF \n 2. Kelompok 4-5 Orang \n 3. Penjelasan Program Ada di Classroom ',
    modifiedTime: DateTime(2023, 5, 1, 11, 6),
  ),
  Note(
    id: 5,
    title: 'E-Learning',
    content: 'Membuat LAPORAN IT CIDA',
    modifiedTime: DateTime(2023, 1, 6, 13, 9),
  ),
  Note(
    id: 6,
    title: 'Makan',
    content: 'Enakkk',
    modifiedTime: DateTime(2023, 3, 7, 11, 12),
  ),
  Note(
    id: 7,
    title: 'Ngegame',
    content: 'EPEP',
    modifiedTime: DateTime(2023, 2, 1, 15, 14),
  ),
  Note(
    id: 8,
    title: 'Jadwal Kuliah',
    content: '1. ABC \n 2. DEF \n 3.GHI ',
    modifiedTime: DateTime(2023, 2, 1, 12, 34),
  ),
];
