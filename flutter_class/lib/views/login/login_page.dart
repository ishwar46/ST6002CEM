import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 43, 85, 159),
          elevation: 0,
          title: const Text('Column'),
        ),
        body: Container(
          color: Colors.yellow,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: null,
                child: const Text("Button1"),
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text("Button1"),
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text("Button1"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
