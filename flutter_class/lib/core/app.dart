import 'package:flutter/material.dart';
import 'package:flutter_class/views/add_two_numbers.dart';
import 'package:flutter_class/views/area_of_circle.dart';
import 'package:flutter_class/views/hello_world.dart';
import 'package:flutter_class/views/home_page.dart';
import 'package:flutter_class/views/login/login_page.dart';
import 'package:flutter_class/views/simple_interest.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Class',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.addNumRoute: (context) => const AddNumbers(),
        MyRoutes.siRoute: (context) => const SimpleInterest(),
        MyRoutes.areaRoute: (context) => const AreaOfCircle(),
        MyRoutes.helloRoute: (context) => const HelloWorlds(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}

class MyRoutes {
  static String homeRoute = "/home";
  static String addNumRoute = "/addNum";
  static String siRoute = "/SI";
  static String areaRoute = "/area";
  static String helloRoute = "/hello";
  static String loginRoute = "/login";
}
