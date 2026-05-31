import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

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

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // top bar
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context); // go back to screen 1
            },
        ),
        backgroundColor: Colors.black87,
        title: const Text(
            'Second Screen',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'GasoekOne',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // center of screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is Screen 2',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 100),
            Image.asset(
              'assets/number2.png', // image for Screen 2
              height: 300,
            ),
            const SizedBox(height: 200),

            // button to return to the first screen
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to Screen 1
              },
              child: const Text('Back to Screen 1'),
            ),
          ],
        ),
      ),
    );
  }
}
