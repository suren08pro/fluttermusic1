//import 'package:appday1/homescreen.dart';
import 'dart:io';

import 'package:appday1/hm.dart';
import 'package:appday1/songs.dart';
import 'package:appday1/try4.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'try1.dart';

Future<void> main() async {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.red,
        brightness: Brightness.dark
      ),
        home:hm(),
        //home:songss()
        //home:HomePage(),
        //home:HomeScreen()
    );
  }
}