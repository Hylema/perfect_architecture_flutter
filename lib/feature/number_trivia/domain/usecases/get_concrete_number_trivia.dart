import 'package:architecture_project/core/usecases/usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';

import 'package:architecture_project/core/error/failure.dart';
import 'package:architecture_project/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:architecture_project/feature/number_trivia/domain/repositories/number_trivia_repositories.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params>{
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository){
    print('Params2 ====== $repository');
  }

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({@required this.number}) : super([number]);
}