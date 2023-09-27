// MENU DRIVEN PROGRAM
// 1. Addition
// 2. Subtraction
// 3. Simple Interest
// 4. Area of Circle
// Enter your choice 1-5 : 4
// Do you want to continue (y/n)

import 'dart:io';

void main() {
  String choice;
  do {
    print('MENU DRIVEN PROGRAM');
    print('1. Addition');
    print('2. Subtraction');
    print('3. Simple Interest');
    print('4. Area of Circle');
    print('Enter your choice 1-5 : ');

    choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print("Enter fist number");
        int a = int.parse(stdin.readLineSync()!);
        print("Enter second number");
        int b = int.parse(stdin.readLineSync()!);
        print('Addition of $a and $b is ${a + b}');
        break;
      case '2':
        print("Enter fist number");
        int a = int.parse(stdin.readLineSync()!);
        print("Enter second number");
        int b = int.parse(stdin.readLineSync()!);
        print('Subtraction of $a and $b is ${a - b}');
        break;
      case '3':
        print("Enter Principle");
        int p = int.parse(stdin.readLineSync()!);
        print("Enter Time");
        int t = int.parse(stdin.readLineSync()!);
        print("Enter Rate");
        int r = int.parse(stdin.readLineSync()!);
        print('Simple Interest is ${(p * t * r) / 100}');
        break;
      case '4':
        print("Enter Radius");
        int r = int.parse(stdin.readLineSync()!);
        print('Area of Circle is ${3.14 * r * r}');
        break;
      default:
        print('Invalid Choice');
    }
    print('Do you want to continue (y/n)');
    choice = stdin.readLineSync()!;
  } while (choice.toLowerCase() == 'y');
}
