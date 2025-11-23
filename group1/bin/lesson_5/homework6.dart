//5 задание
import 'person.dart';
import 'student.dart';
import 'teacher.dart';
void main() {
  var teacher = Teacher('Johh Brown', 40, true, 10);
  print('\n---TEACHER---');
  teacher.introduce();
  print('Calculator Salary: ${teacher.calculateSalary()}\n');

  var student1 = Student('Adam White', 17, false, {
    Subject.math: 95,
    Subject.english: 92,
    Subject.physics: 88,
}, 
);
print('\n---STYDENT1---');
student1.introduce();
student1.showMarks();
print('Average mark: ${student1.calculateAverage()}\n');

var student2 = Student('Emily Clark', 18, true, {
   Subject.math: 78,
    Subject.english: 91,
    Subject.physics: 80,
    Subject.history: 85,
}
);

print('\n---STYDENT2---');
student2.introduce();
student2.showMarks();
print('Average mark: ${student2.calculateAverage()}\n');
}
