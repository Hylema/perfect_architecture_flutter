import 'package:dartz/dartz.dart';

import 'package:architecture_project/core/error/failure.dart';
import 'package:architecture_project/feature/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}