import 'package:equatable/equatable.dart';

class Page extends Equatable {
  final String question;
  final String fact;
  final int initialAmount;

  Page(this.fact, this.initialAmount, this.question);

  @override
  List<Object> get props => [fact, initialAmount, question];
}
