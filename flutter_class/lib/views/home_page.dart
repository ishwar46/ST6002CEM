import 'package:flutter/material.dart';
import 'package:flutter_class/widgets/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 43, 85, 159),
          elevation: 0,
          title: const Text('Dashboard'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CardWidget(
                title: 'ADD NUMBERS',
                routeName: '/addNum',
                iconData: Icons.add,
              ),
              SizedBox(height: 15),
              CardWidget(
                title: 'SIMPLE INTEREST',
                routeName: '/SI',
                iconData: Icons.money,
              ),
              SizedBox(height: 15),
              CardWidget(
                title: 'AREA OF CIRCLE',
                routeName: '/area',
                iconData: Icons.circle,
              ),
            ],
          ),
        ));
  }
}
