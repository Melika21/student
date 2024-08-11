import 'student.dart';

class Course {
  final String type;
  final int count;
  List<Student> enrolledStudents = [];

  Course(this.type, this.count);

  void enrollStudent(Student student) {
    enrolledStudents.add(student);
  }
}

class GeneralCourse extends Course {
  GeneralCourse(int count) : super("general", count);
}

class SpecializedCourse extends Course {
  SpecializedCourse(int count) : super("specialized", count);
}