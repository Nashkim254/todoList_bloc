import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/bloc/todo_observer.dart';
import 'package:todo_bloc/pages/home_page.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends MaterialApp {
  MyApp()
      : super(
          home: HomePage(),
          theme: ThemeData(
            primaryColor: Colors.amber,
          ),
        );
}
