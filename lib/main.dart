import 'package:flutter/material.dart';
import 'package:untitled/presentation/screens/counter_functions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: const CounterFunctionsScreen());
  }
}
