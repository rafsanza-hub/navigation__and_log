import 'package:flutter/material.dart';
import 'package:print_log/screens/home_screen.dart';
import 'package:print_log/screens/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Kedua'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ini adalah Layar Kedua'),
            const SizedBox(height: 20),
            const Text('Navigasi ke Layar Utama:'),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              child: const Text('Gunakan pushNamed'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              ),
              child: const Text('Gunakan push biasa'),
            ),
            const SizedBox(height: 20),
            const Text('Navigasi ke Layar Ketiga:'),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/third'),
              child: const Text('Gunakan pushNamed'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThirdScreen()),
              ),
              child: const Text('Gunakan push biasa'),
            ),
          ],
        ),
      ),
    );
  }
}
