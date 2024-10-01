import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:points_counter/cubit/counter_cubit.dart';
import 'package:points_counter/views/home_view.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
