import 'package:modelhandling/model/studentmodel.dart';

class StudentService {
  Future<List<Student>> fetchStudents() async {
    await Future.delayed(const Duration(seconds: 2));

    final rawData = [
      {'id': '2', 'name': 'Niel Dela Cruz', 'age': 78, 'gpa': 3.5},
      {'id': '3', 'name': 'Marc Dela Cruz 4', 'age': 99, 'gpa': 4.6},
      {'id': '4', 'name': 'Jeus Dela Cruz 5', 'age': 88, 'gpa': 2.7},
      {'id': '4', 'name': 'Delos Dela Cruz 5', 'age': 88, 'gpa': 2.7},
      {'id': '4', 'name': 'Reyes Dela Cruz 5', 'age': 88, 'gpa': 2.7},
      {'id': '4', 'name': 'Jeff Dela Cruz 5', 'age': 88, 'gpa': 2.7},
      {'id': '4', 'name': 'Franch Dela Cruz 5', 'age': 88, 'gpa': 2.7},
    ];

    return rawData.map((data) => Student.fromMap(data)).toList();
  }
}