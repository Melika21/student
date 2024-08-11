import 'course.dart';
import 'student.dart';

class Semester {
  final List<Course> courses;

  Semester(this.courses);

  int totalUnits() {
    return courses.fold(0, (sum, course) => sum + course.count);
  }

  void addStudentToCourse(Student student, String courseType) {
    for (var course in courses) {
      if (course.type == courseType) {
        course.enrollStudent(student);
        break;
      }
    }
  }
}