import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  itemData['user_answer'] as String,
                  style: GoogleFonts.roboto(
                    color: Colors.brown,
                  ),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: GoogleFonts.roboto(
                    color: Colors.cyan,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
