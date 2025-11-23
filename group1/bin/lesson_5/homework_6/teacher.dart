import 'person.dart';

class Teacher extends Person {
  int experiense;

  static double _baseSalary = 50000;

  Teacher(String fullName, int age, bool isMarried, this.experiense)
    : super(fullName, age, isMarried);
  double calculateSalary() {
    double salary = _baseSalary;

    if (experiense > 3) {
      int extraYears = experiense - 3;

      for (int i = 0; i < extraYears; i++) {
        salary = salary * 1.5;
      }
    }
    if (isMarried) {
      salary += 5000;
    }
    return salary;
  }

  @override
  void introduce() {
    super.introduce();
    print('Experience: $experiense years');
    print('Salary: ${calculateSalary()}');
  }
}
