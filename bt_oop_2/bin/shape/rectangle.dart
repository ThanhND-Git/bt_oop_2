import 'shape.dart';

class Rectangle  extends Shape{
  double a = 0;
  double b = 0;
  Rectangle(this.a, this.b);
  
  @override
  double tinhChuVi(){
    return chuvi = (a + b) * 2;
  }
  
  @override
  double tinhDienTich(){
    return dientich = a * b;
  }
}