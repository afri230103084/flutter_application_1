import 'package:flutter/material.dart';
import '../models/student.dart';
import '../services/student_service.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  final StudentService _studentService = StudentService();
  final _formKey = GlobalKey<FormState>();

  // Controllers untuk form
  final _nameController = TextEditingController();
  final _nimController = TextEditingController();
  final _classController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Mahasiswa'),
      ),
      body: Column(
        children: [
          _buildForm(),
          _buildStudentList(),
        ],
      ),
    );
  }

  // Widget Form
  Widget _buildForm() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nama Mahasiswa'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nama mahasiswa harus diisi';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _nimController,
              decoration: InputDecoration(labelText: 'NIM'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'NIM harus diisi';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _classController,
              decoration: InputDecoration(labelText: 'Kelas'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Kelas harus diisi';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _addStudent,
              child: Text('Tambah Mahasiswa'),
            ),
          ],
        ),
      ),
    );
  }

  // Widget Daftar Mahasiswa
  Widget _buildStudentList() {
    return Expanded(
      child: ListView.builder(
        itemCount: _studentService.getAllStudents().length,
        itemBuilder: (context, index) {
          final student = _studentService.getAllStudents()[index];
          return ListTile(
            title: Text(student.name),
            subtitle: Text('NIM: ${student.nim} | Kelas: ${student.className}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => _showEditDialog(student),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _deleteStudent(student),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Method untuk menambah mahasiswa
  void _addStudent() {
    if (_formKey.currentState!.validate()) {
      final student = Student(
        name: _nameController.text,
        nim: _nimController.text,
        className: _classController.text,
      );

      setState(() {
        _studentService.addStudent(student);
      });

      _resetForm();
    }
  }

  // Method untuk menghapus mahasiswa
  void _deleteStudent(Student student) {
    setState(() {
      _studentService.deleteStudent(student.id!);
    });
  }

  // Method untuk menampilkan dialog edit
  void _showEditDialog(Student student) {
    _nameController.text = student.name;
    _nimController.text = student.nim;
    _classController.text = student.className;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit Mahasiswa'),
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nama Mahasiswa'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama mahasiswa harus diisi';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _nimController,
                decoration: InputDecoration(labelText: 'NIM'),
              ),
              TextFormField(
                controller: _classController,
                decoration: InputDecoration(labelText: 'Kelas'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () => _updateStudent(student),
            child: Text('Simpan'),
          ),
        ],
      ),
    );
  }

  // Method untuk update mahasiswa
  void _updateStudent(Student student) {
    if (_formKey.currentState!.validate()) {
      final updatedStudent = Student(
        id: student.id,
        name: _nameController.text,
        nim: _nimController.text,
        className: _classController.text,
      );

      setState(() {
        _studentService.updateStudent(updatedStudent);
      });

      Navigator.pop(context);
      _resetForm();
    }
  }

  // Method untuk reset form
  void _resetForm() {
    _nameController.clear();
    _nimController.clear();
    _classController.clear();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nimController.dispose();
    _classController.dispose();
    super.dispose();
  }
}
