void main() {}

class SI {
  double p;
  double t;
  double r;

  SI({required this.p, required this.t, required this.r});

  double getSimpleIntrest() {
    return (p * t * r) / 100;
  }
}
