/* bài 1- Cho 1 mảng gồm các hình chữ nhật có chiều dài 2 cạnh khai báo như hình dưới.
final listShape = [
  Square(4, 5),
  Square(6, 5),
  Square(7, 5),
  Square(8, 5),
  Square(3, 5),
  Square(2, 5),
  Square(1, 5),
];
1- Tìm chu vi lớn nhất, chu vi nhỏ nhất
2- Tìm diện tích lớn nhất, diện tích nhỏ nhất.
*/
import 'shape/rectangle.dart';
void main(List<String> args) {
  final listShape = [
    Rectangle (4, 5),
    Rectangle (6, 5),
    Rectangle (7, 5),
    Rectangle (8, 5),
    Rectangle (3, 5),
    Rectangle (2, 5),
    Rectangle (1, 5),
  ];
  var listChuViHCN = listChuVi(listShape);
  var listDienTichHCN = listDienTich(listShape);

  print(listChuViHCN); // [18.0, 22.0, 24.0, 26.0, 16.0, 14.0, 12.0]
  print(listDienTichHCN); //[20.0, 30.0, 35.0, 40.0, 15.0, 10.0, 5.0]
  
  print("Chu vi nhỏ nhất: ${timMinMax(listChuViHCN).first}"); // 12.0
  print("Chu vi lớn nhất: ${timMinMax(listChuViHCN).last}"); // 26.0

  print("Diện tích nhỏ nhất: ${timMinMax(listDienTichHCN).first}"); // 5.0
  print("Diện tích lớn nhất: ${timMinMax(listDienTichHCN).last}"); // 40.0
}

List timMinMax(List list) {
  list.sort();
  var max = list.last;
  var min = list.first;
  var listMaxMin = [min, max];
  return listMaxMin;
}

List listChuVi(List listShape) {
  var listChuVi = listShape.map((e) => (e.tinhChuVi())).toList();
  return listChuVi;
}

List listDienTich(List listShape) {
  var listDienTich = listShape.map((e) => (e.tinhDienTich())).toList();
  return listDienTich;
}
