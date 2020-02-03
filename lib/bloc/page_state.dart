part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

class PageInitial extends PageState {
  final Page page;

  const PageInitial(this.page);
  @override
  List<Object> get props => [page];
}

class PageCounter extends PageState {
  final int counter;

  PageCounter(this.counter);
  @override
  List<Object> get props => [];
}
