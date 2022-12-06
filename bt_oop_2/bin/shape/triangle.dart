import 'dart:math';

import 'shape.dart';
class Triangle extends Shape {
  double canh1, canh2, canh3;

  Triangle(this.canh1, this.canh2, this.canh3);

  @override
  double? tinhDienTich() {
    double p = (canh1 + canh2 + canh3) / 2;
    return dientich = sqrt(p * (p - canh1) * (p - canh2) * (p - canh3));
  }
}