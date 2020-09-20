import 'package:flutter_clean_architecture_tdd/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({int number, String text});

  factory NumberTriviaModel.fromJson(Map<String, dynamic> input) {
    final int number = input['number'];
    final String text = input['text'];
    return NumberTriviaModel(number: number, text: text);
  }
}
