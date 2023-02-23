import 'Human.dart';

class Teacher extends Human {
  late double _salary;
  late int _numberWorkDay;

  Teacher(int teacherId, String teacherName, String numberPhone, String address,
      this._salary, this._numberWorkDay)
      : super(teacherId, teacherName, numberPhone, address);

  @override
  String toString() {
    return super.toString() + ' Teacher{_salary: $_salary, _numberWorkDay: $_numberWorkDay}';
  }

  double getSalary() => _numberWorkDay * 800.000;
}
