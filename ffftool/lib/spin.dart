import 'dart:async';
import 'dart:math';

import 'package:ffftool/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class ecospin extends StatefulWidget {
  @override
  _ecospinState createState() => _ecospinState();
}

class _ecospinState extends State<ecospin>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _animation;
  StreamController<int> selected = StreamController<int>();
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 20));
    _animation = Tween(begin: 0.0, end: 2 * pi).animate(_controller!);
  }

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  StreamController<int> controller = StreamController<int>();
  int n = 0;
  @override
  Widget build(BuildContext context) {
    final items = <String>[
      'Grogu',
      'Mace Windu',
      'Obi-Wan Kenobi',
      'Han Solo',
      'Luke Skywalker',
      'Darth Vader',
      'Yoda',
      'Ahsoka Tano',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            n = Fortune.randomInt(0, items.length);
            selected.add(n);
            print(n);
          });
        },
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                child: FortuneWheel(
                  selected: selected.stream,
                  items: [
                    for (var it in Guns) FortuneItem(child: Image(image: NetworkImage(it),)),
                  ],
                ),
              ),
              //Center(child: Text(items[n])),
            ],
          ),
        ),
      ),
    );
  }
}
 