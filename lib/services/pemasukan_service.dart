import '/models/pemasukan.dart';

class PemasukanService {
  final List<Pemasukan> _pemasukan = [];

  void addPemasukan(Pemasukan pemasukan) {
    pemasukan.id = DateTime.now().millisecondsSinceEpoch.toString();
    _pemasukan.add(pemasukan);
  }

  List<Pemasukan> getAllPemasukan() {
    return _pemasukan;
  }

  Pemasukan? getPemasukanById(String id) {
    try {
      return _pemasukan.firstWhere((pemasukan) => pemasukan.id == id);
    } catch (e) {
      return null;
    }
  }

  void updatePemasukan(Pemasukan updatedPemasukan) {
    final index = _pemasukan
        .indexWhere((pemasukan) => pemasukan.id == updatedPemasukan.id);
    if (index != -1) {
      _pemasukan[index] = updatedPemasukan;
    }
  }

  void deletePemasukan(String id) {
    _pemasukan.removeWhere((pemasukan) => pemasukan.id == id);
  }
}
