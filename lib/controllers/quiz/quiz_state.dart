import 'package:annime_pro/models/question_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

enum QuizStatus { initial, correct, incorrect, complete }

class QuizState extends Equatable {
  final String selectedAnswer;
  final List<Question> correct;
  final List<Question> incorrect;
  final QuizStatus status;

  bool get answered =>
      status == QuizStatus.incorrect || status == QuizStatus.correct;

  const QuizState({
    required this.selectedAnswer,
    required this.correct,
    required this.incorrect,
    required this.status,
  });

  factory QuizState.initial() {
    return QuizState(
      selectedAnswer: '',
      correct: [],
      incorrect: [],
      status: QuizStatus.initial,
    );
  }

  @override
  List<Object> get props => [
        selectedAnswer,
        correct,
        incorrect,
        status,
      ];

  QuizState copyWith({
    required String selectedAnswer,
    required List<Question> correct,
    required List<Question> incorrect,
    required QuizStatus status,
  }) {
    return QuizState(
      selectedAnswer: selectedAnswer ?? this.selectedAnswer,
      correct: correct ?? this.correct,
      incorrect: incorrect ?? this.incorrect,
      status: status ?? this.status,
    );
  }
}
