import 'package:flutter/material.dart';

class ProsesPembayaranScreen extends StatelessWidget {
  final Map<String, dynamic> mahasiswa;

  const ProsesPembayaranScreen({super.key, required this.mahasiswa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: Text(
          "Pembayaran untuk ${mahasiswa['nama']}",
          style: const TextStyle(
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
              "Nama: ${mahasiswa['nama']}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("NIM: ${mahasiswa['nim']}"),
            const SizedBox(height: 20),
            const Text(
              "Form Pembayaran:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Jumlah Pembayaran',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logika untuk konfirmasi pembayaran
                print(
                    "Pembayaran untuk ${mahasiswa['nama']} telah dikonfirmasi");
              },
              child: const Text("Konfirmasi Pembayaran"),
            ),
          ],
        ),
      ),
    );
  }
}
