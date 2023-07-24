import 'package:flutter/material.dart';
import 'package:todoo/home.dart';
import 'package:todoo/login.dart';
import 'package:todoo/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Login()
    );
  }
}

