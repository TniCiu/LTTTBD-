import 'DienThoai.dart';

class HoaDon {
  String _maHD;
  DateTime _ngayBan;
  DienThoai _dienThoai;
  int _soLuongMua;
  double _giaBanThucTe;
  String _tenKH;
  String _sdtKH;

  HoaDon(this._maHD, this._ngayBan, this._dienThoai, this._soLuongMua,
      this._giaBanThucTe, this._tenKH, this._sdtKH);

  // Getter
  String get maHD => _maHD;
  DateTime get ngayBan => _ngayBan;
  DienThoai get dienThoai => _dienThoai;
  int get soLuongMua => _soLuongMua;
  double get giaBanThucTe => _giaBanThucTe;
  String get tenKH => _tenKH;
  String get sdtKH => _sdtKH;

  // Setter với validation
  set maHD(String maHD) {
    final regex = RegExp(r'^HD-\d{3}$');
    if (regex.hasMatch(maHD)) {
      _maHD = maHD;
    } else {
      throw Exception("Mã hóa đơn không hợp lệ.");
    }
  }

  set soLuongMua(int soLuongMua) {
    if (soLuongMua > 0 && soLuongMua <= _dienThoai.sLTK) {
      _soLuongMua = soLuongMua;
    } else {
      throw Exception("Số lượng mua > 0 và <= Tồn Kho");
    }
  }

  set giaBanThucTe(double giaBanThucTe) {
    if (giaBanThucTe > 0) {
      _giaBanThucTe = giaBanThucTe;
    } else
      throw Exception("Giá bán thực tế: > 0");
  }

  set tenKH(String tenKH) {
    if (tenKH.isNotEmpty) {
      _tenKH = tenKH;
    } else {
      throw Exception("Tên khách hàng không được rỗng.");
    }
  }

  set sdtKH(String sdtKH) {
    // Kiểm tra số điện thoại theo định dạng: bắt đầu bằng "0" và có 9 chữ số, hoặc +84 và 9 chữ số
    final regex = RegExp(r'^(0\d{9})$|^(84\d{9})$');
    if (regex.hasMatch(sdtKH)) {
      _sdtKH = sdtKH;
    } else {
      throw Exception("Số điện thoại khách hàng đúng định dạng.");
    }
  }

  // Phương thức tính tổng tiền
  double tinhTongTien() {
    return _soLuongMua * _giaBanThucTe;
  }

  // Phương thức tính lợi nhuận thực tế
  double tinhLoiNhuan() {
    return (_giaBanThucTe - _dienThoai.giaNhap) * _soLuongMua;
  }

  // Phương thức hiển thị thông tin hóa đơn
  void hienThiThongTin() {
    print("----------- Hóa đơn -----------");
    print(
        'Mã hóa đơn: $_maHD | Ngày bán: $_ngayBan | Tên KH: $_tenKH | SĐT KH: $_sdtKH');
    print(
        'Điện thoại: ${_dienThoai.ten} | Số lượng: $_soLuongMua | Giá bán: $_giaBanThucTe');
    print('Tổng tiền: ${tinhTongTien()}');
  }
}
