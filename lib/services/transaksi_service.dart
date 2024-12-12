import '/models/transaksi.dart';

class TransaksiService {
  final List<Transaksi> _transaksis = [];

  void addTransaksi(Transaksi transaksi) {
    transaksi.id = DateTime.now().millisecondsSinceEpoch.toString();
    _transaksis.add(transaksi);
  }

  List<Transaksi> getAllTransaksi() {
    return _transaksis;
  }

  Transaksi? getTransaksiById(String id) {
    try {
      return _transaksis.firstWhere((transaksi) => transaksi.id == id);
    } catch (e) {
      return null;
    }
  }

  void updateTransaksi(Transaksi updatedTransaksi) {
    final index = _transaksis
        .indexWhere((transaksi) => transaksi.id == updatedTransaksi.id);
    if (index != -1) {
      _transaksis[index] = updatedTransaksi;
    }
  }

  void deleteTransaksi(String id) {
    _transaksis.removeWhere((transaksi) => transaksi.id == id);
  }

  List<Transaksi> getTransaksiByStatus(String status) {
    return _transaksis
        .where((transaksi) => transaksi.status == status)
        .toList();
  }

  List<Transaksi> getTransaksiByTipe(String tipe) {
    return _transaksis.where((transaksi) => transaksi.tipe == tipe).toList();
  }

  List<Transaksi> getTransaksiByTanggal(
      DateTime tanggalMulai, DateTime tanggalAkhir) {
    return _transaksis
        .where((transaksi) =>
            transaksi.tanggal.isAfter(tanggalMulai) &&
            transaksi.tanggal.isBefore(tanggalAkhir))
        .toList();
  }

  double getTotalPemasukan() {
    return _transaksis
        .where((transaksi) => transaksi.tipe == 'Pemasukan')
        .fold(0, (sum, transaksi) => sum + transaksi.jumlah);
  }

  double getTotalPengeluaran() {
    return _transaksis
        .where((transaksi) => transaksi.tipe == 'Pengeluaran')
        .fold(0, (sum, transaksi) => sum + transaksi.jumlah);
  }
}
