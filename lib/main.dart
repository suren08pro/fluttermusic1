//import 'package:appday1/homescreen.dart';
import 'package:appday1/hm.dart';
import 'package:flutter/material.dart';
import 'try1.dart';

void main(){
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
        //home:HomePage(),
    );
  }
}