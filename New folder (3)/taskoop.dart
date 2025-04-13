class Student {
  var name;
  var Age;
  String _favoriteLanguage;

  
  Student(this.name, int Age, String favoriteLanguage) {
    this.Age = Age;
    this.favoriteLanguage = favoriteLanguage;
  }

  // Student.guest() {
  //   name = "guest";
  //   Age = 0;
  //    favoritelanguage = "Unknown";
  // }

  void printDetails() {
    print("name:$name, Age:$Age ,favoritelanguage:$_favoriteLanguage ");
  }

  void updateFavoriteLanguage(String newLanguage) {
    _favoriteLanguage = newLanguage;
    print("Updated favorite language to $newLanguage");
  }

  //    void calculateYearOfBirth() {
  //     int currentYear = DateTime.now().year;
  //     int yearOfBirth = currentYear - Age;
  //     print("$name's year of birth: $yearOfBirth");
  //   }
}

void main() {
  Student student1 = Student("Raneem", 23, "Laravel");
  // Student student1 = Student.guest();
  // student1.name = "Raneem";
  // student1.Age = 23;
  // student1.favoritelanguage = "Laravel";
  student1.printDetails();
  student1.updateFavoriteLanguage("React");
  // student1.calculateYearOfBirth();

  StudentManager manager = StudentManager();

  // إنشاء طلاب وإضافتهم
  manager.Addstudent(Student("Amro", 27, "ReactJS"));
  manager.Addstudent(Student("Lina", 22, "Dart"));
  manager.Addstudent(Student("Ali", 25, "fluter"));

  // طباعة معلومات كل الطلاب
  manager.printAllStudents();
}

class StudentManager {
  List<Student> students = [];

  void Addstudent(Student student) {
    students.add(student);
  }

  void printAllStudents() {
    for (var student in students) {
      student.printDetails();
    }
  }
}
