import 'package:flutter/material.dart';
import 'package:task5/screens/home_screen.dart';


void main() {
  runApp(const LanguageApp());
}
class LanguageApp extends StatelessWidget {
  const LanguageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}