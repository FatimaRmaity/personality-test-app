import 'package:flutter/material.dart';
import 'screens/StartScreen.dart';
import 'screens/QuestionScreen.dart';
import 'screens/ResultScreen.dart';
import 'data/questions.dart';
import 'models/personality.dart';

void main() {
  runApp(MaterialApp(
    home: PersonalityTestApp(),
  ));
}

class PersonalityTestApp extends StatefulWidget {
  @override
  _PersonalityTestAppState createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  int _currentQuestionIndex = -1;
  final Map<Personality, int> _scores = {
    Personality.Thinker: 0,
    Personality.Feeler: 0,
    Personality.Planner: 0,
    Personality.Adventurer: 0,
  };

  void _startTest() {
    setState(() {
      _currentQuestionIndex = 0;
      _scores.updateAll((key, value) => 0);
    });
  }

  void _answerQuestion(Personality personality) {
    setState(() {
      _scores[personality] = _scores[personality]! + 1;
      _currentQuestionIndex++;
    });
  }

  void _restartTest() {
    setState(() {
      _currentQuestionIndex = -1;
      _scores.updateAll((key, value) => 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_currentQuestionIndex == -1) {
      return StartScreen(startTest: _startTest);
    } else if (_currentQuestionIndex < questions.length) {
      return QuestionScreen(
        questionIndex: _currentQuestionIndex,
        answerQuestion: _answerQuestion,
      );
    } else {
      Personality result = _scores.entries.reduce((a, b) => a.value > b.value ? a : b).key;
      return ResultScreen(resultPersonality: result, restartTest: _restartTest);
    }
  }
}
