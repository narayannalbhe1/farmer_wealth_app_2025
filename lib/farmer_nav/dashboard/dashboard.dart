import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Farmer Dashboard')),
      body: const Center(
        child: Text(
          'This is your dashboard — track crops, earnings, and uploads here.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
