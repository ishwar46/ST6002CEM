import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({Key? key}) : super(key: key);

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  final TextEditingController _principalAmountController =
      TextEditingController();
  final TextEditingController _rateOfInterestController =
      TextEditingController();
  final TextEditingController _timePeriodController = TextEditingController();

  double _result = 0.0;

  void _calculateSI() {
    setState(() {
      double principalAmount = double.parse(_principalAmountController.text);
      double rateOfInterest = double.parse(_rateOfInterestController.text);
      double timePeriod = double.parse(_timePeriodController.text);

      _result = (principalAmount * rateOfInterest * timePeriod) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 43, 85, 159),
        elevation: 0,
        title: const Text('Simple Interest'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _principalAmountController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Principal Amount',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: _rateOfInterestController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Rate of Interest',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: _timePeriodController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Time Period',
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Result: $_result',
                style: const TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(
                        color: Color.fromARGB(255, 43, 85, 159),
                        width: 2,
                      ),
                    ),
                  ),
                  onPressed: () {
                    _calculateSI();
                  },
                  child: const Text('CALCULATE',
                      style: TextStyle(
                        color: Color.fromARGB(255, 43, 85, 159),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
