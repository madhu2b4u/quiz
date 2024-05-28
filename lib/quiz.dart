
import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{

  Widget? activeScreen;

  @override
  initState(){
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors :[Colors.purple, Colors.red]
              ),
            ),
            child: activeScreen,
          ),
        )
    );
  }
}