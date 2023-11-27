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
        title: const Text('Container'),
      ),
      // body: Center(
      //   child: Container(
      //     decoration: BoxDecoration(
      //       color: Colors.yellow,
      //       border: Border.all(
      //         color: Colors.black,
      //         width: 5,
      //       ),
      //       shape: BoxShape.circle,
      //     ),
      //     alignment: Alignment.center,
      //     height: 200,
      //     width: 200,
      //     child: const Text('Hello World'),
      //   ),
      // ),
      body: const Align(
        alignment: Alignment.centerRight,
        child: Text("Hello World"),
      ),
    );
  }
}
