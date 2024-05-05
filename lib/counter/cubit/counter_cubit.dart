import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(): super(0);

  void tambah() => emit(state + 1);
  void kurangi() => emit(state - 1);
}