import 'package:flutter/material.dart';
import 'package:print_log/core/logger.dart';
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
              onPressed: () {
                AppLogger.i('Navigasi ke Home Screen menggunakan pushNamed');
                print('Navigasi ke Home Screen menggunakan pushNamed');
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Gunakan pushNamed'),
            ),
            ElevatedButton(
              onPressed: () {
                AppLogger.d('Navigasi ke Home Screen menggunakan push');
                print('Navigasi ke Home Screen menggunakan push');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text('Gunakan push biasa'),
            ),
            const SizedBox(height: 20),
            const Text('Navigasi ke Layar Ketiga:'),
            ElevatedButton(
              onPressed: () {
                AppLogger.i('Navigasi ke Third Screen menggunakan pushNamed');
                print('Navigasi ke Third Screen menggunakan pushNamed');
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Gunakan pushNamed'),
            ),
            ElevatedButton(
              onPressed: () {
                AppLogger.d('Navigasi ke Third Screen menggunakan push');
                print('Navigasi ke Third Screen menggunakan push');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                );
              },
              child: const Text('Gunakan push biasa'),
            ),
          ],
        ),
      ),
    );
  }
}
