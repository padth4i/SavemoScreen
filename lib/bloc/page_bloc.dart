import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:savemo_screen/page.dart';

part 'page_event.dart';
part 'page_state.dart';

// class PageBloc extends Bloc<PageEvent, PageState> {
//   int index = 0;
//   Page page = new Page(
//       'Only 3.2% of India\'s total population earn greater than Rs.50000 per month!',
//       50000,
//       'Is this your monthly salary?');
//   int counter = 0;
//   @override
//   PageState get initialState => PageInitial(page);

//   @override
//   Stream<PageState> mapEventToState(
//     PageEvent event,
//   ) async* {
//     yield PageCounter(page.initialAmount + counter);
//     if (event is IncrementCounter) {
//       counter += 100;
//       yield PageInitial(
//           Page(page.fact, page.initialAmount + counter, page.question));
//     }

//     if (event is DecrementCounter) {
//       counter -= 100;
//       yield PageInitial(
//           Page(page.fact, page.initialAmount + counter, page.question));
//     }

//     if (event is ChangePage) {
//       index++;
//       switch (index) {
//         case 1:
//           page = Page(
//               'Domestic workers get paid Rs.7000 on average. When in need, they resort to taking loans at interest rates of 50%',
//               5000,
//               'How much do you pay your maid(s)/cook(s) every month?');

//           yield PageInitial(page);
//           break;
//         case 2:
//           page = Page(
//               'Netflix has a debt of over \$14 Billion. But all of it is used to grow their business, so they will earn it back with time',
//               2000,
//               'Is this how much you pay as bills every month');
//           yield PageInitial(page);
//           break;
//       }
//     }
//   }
// }

class PageBloc extends Bloc<PageEvent, PageState> {
  int index = 0;
  Page page = new Page(
      'Only 3.2% of India\'s total population earn greater than Rs.50000 per month!',
      50000,
      'Is this your monthly salary?');
  int counter = 0;
  @override
  PageState get initialState => PageInitial(page);

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    yield PageCounter(page.initialAmount + counter);
    if (event is IncrementCounter) {
      counter += 100;
      yield PageInitial(
          Page(page.fact, page.initialAmount + counter, page.question));
    }

    if (event is DecrementCounter) {
      counter -= 100;
      yield PageInitial(
          Page(page.fact, page.initialAmount + counter, page.question));
    }

    if (event is ChangePage) {
      index++;
      switch (index) {
        case 1:
          page = Page(
              'People living in metro cities pay Rs.12500 as rent on an average.',
              10000,
              'How much do you pay as rent every month?');
          yield PageInitial(page);
          break;
        
      }
    }
  }
}
