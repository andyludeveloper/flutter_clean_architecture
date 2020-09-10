import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_clean_architecture_tdd/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetRandomNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(mockNumberTriviaRepository);
  });
  final tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test('should get trivia from the repository', () async {
    //Arrange
    when(mockNumberTriviaRepository.getNumberNumberTrivia())
        .thenAnswer((_) async => Right(tNumberTrivia));
    //act
    final result = await usecase();

    //assert
    expect(result, Right(tNumberTrivia));
    //Actually, we wouldn't find out because the mocked repository always returns
    //the same tNumberTrivia
    // Verification is therefore a life-saver!
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
