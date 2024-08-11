import 'location.dart';
import 'cost.dart';
import 'course.dart';
import 'semester.dart';
import 'student.dart';
import 'university.dart';

void main() {
  List<Course> courses = [
    GeneralCourse(6),
    SpecializedCourse(4),
  ];

  Location location = Location(true);
  Semester semester = Semester(courses);
  Student student = Student("Melika", location, semester);
  University university = University(Cost());

  print("Total student cost of ${student.name} in this semester is: \$${student.totalCost(university)}");

  semester.addStudentToCourse(student, "general");
  print("Enrolled students in general courses ${courses[0].enrolledStudents.map((s) => s.name).join(', ')}");

  semester.addStudentToCourse(student, "specialized");
  print("Enrolled students in specialized course ${courses[0].enrolledStudents.map((s) => s.name).join(', ')}");

}