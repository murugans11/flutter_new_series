import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_new_series/cubit/counter/counter_cubit.dart';

import 'other_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'MyCounter Cubit',
        debugShowCheckedModeBanner: false,
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
        child: BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {
              if (state.count == 3) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('count${state.count}'),
                      );
                    });
              } else if (state.count == -1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return OtherPage();
                  }),
                );
              }
        }, builder: (context, state) {
          return Text(
            '${state.count}',
            style: TextStyle(fontSize: 50.0),
          );
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => {
              context.read<CounterCubit>().increment(),
              // BlocProvider.of<CounterCubit>(context).increment()
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => {
              context.read<CounterCubit>().decrement()
              // BlocProvider.of<CounterCubit>(context).increment()
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
