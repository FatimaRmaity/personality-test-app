import 'package:flutter/material.dart';
import '../data/questions.dart';
import '../models/personality.dart';

class QuestionScreen extends StatelessWidget {
  final int questionIndex;
  final void Function(Personality) answerQuestion;

  QuestionScreen({required this.questionIndex, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 67, 90, 218),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuestion.text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ...currentQuestion.answers.map(
                (answer) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: ElevatedButton(
                    onPressed: () => answerQuestion(answer.personality),
                    child: Text(answer.text,
                      style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 18, 83, 204)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
