import 'package:flutter/material.dart';

class PelunasanScreen extends StatelessWidget {
  final Map<String, dynamic> jadwal;

  const PelunasanScreen({super.key, required this.jadwal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: const Text(
          "Pelunasan Pembayaran",
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
            Text("Tanggal Penarikan: ${jadwal['tanggal']}"),
            const SizedBox(height: 20),
            const Text(
              "Apakah Anda yakin ingin melunasi pembayaran?",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ubah status pembayaran menjadi Lunas
                jadwal['status'] = 'Lunas';
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Pembayaran Berhasil Dilunasi!')),
                );
                Navigator.pop(context); // Kembali ke halaman Detail Mahasiswa
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              child: const Text(
                'Lunasi Pembayaran',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
