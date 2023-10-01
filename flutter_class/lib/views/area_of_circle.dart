import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({Key? key}) : super(key: key);

  @override
  _AreaOfCircleState createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  final TextEditingController _radiusController = TextEditingController();

  double _result = 0.0;

  void _calculateArea() {
    setState(() {
      double radius = double.parse(_radiusController.text);
      _result = 3.14 * radius * radius;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 43, 85, 159),
        elevation: 0,
        title: const Text('Area of Circle'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _radiusController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Radius',
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
                    _calculateArea();
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 43, 85, 159)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
