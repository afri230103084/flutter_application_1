class Pemasukan {
  DateTime tanggal;
  double jumlah;
  String deskripsi;

  Pemasukan({
    required this.tanggal,
    required this.jumlah,
    required this.deskripsi,
  });
}

final List<Pemasukan> pemasukanItems = [
  Pemasukan(tanggal: DateTime(2023, 11, 1), jumlah: 200000, deskripsi: 'Gaji bulan November'),
  Pemasukan(tanggal: DateTime(2023, 11, 15), jumlah: 50000, deskripsi: 'Uang saku dari orang tua'),
  Pemasukan(tanggal: DateTime(2023, 11, 25), jumlah: 100000, deskripsi: 'Hasil penjualan barang bekas'),
];
