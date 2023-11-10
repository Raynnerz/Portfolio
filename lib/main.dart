import 'package:flutter/material.dart';
import 'package:portfolio/screens/portfolio.dart';


void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfólio',
      home: Portfolio(),
    );
  }
}
