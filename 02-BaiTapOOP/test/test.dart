import '../models/CuaHang.dart';
import '../models/DienThoai.dart';
import '../models/HoaDon.dart';

void main() {
  // Tạo cửa hàng
  Cuahang cuaHang = Cuahang("TniCiu", "Hồ Chí Minh");
  //Kiểm tra validation
  try {
    DienThoai dt1 =
        DienThoai("DT01", "iPhone 14", "Apple", 1000.0, 1200.0, -50, true);
    cuaHang.themDienThoaiMoi(dt1);
  } catch (e) {
    print("Lỗi: ${e.toString()}"); // In ra thông báo lỗi nếu ngoại lệ xảy ra
  }
  // Thêm điện thoại mới vào cửa hàng
  DienThoai dt3 =
      DienThoai("DT01", "iPhone 14", "Apple", 1000.0, 1200.0, 50, true);
  cuaHang.themDienThoaiMoi(dt3);
  DienThoai dt2 =
      DienThoai("DT02", "Samsung Galaxy S23", "Samsung", 900.0, 1100, 30, true);
  cuaHang.themDienThoaiMoi(dt3);
  cuaHang.themDienThoaiMoi(dt2);

  // Hiển thị danh sách điện thoại
  cuaHang.hienThiDanhSachDienThoai();

  // Cập nhật thông tin điện thoại
  DienThoai dtMoi =
      DienThoai("DT01", "iPhone 15", "Apple", 1100.0, 1300.0, 40, true);
  cuaHang.capNhatDienThoai("DT01", dtMoi);

  // Hiển thị danh sách điện thoại sau khi cập nhật
  cuaHang.hienThiDanhSachDienThoai();

  // Tạo hóa đơn hợp lệ
  HoaDon hoaDon1 = HoaDon("HD01", DateTime(2024, 11, 29), dt3, 2, 1200,
      "Nguyễn Minh Tân", "0123456789");
  cuaHang.themHoaDon(hoaDon1);

  // Hiển thị danh sách hóa đơn
  cuaHang.hienThiDanhSachHoaDon();

  // Tính tổng doanh thu và lợi nhuận trong khoảng thời gian
  double doanhThu =
      cuaHang.tongDoanhThu(DateTime(2024, 11, 1), DateTime(2024, 11, 30));
  double loiNhuan =
      cuaHang.tongLoiNhuan(DateTime(2024, 11, 1), DateTime(2024, 11, 30));

  print("Tổng doanh thu trong tháng 11: $doanhThu");
  print("Tổng lợi nhuận trong tháng 11: $loiNhuan");

  // Thống kê top điện thoại bán chạy
  cuaHang.thongKeTopDienThoaiBanChay();

  // Thống kê tồn kho
  cuaHang.thongKeTonKho();
}
