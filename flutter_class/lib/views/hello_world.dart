import 'package:flutter/material.dart';

class HelloWorlds extends StatefulWidget {
  const HelloWorlds({super.key});

  @override
  State<HelloWorlds> createState() => _HelloWorldsState();
}

class _HelloWorldsState extends State<HelloWorlds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 43, 85, 159),
        elevation: 0,
        title: const Text('Hello World'),
      ),
      body: const Center(
        child: Text(
          "Hello World",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ),
    );
  }
}
