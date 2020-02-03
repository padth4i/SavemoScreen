part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class ChangePage extends PageEvent {
  @override
  List<Object> get props => [];
}

class DecrementCounter extends PageEvent {
  @override
  List<Object> get props => [];
}

class IncrementCounter extends PageEvent {
  @override
  List<Object> get props => [];
}
