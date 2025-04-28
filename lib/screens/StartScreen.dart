import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback startTest;

  StartScreen({required this.startTest});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        color: Color.fromARGB(255, 67, 90, 218),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Discover Your Personality Type!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(height: 10),
              Text(
                '💖  🗺️  \n📅  🧠',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color:  Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(height: 20),
              ElevatedButton(
              onPressed: startTest,
              child: Text('Start Test'),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
