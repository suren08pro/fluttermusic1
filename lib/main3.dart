import 'package:flutter/material.dart';


import 'try1.dart';

void main() {
  runApp(GamifyApp());
}

class GamifyApp extends StatelessWidget {
  const GamifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gamify App",
      theme: ThemeData(brightness: Brightness.dark),
      home: HomePage(),
    );
  }
}
