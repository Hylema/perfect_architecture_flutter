import 'package:architecture_project/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:meta/meta.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({
    @required String text,
    @required int number,
  }) : super(
    text: text,
    number: number,
  );

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    print('json ============================ $json');


    return NumberTriviaModel(
      text: json['text'],
      number: json['number'].toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'number': number,
    };
  }
}