import 'package:cubit/cubit.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(1);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    if (state > 1) emit(state - 1);
  }
}
