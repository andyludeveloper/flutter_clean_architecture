import 'dart:convert';

import 'package:flutter_clean_architecture_tdd/features/number_trivia/data/datasources/models/number_trivia_model.dart';
import 'package:flutter_clean_architecture_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Test text');
  test('should be subclass of NumberTrivia entity', () async {
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });

  group('fromJson', () {
    test('should return valid model when JSON number is an integer', () {
      //arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));

      //act
      final result = NumberTriviaModel.fromJson(jsonMap);

      //assert
      expect(result, tNumberTriviaModel);
    });
    test('should return valid model when JSON number is regarded as a double',
        () {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));

      //act
      final result = NumberTriviaModel.fromJson(jsonMap);

      //assert
      expect(result, tNumberTriviaModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing the proper data', () {
      //act
      final result = tNumberTriviaModel.toJson();

      final expectedMap = {"text": "Test text", "number": 1};
      //result
      expect(result.toString(), expectedMap.toString());
    });
  });
}
