import 'dart:io';

class Student {
  String _name = "";
  int _age = 0;
  String _mssv = "";
  double _gpa = 0.0;

  String get name => _name;
  set name(String value) =>
      _name = value.trim().isEmpty ? throw "Tên không được để trống!" : value;

  int get age => _age;
  set age(int value) =>
      _age = value <= 0 ? throw "Tuổi phải lớn hơn 0!" : value;

  String get mssv => _mssv;
  set mssv(String value) =>
      _mssv = value.trim().isEmpty ? throw "MSSV không được để trống!" : value;

  double get gpa => _gpa;
  set gpa(double value) =>
      _gpa = (value < 0 || value > 10) ? throw "GPA phải từ 0 đến 10!" : value;

  void input() {
    try {
      stdout.write("Nhập tên: ");
      name = stdin.readLineSync()!;
      stdout.write("Nhập tuổi: ");
      age = int.parse(stdin.readLineSync()!);
      stdout.write("Nhập MSSV: ");
      mssv = stdin.readLineSync()!;
      stdout.write("Nhập GPA: ");
      gpa = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Lỗi: $e");
    }
  }

  @override
  String toString() => "Tên: $_name, Tuổi: $_age, MSSV: $_mssv, GPA: $_gpa";
}
