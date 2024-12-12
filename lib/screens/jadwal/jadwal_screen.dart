import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/jadwal/detail_jadwal_screen.dart';
import 'package:flutter_application_1/screens/jadwal/tambah_jadwal_screen.dart';

class JadwalScreen extends StatelessWidget {
  JadwalScreen({super.key});

  // Data sementara untuk daftar jadwal
  final List<Map<String, dynamic>> jadwalPenarikanData = [
    {
      'id': 1,
      'tanggal': '2024-11-13',
      'deskripsi': 'Penarikan minggu 1',
      'status': 'Selesai'
    },
    {
      'id': 2,
      'tanggal': '2024-11-20',
      'deskripsi': 'Penarikan minggu 2',
      'status': 'Aktif'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: const Text(
          "Jadwal Penarikan",
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
      body: ListView.builder(
        itemCount: jadwalPenarikanData.length,
        itemBuilder: (context, index) {
          var jadwal = jadwalPenarikanData[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.teal[600]),
              title: Text(jadwal['deskripsi']),
              subtitle: Text(
                  "Tanggal: ${jadwal['tanggal']} | Status: ${jadwal['status']}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: Colors.teal[600]),
                    onPressed: () {
                      _editJadwal(context, jadwal);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.teal[600]),
                    onPressed: () {
                      _deleteJadwal(context, jadwal);
                    },
                  ),
                ],
              ),
              onTap: () {
                // Navigasi ke halaman detail jadwal
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailJadwalScreen(jadwal: jadwal),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[600],
        onPressed: () {
          // Arahkan ke halaman tambah jadwal
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TambahJadwalScreen(),
            ),
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  // Fungsi untuk mengedit jadwal
  void _editJadwal(BuildContext context, Map<String, dynamic> jadwal) {
    // Logika untuk mengedit jadwal
  }

  // Fungsi untuk menghapus jadwal
  void _deleteJadwal(BuildContext context, Map<String, dynamic> jadwal) {
    // Logika untuk menghapus jadwal
  }
}
