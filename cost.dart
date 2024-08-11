import 'course.dart';

class Cost {
  final double localCostPerUnit = 75.0;
  final double nonLocalCostPerUnit = 125.0;

  double calculateCost(List<Course> courses, bool isLocal) {
    double unitCost = isLocal ? localCostPerUnit : nonLocalCostPerUnit;
    double totalCost = 0.0;

    for (var course in courses) {
      if (course is GeneralCourse) {
        totalCost += course.count * unitCost;
      } else if (course is SpecializedCourse) {
        totalCost += course.count * unitCost * 1.5;
      }
    }

    return totalCost;
  }
}