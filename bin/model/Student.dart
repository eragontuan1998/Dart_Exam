import 'Human.dart';

class Student extends Human {
  late String _Batch;
  late double _Mark1;
  late double _Mark2;

  Student(int studentId, String studentName, String numberPhone, String address,
      this._Batch, this._Mark1, this._Mark2)
      : super(studentId, studentName, numberPhone, address);

  @override
  String toString() {
    return super.toString() + ' Student{_Batch: $_Batch, _Mark1: $_Mark1, _Mark2: $_Mark2}';
  }

  double getAvgMark() => (this._Mark1+ this._Mark2)/2;
}
