class Jadwal {
  int id;
  DateTime tanggal;
  String keterangan;

  Jadwal({
    required this.id,
    required this.tanggal,
    required this.keterangan,
  });
}

final List<Jadwal> jadwalItems = [
  Jadwal(id: 1, tanggal: DateTime(2023, 11, 27), keterangan: 'Rapat persiapan ujian akhir semester'),
  Jadwal(id: 2, tanggal: DateTime(2023, 11, 28), keterangan: 'Rapat evaluasi proyek kelompok'),
  Jadwal(id: 3, tanggal: DateTime(2023, 11, 29), keterangan: 'Rapat koordinasi kegiatan akhir tahun'),
];
