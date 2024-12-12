import '/models/jadwal.dart';

class JadwalService {
  final List<Jadwal> _jadwals = [];

  void addJadwal(Jadwal jadwal) {
    jadwal.id = DateTime.now().millisecondsSinceEpoch.toString();
    _jadwals.add(jadwal);
  }

  List<Jadwal> getAllJadwals() {
    return _jadwals;
  }

  Jadwal? getJadwalById(String id) {
    try {
      return _jadwals.firstWhere((jadwal) => jadwal.id == id);
    } catch (e) {
      return null;
    }
  }

  void updateJadwal(Jadwal updatedJadwal) {
    final index =
        _jadwals.indexWhere((jadwal) => jadwal.id == updatedJadwal.id);
    if (index != -1) {
      _jadwals[index] = updatedJadwal;
    }
  }

  void deleteJadwal(String id) {
    _jadwals.removeWhere((jadwal) => jadwal.id == id);
  }
}
