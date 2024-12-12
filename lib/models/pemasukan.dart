class Pemasukan {
  String? id;
  DateTime tanggal;
  double jumlah;
  String deskripsi;

  Pemasukan({
    this.id,
    required this.tanggal,
    required this.jumlah,
    required this.deskripsi,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tanggal': tanggal,
      'jumlah': jumlah,
      'deskripsi': deskripsi,
    };
  }

  factory Pemasukan.fromMap(Map<String, dynamic> map) {
    return Pemasukan(
      id: map['id'],
      tanggal: map['tanggal'],
      jumlah: map['jumlah'],
      deskripsi: map['deskripsi'],
    );
  }
}

// final List<Pemasukan> pemasukanItems = [
//   Pemasukan(tanggal: DateTime(2023, 11, 1), jumlah: 200000, deskripsi: 'Gaji bulan November'),
//   Pemasukan(tanggal: DateTime(2023, 11, 15), jumlah: 50000, deskripsi: 'Uang saku dari orang tua'),
//   Pemasukan(tanggal: DateTime(2023, 11, 25), jumlah: 100000, deskripsi: 'Hasil penjualan barang bekas'),
// ];
