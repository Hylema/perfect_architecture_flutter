import 'package:architecture_project/core/usecases/usecase.dart';
import 'package:architecture_project/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:architecture_project/feature/number_trivia/domain/repositories/number_trivia_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:architecture_project/core/error/failure.dart';


class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}