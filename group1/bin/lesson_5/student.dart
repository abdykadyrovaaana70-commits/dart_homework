//1 task
class Student {
  String _name;
  int _grade;
  double _averageScore;

  Student(this._name, this._grade) : _averageScore = 0;
  Student.withScore(this._name, this._grade, this._averageScore);

  String get name => _name;
  int get grade => _grade;
  double get averageScore => _averageScore;

  set averageScore(double value) {
    if (value < 0 || value > 100) {
      print('Error: the average score must be between 0 and 100');
    } else {
      _averageScore = value;
    }
  }

  void displayInfo() {
    print('Name: $_name, Grade: $_grade, Average Score: $_averageScore');
  }
}

//2 task
class Course {
  String title;
  List<Student> students = [];
  Course(this.title);
  void addStudents(Student s) {
    students.add(s);
  }

  void showStudents() {
    print('Course: $title');
    print('Enrolled students:');

    for (var i = 0; i < students.length; i++) {
      print('${i + 1}. ${students[i].name}');
    }
  }
}
