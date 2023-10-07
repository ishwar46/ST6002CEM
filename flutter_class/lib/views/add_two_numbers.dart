import 'package:flutter/material.dart';

class AddNumbers extends StatefulWidget {
  const AddNumbers({super.key});

  @override
  State<AddNumbers> createState() => _AddNumbersState();
}

class _AddNumbersState extends State<AddNumbers> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();

  int _result = 0;

  void _addNumbers() {
    setState(() {
      _result = int.parse(_firstNumberController.text) +
          int.parse(_secondNumberController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 43, 85, 159),
        elevation: 0,
        title: const Text('Add Numbers'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _firstNumberController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First Number',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: _secondNumberController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second Number',
                ),
              ),
              const SizedBox(height: 15),
              RadioListTile(
                title: const Text('Add'),
                value: 0,
                toggleable: true,
                groupValue: _result,
                onChanged: (int? value) {
                  setState(() {
                    _result = value!;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Subtract'),
                value: 0,
                groupValue: _result,
                onChanged: (int? value) {
                  setState(() {
                    _result = value!;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Multiply'),
                value: 0,
                groupValue: _result,
                onChanged: (int? value) {
                  setState(() {
                    _result = value!;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Divide'),
                value: 0,
                groupValue: _result,
                onChanged: (int? value) {
                  setState(() {
                    _result = value!;
                  });
                },
              ),
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
                      _addNumbers();
                    },
                    child: const Text(
                      'ADD',
                      style: TextStyle(
                        color: Color.fromARGB(255, 43, 85, 159),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
