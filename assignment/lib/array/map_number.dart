//Create a map with name. phone keys and store some values to it. When user enters name phone number should display

import 'dart:io';

void main() {
  Map namePhone = <String, String>{};
  namePhone['Ishwar'] = '98066262622';
  namePhone['Sijan'] = '98063262622';
  namePhone['Raju'] = '98033262622';

  print("Enter the name");
  String searchName = stdin.readLineSync()!;
  namePhone.forEach((name, phone) {
    if (name == searchName) {
      print('$name phone number is $phone');
    }
  });
}
