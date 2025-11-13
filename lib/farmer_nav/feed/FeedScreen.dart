import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Farmer Feed')),
      body: const Center(
        child: Text(
          'Latest updates and farming news will appear here.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
