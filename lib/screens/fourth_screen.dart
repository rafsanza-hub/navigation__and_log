import 'package:flutter/material.dart';
import 'package:print_log/screens/third_screen.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Keempat'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ini adalah Layar Keempat'),
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
            const SizedBox(height: 20),
            const Text('Navigasi ke Layar sebelumnya:'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali ke Layar Sebelumnya'),
            ),
          ],
        ),
      ),
    );
  }
}
