
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
          ),const SizedBox(
            height: 48,
          ),
        Text("Learn the flutter the fun way!",
          style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
          const SizedBox(
            height: 48,
          ),
          OutlinedButton.icon(
              onPressed:startQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 16)
              ),
              icon: const Icon(Icons.arrow_forward) ,
              label: const Text("Start Quiz")
          )
        ],
      )
    );
  }
}