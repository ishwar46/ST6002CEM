//First lets learn about Implements

void main() {
  Car car = Car();
  Bike bike = Bike();

  print(car.isEngineWorking);
  print(car.isLightOn);
  print(car.noOfWheels);

  print(bike.noOfWheels);
  print(bike.isEngineWorking);
  print(bike.isLightOn);
}

//Here Vehicle is Parent Class or Super Class or Base Class
class Vehicle {
  bool isEngineWorking = false;
  bool isLightOn = true;
}

//These are Sub Classes which inherits from Vehicle
class Car implements Vehicle {
  @override
  bool isEngineWorking = true;

  @override
  bool isLightOn = false;

  @override
  int noOfWheels = 4;
}

class Bike implements Vehicle {
  @override
  bool isEngineWorking = true;

  @override
  bool isLightOn = false;

  @override
  int noOfWheels = 2;
}
