void main() {}

class SI {
  double p = 11;
  double t = 2;
  double r = 1;

  SI({required this.p, required this.t, required this.r});

  double getSimpleIntrest() {
    return (p * t * r) / 100;
  }
}
