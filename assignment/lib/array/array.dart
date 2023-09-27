//Find secondhighest number in array using a function

void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  secondHighest(arr);
}

void secondHighest(
  var arr,
) {
  int highest = 0;
  int secondHighest = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > highest) {
      secondHighest = highest;
      highest = arr[i];
    } else if (arr[i] > secondHighest) {
      secondHighest = arr[i];
    }
  }
  print(secondHighest);
}
