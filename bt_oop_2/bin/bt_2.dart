/* bài 2: Cho danh sách hình học: Hình CN(3, 8), hình tròn(6), hình tam giác(3,4,5), hình vuông (4).
1- tạo mảng chứa các hình trên.
2- Tìm phần tử có diện tích lớn nhất, nhỏ nhất.*/
import 'shape/rectangle.dart';
import 'shape/circle.dart';
import 'shape/triangle.dart';
import 'shape/square.dart';

void main(List<String> args) {
  final listShape2 = [Rectangle(3, 8), Circle(6), Triangle(3, 4, 5), Square(4)];

  var listDienTich2 = listDienTich(listShape2);
  print(listDienTich2); // [24.0, 113.04, 6.0, 16.0]

  print("Diện tích nhỏ nhất: ${timMinMax(listDienTich2).first}"); //6.0
  
  print("Diện tích lớn nhất: ${timMinMax(listDienTich2).last}"); //113.04
}

List timMinMax(List list) {
  list.sort();
  var max = list.last;
  var min = list.first;
  var listMaxMin = [min, max];
  return listMaxMin;
}

List listDienTich(List listShape) {
  var listDienTich = listShape.map((e) => (e.tinhDienTich())).toList();
  return listDienTich;
}