//3 task
import 'student.dart';

void main() {
  Student student1 = Student('Alice', 10);
  student1.averageScore = 95;

  Student student2 = Student.withScore('Bob', 11, 88);
  Student student3 = Student('Charlie', 9);
  student3.averageScore = 76;

  Course dartCourse = Course('Dart Basics');
  dartCourse.addStudents(student1);
  dartCourse.addStudents(student2);
  dartCourse.addStudents(student3);
  dartCourse.showStudents();

  print('Total students in course: ${dartCourse.students.length}');
}
