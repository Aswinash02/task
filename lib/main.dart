import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task1/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task',
      scrollBehavior: CustomScrollForWeb(),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class CustomScrollForWeb extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {PointerDeviceKind.touch, PointerDeviceKind.mouse};
}
