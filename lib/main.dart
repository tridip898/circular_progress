import 'package:circle_design/screens/calenderPage.dart';
import 'package:circle_design/screens/cupertino_stepper.dart';
import 'package:circle_design/screens/easy_stepper.dart';
import 'package:circle_design/screens/home_screen.dart';
import 'package:circle_design/screens/im_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/easy',
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/calendar', page: () => const CalendarPage()),
        GetPage(name: '/easy', page: () => const EasyStepperPage()),
        GetPage(name: '/im', page: () => const ImStepperPage()),
        GetPage(name: '/cupertino', page: () => const CupertinoStepperPage()),
      ],
    );
  }
}
