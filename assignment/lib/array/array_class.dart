//Find index in array with user input using a fucntion
import 'dart:io';

void main() {
  List<int> arr = [1, 2, 3, 4, 5];

  print("Enter the number");
  int searchValue = int.parse(stdin.readLineSync()!);
  linearSearch(arr, searchValue);
}

void linearSearch(var arr, int searchValue) {
  bool found = false;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == searchValue) {
      found = true;
      break;
    }
  }
  if (found) {
    print('Found');
  } else {
    print("Not FOund");
  }
}
