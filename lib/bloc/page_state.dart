part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

class PageInitial extends PageState {
  final Page page;
  final int amount;

  const PageInitial(this.page, this.amount);
  @override
  List<Object> get props => [page, amount];
}