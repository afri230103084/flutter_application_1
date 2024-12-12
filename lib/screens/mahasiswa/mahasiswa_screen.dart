import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/mahasiswa/detail_mahasiswa_screen.dart';
import 'package:flutter_application_1/screens/mahasiswa/tambah_mahasiswa_screen.dart';

class MahasiswaScreen extends StatelessWidget {
  MahasiswaScreen({super.key});

  // Data mahasiswa sementara
  final List<Map<String, dynamic>> mahasiswaList = [
    {'id': 1, 'nama': 'John Doe', 'nim': '12345', 'kontak': '08123456789'},
    {'id': 2, 'nama': 'Jane Smith', 'nim': '67890', 'kontak': '08234567890'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: const Text(
          "Daftar Mahasiswa",
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
        itemCount: mahasiswaList.length,
        itemBuilder: (context, index) {
          var mahasiswa = mahasiswaList[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            elevation: 4,
            child: ListTile(
              title: Text(mahasiswa['nama']),
              subtitle: Text("NIM: ${mahasiswa['nim']}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Tombol Edit
                  IconButton(
                    icon: Icon(Icons.edit, color: Colors.teal[600]),
                    onPressed: () {
                      _editMahasiswa(context, mahasiswa);
                    },
                  ),
                  // Tombol Hapus
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.teal[600]),
                    onPressed: () {
                      _deleteMahasiswa(context, mahasiswa);
                    },
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailMahasiswaScreen(mahasiswa: mahasiswa),
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TambahMahasiswaScreen(),
            ),
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  void _tambahMahasiswa(BuildContext context) {
    // Logika untuk menambahkan mahasiswa baru
  }

  void _editMahasiswa(BuildContext context, Map<String, dynamic> mahasiswa) {
    // Logika untuk mengedit mahasiswa,
  }

  void _deleteMahasiswa(BuildContext context, Map<String, dynamic> mahasiswa) {
    // Logika untuk menghapus mahasiswa,
  }
}
