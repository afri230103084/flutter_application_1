class Mahasiswa {
  String? id;
  String nama;
  String nim;
  String kontak;

  Mahasiswa({
    this.id,
    required this.nama,
    required this.nim,
    required this.kontak,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nama': nama,
      'nim': nim,
      'kontak': kontak,
    };
  }

  factory Mahasiswa.fromMap(Map<String, dynamic> map) {
    return Mahasiswa(
      id: map['id'],
      nama: map['nama'],
      nim: map['nim'],
      kontak: map['kontak'],
    );
  }
}

// final List<Mahasiswa> mhsItems = [
//   Mahasiswa(id: 1, nama: "Andi", nim: "123456789", kontak: "081234567890"),
//   Mahasiswa(id: 2, nama: "Budi", nim: "987654321", kontak: "089876543210"),
//   Mahasiswa(id: 3, nama: "Cici", nim: "567891234", kontak: "087654321098"),
// ];
