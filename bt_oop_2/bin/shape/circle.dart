import 'shape.dart';
class Circle extends Shape{
  static const pi = 3.14;
  double radius;

  Circle(this.radius);
  
  @override
  double tinhDienTich(){
    return dientich = pi  * (radius * radius);
  }
}