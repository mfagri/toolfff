import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:ffftool/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      
      home: Scaffold(
        body: Myhome(),
      ),
    );
  }
}

