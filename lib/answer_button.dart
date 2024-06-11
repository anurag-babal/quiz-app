import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        ),
        onPressed: onTap,
        child: Text(answerText),
      ),
    );
  }
}
