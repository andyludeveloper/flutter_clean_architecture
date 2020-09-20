import 'package:flutter_clean_architecture_tdd/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  final String text;
  final int number;
  NumberTriviaModel({this.number, this.text});

  factory NumberTriviaModel.fromJson(Map<String, dynamic> input) {
    final int number = input['number'].toInt();
    final String text = input['text'];
    return NumberTriviaModel(number: number, text: text);
  }

  Map<String, dynamic> toJson() {
    return {"text": text, "number": number};
  }
}
