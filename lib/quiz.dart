import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/gradient_container.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  List<String> selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  void selectedAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultsScreen(
            chosenAnswers: selectedAnswers, restartQuiz: switchScreen);
      });
    }
  }

  void switchScreen() {
    selectedAnswers = [];
    setState(() {
      activeScreen = QuestionsScreen(
        onSelectAnswer: selectedAnswer,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1: const Color.fromARGB(255, 111, 42, 190),
          color2: const Color.fromARGB(255, 94, 20, 212),
          child: activeScreen,
        ),
      ),
    );
  }
}
