import 'package:flutter/material.dart';
import 'package:flutter_new_series/other_page.dart';

import 'bloc/counter/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter/counter_event.dart';
import 'bloc/counter/counter_state.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter New Series',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<CounterBloc, CounterState>(
          listener: (context, state) {
            if (state.counter == 3) {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      content: Text(state.counter.toString()),
                    );
                  });
            } else if (state.counter == -1) {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return OtherPage();
              }));
            }
          },
          builder: (context, state) {
            return Text(
              '${state.counter}',
              style: TextStyle(fontSize: 50.0),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(IncrementCounterEvent());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounterEvent());
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
