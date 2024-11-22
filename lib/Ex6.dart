import 'dart:io';

class NhiPhan {
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

    // Thuật toán chuyển thành nhị phân
    String binary = '';
    while (n > 0) {
      binary =
          (n % 2).toString() + binary; // Lấy phần dư và ghép vào chuỗi nhị phân
      n = n ~/ 2; // Chia n cho 2 và làm tròn xuống
    }

    print("Số nhị phân của n là: $binary");
  }
}
