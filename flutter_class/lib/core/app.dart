import 'package:flutter/material.dart';
import 'package:flutter_class/views/add_two_numbers.dart';
import 'package:flutter_class/views/area_of_circle.dart';
import 'package:flutter_class/views/hello_world.dart';
import 'package:flutter_class/views/home_page.dart';
import 'package:flutter_class/views/image_view.dart';
import 'package:flutter_class/views/login/login_page.dart';
import 'package:flutter_class/views/simple_interest.dart';

import '../views/class_task.dart';
import '../views/expanded_flexible_view.dart';
import '../views/list_view.dart';

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
        MyRoutes.imageRoute: (context) => const ImageView(),
        MyRoutes.listRoute: (context) => const StudentListView(),
        MyRoutes.explistRoute: (context) => const ExpandFlex(),
        MyRoutes.classtaskRoute: (context) => const ClassTaskNew(),
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
  static String imageRoute = "/image";
  static String listRoute = "/list";
  static String explistRoute = "/expanded";
  static String classtaskRoute = "/classtask";
}
