import 'package:bloc/bloc.dart';

class CounterCubit2 extends Cubit<int> {
  CounterCubit2() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

void main() {
  final cubit = CounterCubit2();

  print(cubit.state);
  cubit.increment();
  print(cubit.state);
  cubit.increment();
  print(cubit.state);

  cubit.decrement();
  print(cubit.state);
  cubit.close();
}
