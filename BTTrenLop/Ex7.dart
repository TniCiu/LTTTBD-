import 'dart:io';

class TinhTongCacUocSo {
  void ThuatToan() {
    int n;

    // Điều kiện nhập số nguyên
    do {
      print("Vui lòng nhập số nguyên n lớn hơn 1: ");
      n = int.parse(stdin.readLineSync()!);
      if (n <= 0) {
        print("Vui lòng nhập lại !!");
      }
    } while (n <= 0);

    // Thuật toán tính tổng các ước số của n
    int sum = 0;

    // Tìm các ước số của n
    for (int i = 1; i <= n; i++) {
      if (n % i == 0) {
        sum += i; // Cộng các ước số vào biến sum
      }
    }

    print("Tổng các ước số của $n là: $sum");
  }
}
