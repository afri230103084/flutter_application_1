class Student {
  String? id;
  String name;
  String nim;
  String className;

  Student({
    this.id,
    required this.name,
    required this.nim,
    required this.className,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'nim': nim,
      'className': className,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      name: map['name'],
      nim: map['nim'],
      className: map['className'],
    );
  }
}
