import '../models/question.dart';
import '../models/answer.dart';
import '../models/personality.dart';

final questions = [
  Question(
    text: "How do you approach a difficult decision?",
    answers: [
      Answer(text: "a) Analyze all options logically.", personality: Personality.Thinker),
      Answer(text: "b) Go with what feels right emotionally.", personality: Personality.Feeler),
      Answer(text: "c) Make a checklist and plan it out.", personality: Personality.Planner),
      Answer(text: "d) Take a leap and deal with results later.", personality: Personality.Adventurer),
    ],
  ),
  Question(
    text: "What excites you the most?",
    answers: [
      Answer(text: "a)Solving complex problems", personality: Personality.Thinker),
      Answer(text: "b) Connecting deeply with others", personality: Personality.Feeler),
      Answer(text: "c) Creating a clear path to your goals", personality: Personality.Planner),
      Answer(text: "d) Exploring something new", personality: Personality.Adventurer),
    ],
  ),
  Question(
    text: "Which best describes your work style?",
    answers: [
      Answer(text: "a) Detail-focused and logical", personality: Personality.Thinker),
      Answer(text: "b) People-centered and intuitive", personality: Personality.Feeler),
      Answer(text: "c) Organized and systematic", personality: Personality.Planner),
      Answer(text: "d) Flexible and spontaneous", personality: Personality.Adventurer),
    ],
  ),
  Question(
    text: "How do you recharge after a long day?",
    answers: [
      Answer(text: "a) Quiet reflection or reading", personality: Personality.Thinker),
      Answer(text: "b) Spending time with close", personality: Personality.Feeler),
      Answer(text: "c) Planning tomorrow's tasks", personality: Personality.Planner),
      Answer(text: "d) Doing something active or exciting", personality: Personality.Adventurer),
    ],
  ),
  Question(
    text: "You're most comfortable when...",
    answers: [
      Answer(text: "a) Things make logical sense", personality: Personality.Thinker),
      Answer(text: "b) Everyone is getting along", personality: Personality.Feeler),
      Answer(text: "c) There's a clear structure", personality: Personality.Planner),
      Answer(text: "d) You're free to try new things", personality: Personality.Adventurer),
    ],
  ),
  Question(
    text: "Your biggest strength is...",
    answers: [
      Answer(text: "a) Thinking critically", personality: Personality.Thinker),
      Answer(text: "b) Empathizing with others", personality: Personality.Feeler),
      Answer(text: "c) Staying organized", personality: Personality.Planner),
      Answer(text: "d) Being adventurous", personality: Personality.Adventurer),
    ],
  ),
  
];
