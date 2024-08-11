import 'location.dart';
import 'location.dart';
import 'semester.dart';
import 'university.dart';

class Student {
  final String name;
  final Location location;
  final Semester semester;

  Student(this.name, this.location, this.semester);

  double totalCost(University university) {
    return university.calculateStudentCost(semester, location);
  }
}