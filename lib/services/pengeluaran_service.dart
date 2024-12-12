import '/models/pengeluaran.dart';

class PengeluaranService {
  final List<Pengeluaran> _pengeluaran = [];

  void addPengeluaran(Pengeluaran pengeluaran) {
    pengeluaran.id = DateTime.now().millisecondsSinceEpoch.toString();
    _pengeluaran.add(pengeluaran);
  }

  List<Pengeluaran> getAllPengeluaran() {
    return _pengeluaran;
  }

  Pengeluaran? getPengeluaranById(String id) {
    try {
      return _pengeluaran.firstWhere((pengeluaran) => pengeluaran.id == id);
    } catch (e) {
      return null;
    }
  }

  void updatePengeluaran(Pengeluaran updatedPengeluaran) {
    final index = _pengeluaran
        .indexWhere((pengeluaran) => pengeluaran.id == updatedPengeluaran.id);
    if (index != -1) {
      _pengeluaran[index] = updatedPengeluaran;
    }
  }

  void deletePengeluaran(String id) {
    _pengeluaran.removeWhere((pengeluaran) => pengeluaran.id == id);
  }
}
