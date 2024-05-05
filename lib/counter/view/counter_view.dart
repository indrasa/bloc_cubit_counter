import 'package:bloc_counter/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_counter/counter/counter.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context ,state){
            return Text('$state', style: textTheme.displayMedium,);
          },
        ),),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              key: const Key('counterView_tambah_floatingActionButton'),
              onPressed: () => context.read<CounterCubit>().tambah(), child: const Icon(Icons.add),),
            SizedBox(height: 8,),
            FloatingActionButton(
              key: const Key('counterView_kurangi_floatingActionButton'),
              onPressed: () => context.read<CounterCubit>().kurangi(), child: const Icon(Icons.remove),)
          ],
        ),
    );
  }
}

