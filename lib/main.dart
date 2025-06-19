import 'package:flutter/material.dart';
import 'package:print_log/screens/home_screen.dart';
import 'package:print_log/screens/second_screen.dart';
import 'package:print_log/screens/third_screen.dart';
import 'package:print_log/screens/fourth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
        '/fourth': (context) => const FourthScreen(),
      },
    );
  }
}
