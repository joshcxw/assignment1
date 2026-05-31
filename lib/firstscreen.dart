import 'package:flutter/material.dart';
import 'secondscreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // Top bar
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'First Screen',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'GasoekOne',
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Center of screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Screen 1',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 100),
            Image.asset(
              'assets/number1.png', // image for screen 1
              height: 300,
            ),
            const SizedBox(height: 200),

            // button to go to second screen
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('Go to Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}