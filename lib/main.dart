import 'package:cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:flutter_cubit_demo/cubit/counter_cubit.dart';
import 'package:flutter_cubit_demo/cubit/cubit_observer.dart';
import 'package:flutter_cubit_demo/home_page.dart';

import 'cubit/cubit_observer.dart';

void main() {
  Cubit.observer = MainCubitObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CubitProvider(
        create: (context) => CounterCubit(),
        child: HomePage(),
      ),

//      HomePage()
    );
  }
}
