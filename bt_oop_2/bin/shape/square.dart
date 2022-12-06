import 'shape.dart';
class Square extends Shape{
  double side;
  Square(this.side);

  @override
  double? tinhDienTich() {
    return dientich = side * side;
  }
}