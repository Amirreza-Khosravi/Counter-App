import 'package:counter/bloc/counter_event.dart';
import 'package:counter/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInit(0)) {
    on<IncrementPressed>((event, emit) => emit(CounterUpdate(++counter)));
    on<DecrementPressed>((event, emit) => emit(CounterUpdate(--counter)));
    on<ResetPressed>((event, emit) => emit(CounterUpdate(counter = 0)));
  }
}
