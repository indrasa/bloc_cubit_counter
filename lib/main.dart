import 'package:bloc/bloc.dart';
import 'package:bloc_counter/counter_observer.dart';
import 'package:flutter/widgets.dart';
import './app.dart';

void main(){
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}