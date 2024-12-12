import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/mahasiswa/pelunasan_screen.dart';

class DetailMahasiswaScreen extends StatelessWidget {
  final Map<String, dynamic> mahasiswa;

  DetailMahasiswaScreen({super.key, required this.mahasiswa});

  // Data jadwal penarikan sementara
  final List<Map<String, dynamic>> jadwalPenarikanData = [
    {
      'id': 1,
      'tanggal': '2024-11-13',
      'deskripsi': 'Penarikan minggu 1',
      'status': 'Lunas'
    },
    {
      'id': 2,
      'tanggal': '2024-11-20',
      'deskripsi': 'Penarikan minggu 2',
      'status': 'Tertunda'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: const Text(
          "Detail Mahasiswa",
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
              "Nama: ${mahasiswa['nama']}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("NIM: ${mahasiswa['nim']}"),
            Text("Kontak: ${mahasiswa['kontak']}"),
            const SizedBox(height: 20),
            const Text(
              "Status Pembayaran per Jadwal Penarikan:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: jadwalPenarikanData.length,
              itemBuilder: (context, index) {
                var jadwal = jadwalPenarikanData[index];
                return ListTile(
                  title: Text(jadwal['deskripsi']),
                  subtitle: Text("Tanggal: ${jadwal['tanggal']}"),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        jadwal['status'],
                        style: TextStyle(
                          color: jadwal['status'] == 'Lunas'
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (jadwal['status'] == 'Tertunda')
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    PelunasanScreen(jadwal: jadwal),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                          ),
                          child: const Text(
                            'Simpan Mahasiswa',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ],
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
