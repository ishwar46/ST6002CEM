//Inheritance
//"is-a relation" mean you have to use Inheritance
//Object Oriented Programming (OOP)
void main() {
  Car car = Car();
  Bike bike = Bike();

  print(car.isEngineWorking);
  print(car.isLightOn);
  print(car.noOfWheels);

  print(bike.noOfWheels);
  print(bike.speed);
  print(bike.isEngineWorking);
}

//Here Vehicle is Parent Class or Super Class or Base Class
class Vehicle {
  int speed = 12;
  bool isEngineWorking = false;
  bool isLightOn = true;
}

//These are Sub Classes which inherits from Vehicle
class Car extends Vehicle {
  int noOfWheels = 4;

  void printWheels() {
    print(noOfWheels);
  }
}

class Bike extends Vehicle {
  int noOfWheels = 2;

  void printWheels() {
    print(noOfWheels);
  }
}
