class Mahasiswa {
  int id;
  String nama;
  String nim;
  String kontak;

  Mahasiswa({
    required this.id,
    required this.nama,
    required this.nim,
    required this.kontak,
  });
}

final List<Mahasiswa> mhsItems = [
  Mahasiswa(id: 1, nama: "Andi", nim: "123456789", kontak: "081234567890"),
  Mahasiswa(id: 2, nama: "Budi", nim: "987654321", kontak: "089876543210"),
  Mahasiswa(id: 3, nama: "Cici", nim: "567891234", kontak: "087654321098"),
];
