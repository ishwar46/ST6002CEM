import 'dart:io';

void main() {
  // multi();
  // userinput();
  // hehe();
  array();
}

void multi() {
  for (int i = 1; i <= 9; i++) {
    for (int j = 1; j <= 10; j++) {
      print("$i * $j = ${i * j}");
    }
  }
}

void userinput() {
  print("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print("$num * $i = ${num * i}");
  }
}

//User Input which asks for continue or not

void hehe() {
  bool isContinue = true;
  while (isContinue) {
    print("Enter a number: ");
    int num = int.parse(stdin.readLineSync()!);
    for (int i = 1; i <= 10; i++) {
      print("$num * $i = ${num * i}");
    }
    print("Do you want to continue? (Y/N)");
    String? input = stdin.readLineSync();
    if (input == 'n') {
      isContinue = false;
    }
  }
}

//Array Size 5 ani highest number find gara

void array() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int highestNum = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > highestNum) {
      highestNum = numbers[i];
    }
  }
  print("Highest number is $highestNum");
}


