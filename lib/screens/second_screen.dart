import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


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
                context.go('/');
              },
              child: const Text('Gunakan pushNamed'),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/');
              },
              child: const Text('Gunakan push biasa'),
            ),
            const SizedBox(height: 20),
            const Text('Navigasi ke Layar Ketiga:'),
            ElevatedButton(
              onPressed: () {
                context.go('/third');
              },
              child: const Text('Gunakan pushNamed'),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/third');
              },
              child: const Text('Gunakan push biasa'),
            ),
            const SizedBox(height: 20),
            const Text('Navigasi ke Nested Screen:'),
            ElevatedButton(
              onPressed: () {
                context.go('/second/nested/1');
              },
              child: const Text('Nested Screen 1'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/second/nested/2');
              },
              child: const Text('Nested Screen 2'),
            ),
            const SizedBox(height: 20),
            const Text('Contoh Redirection:'),
            ElevatedButton(
              onPressed: () {
                context.go('/redirect');
              },
              child: const Text('Go to Redirect'),
            ),
            const SizedBox(height: 20),
            const Text('Contoh Query Parameter Redirection:'),
            ElevatedButton(
              onPressed: () {
                context.go('/?redirectTo=/fourth');
              },
              child: const Text('Redirect ke fourth screen dengan Query Parameter'),
            ),
          ],
        ),
      ),
    );
  }
}
