import 'dart:io';

void main() {
  automorNum();
}

void automorNum() {
  print("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  int square = num * num;
  String strNum = num.toString();
  String strSquare = square.toString();
  if (strSquare.endsWith(strNum)) {
    print("$num is an Automorphic Number");
  } else {
    print("$num is not an Automorphic Number");
  }
}
