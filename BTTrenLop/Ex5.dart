import 'dart:io';
import 'dart:math';

class EquationSolver {
  void input() {
    double a = 0, b = 0, c = 0;

    do {
      stdout.write("Vui lòng nhập a khác 0:");
      String? input = stdin.readLineSync();
      if (input != null) {
        a = double.tryParse(input) ?? 0;
      }
      if (a == 0) {
        print("Vui lòng nhập đúng định dạng số");
      }
    } while (a == 0);

    // Input b
    stdout.write("Vui lòng nhập b  :");
    String? inputB = stdin.readLineSync();
    if (inputB != null) {
      b = double.tryParse(inputB) ?? 0;
    }

    // Input c
    stdout.write("Vui lòng nhập c  :");
    String? inputC = stdin.readLineSync();
    if (inputC != null) {
      c = double.tryParse(inputC) ?? 0;
    }

    // Tính delta
    double delta = b * b - 4 * a * c;

    print("Phương trình bậc 2: ${a}x^2 +${b}x + ${c} = 0");
    // Điều kiện
    if (delta < 0) {
      print("Phương trình vô nghiệm");
    } else if (delta == 0) {
      double x = -b / (2 * a);
      x = double.parse(x.toStringAsFixed(2));
      print('Phương trình có nghiệm kép x = ${x}');
    } else {
      double x1 = (-b + sqrt(delta)) / (2 * a);
      double x2 = (-b - sqrt(delta)) / (2 * a);
      print("Phương trình có 2 nghiệm: ");
      print('x1: ${x1}');
      print('x2: ${x2}');
    }
  }
}
