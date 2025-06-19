import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              onPressed: () {
                context.go('/second');
              },
              child: const Text('Gunakan pushNamed'),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/second');
              },
              child: const Text('Gunakan push biasa'),
            ),
            const SizedBox(height: 20),
            const Text('Navigasi ke Layar Keempat:'),
            ElevatedButton(
              onPressed: () {
                context.go('/fourth');
              },
              child: const Text('Gunakan pushNamed'),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/fourth');
              },
              child: const Text('Gunakan push biasa'),
            ),
          ],
        ),
      ),
    );
  }
}
