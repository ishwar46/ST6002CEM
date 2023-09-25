void main() {
  final Car car = Car();

  car.accelerate();
}

abstract class Vehicle {
  void accelerate();
}

class Car implements Vehicle {
  @override
  void accelerate() {
    print('Vrooom Vrooommm');
  }
}

//Classes are implicitly abstract but abstract classes cannot be constructed and Abstract classes can just have a semicolon right after parathesis 
 