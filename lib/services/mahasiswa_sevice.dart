import '/models/mahasiswa.dart';

class MahasiswaService {
  final List<Mahasiswa> _mahasiswas = [];

  void addMahasiswa(Mahasiswa mahasiswa) {
    mahasiswa.id = DateTime.now().millisecondsSinceEpoch.toString();
    _mahasiswas.add(mahasiswa);
  }

  List<Mahasiswa> getAllMahasiswas() {
    return _mahasiswas;
  }

  Mahasiswa? getMahasiswaById(String id) {
    try {
      return _mahasiswas.firstWhere((mahasiswa) => mahasiswa.id == id);
    } catch (e) {
      return null;
    }
  }

  void updateMahasiswa(Mahasiswa updatedMahasiswa) {
    final index = _mahasiswas
        .indexWhere((mahasiswa) => mahasiswa.id == updatedMahasiswa.id);
    if (index != -1) {
      _mahasiswas[index] = updatedMahasiswa;
    }
  }

  void deleteMahasiswa(String id) {
    _mahasiswas.removeWhere((mahasiswa) => mahasiswa.id == id);
  }
}
