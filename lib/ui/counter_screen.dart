import 'package:counter/bloc/counter_bloc.dart';
import 'package:counter/bloc/counter_event.dart';
import 'package:counter/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  if (state is CounterInit) {
                    return Text(
                      '${state.counter}',
                      style: TextStyle(fontSize: 60),
                    );
                  }
                  if (state is CounterUpdate) {
                    return Text(
                      '${state.counter}',
                      style: TextStyle(fontSize: 60),
                    );
                  }
                  return Text('Error');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(IncrementPressed());
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(DecrementPressed());
                },
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(ResetPressed());
                },
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
