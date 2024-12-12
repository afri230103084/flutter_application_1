class Transaksi {
  String? id;
  DateTime tanggal;
  String keterangan;
  double jumlah;
  String status;
  String tipe;
  String metodePembayaran;

  Transaksi({
    this.id,
    required this.tanggal,
    required this.keterangan,
    required this.jumlah,
    this.status = 'Pending',
    this.tipe = 'Pengeluaran',
    this.metodePembayaran = 'Tunai',
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tanggal': tanggal,
      'keterangan': keterangan,
      'jumlah': jumlah,
      'status': status,
      'tipe': tipe,
      'metodePembayaran': metodePembayaran,
    };
  }

  factory Transaksi.fromMap(Map<String, dynamic> map) {
    return Transaksi(
      id: map['id'],
      tanggal: map['tanggal'],
      keterangan: map['keterangan'],
      jumlah: map['jumlah'],
      status: map['status'],
      tipe: map['tipe'],
      metodePembayaran: map['metodePembayaran'],
    );
  }
}

// final List<Transaksi> transaksiItems = [
//   Transaksi(id: 1, tanggal: DateTime(2023, 11, 27), keterangan: 'Beli buku', jumlah: 50000, status: 'berhasil'),
//   Transaksi(id: 2, tanggal: DateTime(2023, 11, 28), keterangan: 'Transfer uang ke teman', jumlah: 100000, status: 'berhasil'),
//   Transaksi(id: 3, tanggal: DateTime(2023, 11, 29), keterangan: 'Bayar tagihan listrik', jumlah: 200000, status: 'pending'),
// ];
