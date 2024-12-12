import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/pemasukan/tambah_pemasukan_screen.dart'; // Import halaman tambah pemasukan

class PemasukanScreen extends StatelessWidget {
  PemasukanScreen({super.key});

  // Data pemasukan sementara
  final List<Map<String, dynamic>> pemasukanList = [
    {
      'id': 1,
      'tanggal': '2024-11-10',
      'jumlah': 500000,
      'deskripsi': 'Iuran kelas'
    },
    {
      'id': 2,
      'tanggal': '2024-11-12',
      'jumlah': 250000,
      'deskripsi': 'Donasi acara'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: const Text(
          "Pemasukan",
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
        itemCount: pemasukanList.length,
        itemBuilder: (context, index) {
          var pemasukan = pemasukanList[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.monetization_on, color: Colors.teal[600]),
              title: Text('Rp ${pemasukan['jumlah']}'),
              subtitle:
                  Text('${pemasukan['deskripsi']} - ${pemasukan['tanggal']}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Tombol Hapus
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.teal[600]),
                    onPressed: () {
                      _deletePemasukan(context, pemasukan);
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
          // Navigasi ke halaman tambah pemasukan
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const TambahPemasukanScreen(), // Arahkan ke halaman form tambah pemasukan
            ),
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  // Fungsi untuk menghapus pemasukan
  void _deletePemasukan(BuildContext context, Map<String, dynamic> pemasukan) {
    // Logika untuk menghapus pemasukan
  }
}
