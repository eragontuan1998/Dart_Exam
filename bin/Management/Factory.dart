import '../model/Human.dart';
import '../model/Student.dart';
import '../model/Teacher.dart';

class Factory {
  late List<Human> listHuman;
  late List<Student> listStudent;
  late List<Teacher> listTeacher;

  void input() {
    listHuman = [];
    listHuman
        .add(new Student(1, "Quý", "0905287491", "139 Lê Độ", "A7", 2.5, 10));
    listHuman
        .add(new Student(2, "Danh", "0905287492", "139 Lê Lai", "A7", 2.5, 10));
    listHuman
        .add(new Student(3, "Của", "0905287493", "139 Lê Lợi", "A7", 2.5, 10));
    listHuman
        .add(new Teacher(4, "Các", "0905287494", "139 Lê Bá Quát", 20000, 7));
    listHuman.add(new Teacher(5, "Quý", "0905287495", "139 Lê La", 10000, 8));
    listHuman
        .add(new Teacher(6, "Là", "0905287496", "139 Lê Đào", 3000000, 17));
  }

  void findPerson(String name, int id) {
    for (var c in listHuman) {
      if (c.Name == name || c.Id == id) {
        print("[Name: ${c.Name}, ID: ${c.Id}]");
      }
    }
  }

  void sortList() {
    listHuman.sort((a, b) {
      return a.Name.compareTo(b.Name);
    });
  }

  void sortTeacher() {
    sortList();
    for (var c in listHuman) {
      if (c is Teacher) {
        print(c);
      }
    }
  }

  void sortStudent() {
    sortList();
    for (var c in listHuman) {
      if (c is Student) {
        print(c);
      }
    }
  }

  void getSumSalary(){
    double salary = 0;
    for (var c in listHuman) {
      if (c is Teacher) {
        Teacher t = c;
        salary += t.getSalary();
        print("${c.Name} : ==== ${t.getSalary()} =====");
      }
    }
    print("Sum Salary: ${salary}");
  }
}
