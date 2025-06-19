import 'package:flutter/material.dart';
import 'package:print_log/screens/second_screen.dart';
import 'package:print_log/screens/fourth_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Ketiga'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ini adalah Layar Ketiga'),
            const SizedBox(height: 20),
            const Text('Navigasi ke Layar Kedua:'),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/second'),
              child: const Text('Gunakan pushNamed'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondScreen()),
              ),
              child: const Text('Gunakan push biasa'),
            ),
            const SizedBox(height: 20),
            const Text('Navigasi ke Layar Keempat:'),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/fourth'),
              child: const Text('Gunakan pushNamed'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FourthScreen()),
              ),
              child: const Text('Gunakan push biasa'),
            ),
          ],
        ),
      ),
    );
  }
}
