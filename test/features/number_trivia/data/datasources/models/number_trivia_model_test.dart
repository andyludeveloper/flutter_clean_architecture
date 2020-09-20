import 'package:flutter_clean_architecture_tdd/features/number_trivia/data/datasources/models/number_trivia_model.dart';
import 'package:flutter_clean_architecture_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Test Text');
  test('should be subclass of NumberTrivia entity', () async {
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });
}
