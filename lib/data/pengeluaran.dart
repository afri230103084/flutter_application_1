class Pengeluaran {
  DateTime tanggal;
  double jumlah;
  String deskripsi;

  Pengeluaran({
    required this.tanggal,
    required this.jumlah,
    required this.deskripsi,
  });
}

final List<Pengeluaran> pengeluaranItems = [
  Pengeluaran(tanggal: DateTime(2023, 11, 27), jumlah: 50000, deskripsi: 'Beli makan siang'),
  Pengeluaran(tanggal: DateTime(2023, 11, 28), jumlah: 100000, deskripsi: 'Bayar tagihan internet'),
  Pengeluaran(tanggal: DateTime(2023, 11, 29), jumlah: 20000, deskripsi: 'Beli buku'),
];