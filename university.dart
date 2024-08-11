import 'location.dart';
import 'cost.dart';
import 'course.dart';
import 'semester.dart';
import 'student.dart';

class University {
  final Cost costCalculator;
  final List<Student> students = [];

  University(this.costCalculator);

  double calculateStudentCost(Semester semester, Location location) {
    double cost = costCalculator.calculateCost(semester.courses, location.isLocal);
    int totalUnits = semester.totalUnits();

    if (totalUnits < 7) {
      cost += 100.0;
    }

    if (totalUnits > 18) {
      totalUnits = 18;
      cost = costCalculator.calculateCost(
          [GeneralCourse(0)]..addAll(semester.courses.where((course) => course.count > 0)),
          location.isLocal);
    }

    return cost;
  }
}