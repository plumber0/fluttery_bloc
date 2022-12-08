import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttery_bloc/presentation/screen/second_screen.dart';
import 'package:fluttery_bloc/presentation/screen/third_screen.dart';

import 'logic/cubit/counter_cubit.dart';
import 'presentation/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterCubit _counterCubit = CounterCubit();

  @override
  void dispose() {
    _counterCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => BlocProvider.value(
              value: _counterCubit,
              child: HomeScreen(
                title: 'HomeScreen',
                color: Colors.blueAccent,
              ),
            ),
        '/second': (context) => BlocProvider.value(
              value: _counterCubit,
              child:
                  SecondScreen(title: 'SecondScreen', color: Colors.redAccent),
            ),
        '/third': (context) => BlocProvider.value(
              value: _counterCubit,
              child:
                  ThirdScreen(title: 'ThirdScreen', color: Colors.greenAccent),
            ),
      },
    );
  }
}
