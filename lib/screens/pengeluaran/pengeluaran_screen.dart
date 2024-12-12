import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/pengeluaran/tambah_pengeluaran_screen.dart'; // Import halaman tambah pengeluaran

class PengeluaranScreen extends StatelessWidget {
  PengeluaranScreen({super.key});

  // Data pengeluaran sementara
  final List<Map<String, dynamic>> pengeluaranList = [
    {
      'id': 1,
      'tanggal': '2024-11-10',
      'jumlah': 100000,
      'deskripsi': 'Beli perlengkapan'
    },
    {
      'id': 2,
      'tanggal': '2024-11-12',
      'jumlah': 150000,
      'deskripsi': 'Biaya administrasi'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: const Text(
          "Pengeluaran",
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
        itemCount: pengeluaranList.length,
        itemBuilder: (context, index) {
          var pengeluaran = pengeluaranList[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.monetization_on, color: Colors.teal[600]),
              title: Text('Rp ${pengeluaran['jumlah']}'),
              subtitle: Text(
                  '${pengeluaran['deskripsi']} - ${pengeluaran['tanggal']}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Tombol Hapus
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.teal[600]),
                    onPressed: () {
                      _deletePengeluaran(context, pengeluaran);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[600],
        onPressed: () {
          // Navigasi ke halaman tambah pengeluaran
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const TambahPengeluaranScreen(), // Arahkan ke halaman form tambah pengeluaran
            ),
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  void _deletePengeluaran(
      BuildContext context, Map<String, dynamic> pengeluaran) {
    // Logika untuk menghapus pengeluaran
  }
}
