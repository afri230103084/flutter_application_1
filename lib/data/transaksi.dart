class Transaksi {
  int id;
  DateTime tanggal;
  String keterangan;
  double jumlah;
  String status;

  Transaksi({
    required this.id,
    required this.tanggal,
    required this.keterangan,
    required this.jumlah,
    required this.status,
  });
}

final List<Transaksi> transaksiItems = [
  Transaksi(id: 1, tanggal: DateTime(2023, 11, 27), keterangan: 'Beli buku', jumlah: 50000, status: 'berhasil'),
  Transaksi(id: 2, tanggal: DateTime(2023, 11, 28), keterangan: 'Transfer uang ke teman', jumlah: 100000, status: 'berhasil'),
  Transaksi(id: 3, tanggal: DateTime(2023, 11, 29), keterangan: 'Bayar tagihan listrik', jumlah: 200000, status: 'pending'),
];
