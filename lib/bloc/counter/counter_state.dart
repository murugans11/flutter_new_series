import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;

  factory CounterState.initial() {
    return const CounterState(counter: 0);
  }

  const CounterState({
    required this.counter,
  });

  @override
  String toString() {
    return 'CounterState{counter: $counter}';
  }

  @override
  List<Object> get props => [counter];

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}
