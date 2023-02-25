import 'package:flutter/material.dart';
import 'package:week8/screens/home.dart';
import 'package:week8/screens/one.dart';
import 'package:week8/screens/two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
      routes: {
        // "pageone":(context) => const One(),
        "pagetwo":(context) => const Two(),
      },
    );
  }
}
