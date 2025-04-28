import 'package:flutter/material.dart';
import '../models/personality.dart';

class ResultScreen extends StatelessWidget {
  final Personality resultPersonality;
  final VoidCallback restartTest;

  ResultScreen({required this.resultPersonality, required this.restartTest});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 67, 90, 218),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  personalityMessages[resultPersonality]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),
                ),
                SizedBox(height: 30),
                ElevatedButton(onPressed: restartTest, child: Text('Restart Test')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
