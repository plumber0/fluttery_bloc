import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttery_bloc/logic/cubit/counter_cubit.dart';
import 'package:fluttery_bloc/presentation/screen/home_screen.dart';
import 'package:fluttery_bloc/presentation/screen/second_screen.dart';
import 'package:fluttery_bloc/presentation/screen/third_screen.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();

  void dispose() {
    _counterCubit.close();
  }

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: HomeScreen(
                    title: 'HomeScreen',
                    color: Colors.blueAccent,
                  ),
                ));
        break;
      case '/second':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: SecondScreen(
                    title: 'SecondScreen',
                    color: Colors.redAccent,
                  ),
                ));
        break;
      case '/third':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: ThirdScreen(
                    title: 'ThirdScreen',
                    color: Colors.greenAccent,
                  ),
                ));
        break;
      default:
        return null;
    }
  }
}
