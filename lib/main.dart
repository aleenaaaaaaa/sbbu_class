import 'package:sbbu_class/screen/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:sbbu_class/screen/first_screen.dart';
import 'dart:developer';

import 'package:sbbu_class/screen/webviewscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const webviewscreen(),
    );
  }
}
