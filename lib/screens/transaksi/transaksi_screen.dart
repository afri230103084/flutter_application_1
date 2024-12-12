import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/transaksi/proses_pembayaran_screen.dart';

class TransaksiScreen extends StatelessWidget {
  // Data jadwal penarikan yang aktif
  final Map<String, dynamic>? jadwalAktif = {
    'id': 1,
    'tanggal': '2024-11-13',
    'deskripsi': 'Penarikan Minggu 1',
    'status': 'Aktif',
  };

  // Data mahasiswa sementara
  final List<Map<String, dynamic>> mahasiswaData = [
    {'id': 1, 'nama': 'Ali', 'nim': '12345', 'statusPembayaran': 'Belum Bayar'},
    {'id': 2, 'nama': 'Budi', 'nim': '23456', 'statusPembayaran': 'Lunas'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: const Text(
          "Transaksi Penarikan",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: jadwalAktif == null
          ? const Center(
              child: Text(
                "Tidak ada jadwal penarikan aktif.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: mahasiswaData.length,
              itemBuilder: (context, index) {
                var mahasiswa = mahasiswaData[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  elevation: 4,
                  child: ListTile(
                    title: Text(mahasiswa['nama']),
                    subtitle: Text("NIM: ${mahasiswa['nim']}"),
                    trailing: mahasiswa['statusPembayaran'] == 'Lunas'
                        ? const Text('Sudah Bayar')
                        : ElevatedButton(
                            onPressed: () {
                              // Navigasi ke halaman pembayaran
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProsesPembayaranScreen(
                                      mahasiswa: mahasiswa),
                                ),
                              );
                            },
                            child: const Text('Bayar'),
                          ),
                  ),
                );
              },
            ),
    );
  }
}
