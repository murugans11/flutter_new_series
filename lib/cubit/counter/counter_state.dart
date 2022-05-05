part of 'counter_cubit.dart';

class CounterState extends Equatable {

  final count;

  CounterState({
    required this.count,
  });

  @override
  String toString() {
    return 'CounterState{count: $count}';
  }

  @override
  List<Object?> get props => [count];

  factory CounterState.initial() {
    return CounterState(count: 0);
  }

  CounterState copyWith({
    int? countValues,
  }) {
    return CounterState(
      count: countValues ?? this.count,
    );
  }
}
