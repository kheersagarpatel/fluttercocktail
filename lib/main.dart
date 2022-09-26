import 'package:flutter/material.dart';
import 'package:fluttercocktail/homepage.dart';

const Color myColor = Colors.brown;

void main() {
  runApp(const MyApp());
}

// Statelessn & Stateful

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cocktail App",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}
