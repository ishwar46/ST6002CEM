import 'package:flutter/material.dart';

class ClassTaskNew extends StatefulWidget {
  const ClassTaskNew({super.key});

  @override
  State<ClassTaskNew> createState() => _ClassTaskNewState();
}

class _ClassTaskNewState extends State<ClassTaskNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 43, 85, 159),
        elevation: 0,
        title: const Text('Row and Column'),
      ),
      body: Column(
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.blue,
                  child: const Text(
                    'Container 1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  child: const Text(
                    'Container 2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  height: 100,
                  width: 200,
                  color: Colors.red,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  child: const Text(
                    'Container 3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  height: 100,
                  width: 200,
                  color: Colors.blue,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Text(
                    'Container 4',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  height: 100,
                  width: 200,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Text(
                    'Container 5',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  height: 100,
                  width: 200,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Text(
                    'Container 6',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  height: 100,
                  width: 200,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
