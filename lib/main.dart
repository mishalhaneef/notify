import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';
import 'package:notify/splash_screen.dart';
import 'package:notify/widgets/tween_notify_logo.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: SecondPage(),
    );
  }
}

