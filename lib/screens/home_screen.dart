import 'package:flutter/material.dart';
import 'package:print_log/core/logger.dart';
import 'package:print_log/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Utama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ini adalah Layar Utama'),
            const SizedBox(height: 20),
            const Text('Navigasi ke Layar Kedua:'),
            ElevatedButton(
              onPressed: () {
                AppLogger.i('Navigasi ke Second Screen menggunakan pushNamed');
                print('Navigasi ke Second Screen menggunakan pushNamed');
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Gunakan pushNamed'),
            ),
            ElevatedButton(
              onPressed: () {
                AppLogger.d('Navigasi ke Second Screen menggunakan push');
                print('Navigasi ke Second Screen menggunakan push');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
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
