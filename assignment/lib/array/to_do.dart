//Create a simple to-do applicationb that allows user to add,remove,and view their task using functions

import 'dart:io';

void main(){
  List<String> toDoList = [];
  print("Enter the task");
  String task = stdin.readLineSync()!;
  toDoList.add(task);
  print(toDoList);
  print("Enter the task");
}