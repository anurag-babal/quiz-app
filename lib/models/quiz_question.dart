class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final List<String> shuffeledAnswers = List.of(answers);
    shuffeledAnswers.shuffle();
    return shuffeledAnswers;
  }
}