abstract class CounterState {}

class CounterInit extends CounterState {
  int counter;
  CounterInit(this.counter);
}

class CounterUpdate extends CounterState {
  int counter;
  CounterUpdate(this.counter);
}
