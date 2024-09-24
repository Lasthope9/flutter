import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text Widget for welcome message
            const Text(
              'Welcome to the Simple App!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20), // Spacing between widgets

            // ElevatedButton widget to print a message to the console
            ElevatedButton(
              onPressed: () {
                if (kDebugMode) {
                  print('Button Pressed!');
                } // Message printed to the console
              },
              child: const Text('Click Me'),
            ),
            const SizedBox(height: 20), // Spacing between widgets

            // Image widget to display an image from the internet
            Image.network(
              'https://via.placeholder.com/150', // Example image URL
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
