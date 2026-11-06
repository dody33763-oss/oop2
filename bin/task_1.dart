class Person {
  String name;
  String address;

  Person(String name, String address)
      : name = name,
        address = address;

  @override
  String toString() {
    return 'Person: name = $name, address = $address';
  }
}

class Student extends Person {
  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];

  Student(String name, String address)
      : super(name, address);

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }

  void printGrades() {
    for (int i = 0; i < courses.length; i++) {
      print('${courses[i]}: ${grades[i]}');
    }
  }

  double getAverageGrade() {
    if (grades.isEmpty) {
      return 0.0;
    }

    int sum = 0;

    for (int grade in grades) {
      sum += grade;
    }

    return sum / grades.length;
  }

  @override
  String toString() {
    return 'Student: ${super.toString()}';
  }
}

class Teacher extends Person {
  int numCourses = 0;
  List<String> courses = [];

  Teacher(String name, String address)
      : super(name, address);

  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }

    courses.add(course);
    numCourses++;
    return true;
  }

  bool removeCourse(String course) {
    if (!courses.contains(course)) {
      return false;
    }

    courses.remove(course);
    numCourses--;
    return true;
  }

  @override
  String toString() {
    return 'Teacher: ${super.toString()}';
  }
}

void main() {
  Student student = Student('Hadeer', 'Cairo');

  student.addCourseGrade('Dart', 90);
  student.addCourseGrade('OOP', 80);
  student.addCourseGrade('Flutter', 100);

  print(student);
  student.printGrades();
  print('Average Grade = ${student.getAverageGrade()}');

  print('');

  Teacher teacher = Teacher('Ahmed', 'Giza');

  print(teacher);
  print(teacher.addCourse('Dart'));
  print(teacher.addCourse('OOP'));
  print(teacher.addCourse('Dart'));
  print(teacher.removeCourse('OOP'));
  print(teacher.removeCourse('Java'));
}