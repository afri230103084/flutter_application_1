// lib/models/transaction.dart
class Transaction {
  String? id;
  String type; // "setor" atau "tarik"
  double amount;
  String studentId; // ID mahasiswa yang melakukan transaksi
  DateTime date;
  String status; // "berhasil" atau "gagal"

  Transaction({
    this.id,
    required this.type,
    required this.amount,
    required this.studentId,
    required this.date,
    required this.status,
  });

  // Method untuk konversi ke Map untuk penyimpanan di database
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'amount': amount,
      'studentId': studentId,
      'date': date.toIso8601String(),
      'status': status,
    };
  }
}
