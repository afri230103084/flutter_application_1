import '../models/student.dart';

class StudentService {
  final List<Student> _students = [Student(name: "Afri", nim: "230103084", className: "TI23A3")];

  void addStudent(Student student) {
    student.id = DateTime.now().millisecondsSinceEpoch.toString();
    _students.add(student);
  }

  List<Student> getAllStudents() {
    return _students;
  }

  Student? getStudentById(String id) {
    try {
      return _students.firstWhere((student) => student.id == id);
    } catch (e) {
      return null;
    }
  }

  void updateStudent(Student updatedStudent) {
    final index =
        _students.indexWhere((student) => student.id == updatedStudent.id);
    if (index != -1) {
      _students[index] = updatedStudent;
    }
  }

  void deleteStudent(String id) {
    _students.removeWhere((student) => student.id == id);
  }
}
