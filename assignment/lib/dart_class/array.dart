import 'dart:io';

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6];

  print('Enter the value');
  int searchValue = int.parse(stdin.readLineSync()!);

  int result = linearSearch(arr, searchValue);

  if (result == -1) {
    print('$searchValue not found in the list.');
  } else {
    print('$searchValue found in the list.');
  }
}

int linearSearch(List<int> arr, int searchValue) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == searchValue) {
      return i;
    }
  }
  return -1;
}
