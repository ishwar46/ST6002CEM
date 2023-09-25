//What is a class?
//Classes are like the blueprints for creating an object.

//For Class we use PascalCase naming convention

//Here Car is an Object or Instance

void main() {
  //Calling Car class
  print(Car().cartype);
  print('${Car().size} mtrs'); //This is String Interpolation

  Car().washing();
  final isCookieCooling = Car().isWashed();
  print(isCookieCooling);
}

class Car {
  //Can contain
  //variables,
  String cartype = 'Sedan';
  double size = 2.22; //in meter

  //function or a method
  //when its inside the class it's called a method rather than function
  void washing() {
    print('Car is in Washing Bay');
  }

  bool isWashed() {
    return false;
  }
}

//There are many properties that are unique to this CarWash class and when i define all of these publically in main fucntion
//it can be accessed by other class such as Cake. But i dont want bus to access the properties of CarWash.