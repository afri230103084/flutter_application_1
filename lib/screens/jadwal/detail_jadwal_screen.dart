import 'package:flutter/material.dart';

class DetailJadwalScreen extends StatelessWidget {
  final Map<String, dynamic> jadwal;

  DetailJadwalScreen({super.key, required this.jadwal});

  // Data sementara untuk daftar mahasiswa terkait dengan jadwal ini
  final List<Map<String, dynamic>> mahasiswaData = [
    {'id': 1, 'nama': 'Ali', 'nim': '12345', 'status': 'Lunas'},
    {'id': 2, 'nama': 'Budi', 'nim': '23456', 'status': 'Tertunda'},
    // Tambahkan mahasiswa lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: const Text(
          "Detail Jadwal Penarikan",
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jadwal: ${jadwal['deskripsi']}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Tanggal: ${jadwal['tanggal']}"),
            const SizedBox(height: 20),
            const Text(
              "Daftar Mahasiswa dan Status Pembayaran:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Menampilkan daftar mahasiswa dengan status pembayaran
            ListView.builder(
              shrinkWrap: true,
              itemCount: mahasiswaData.length,
              itemBuilder: (context, index) {
                var mahasiswa = mahasiswaData[index];
                return ListTile(
                  title: Text(mahasiswa['nama']),
                  subtitle: Text("NIM: ${mahasiswa['nim']}"),
                  trailing: Text(
                    mahasiswa['status'],
                    style: TextStyle(
                      color: mahasiswa['status'] == 'Lunas'
                          ? Colors.green
                          : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
