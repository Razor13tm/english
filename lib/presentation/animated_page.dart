import 'package:flutter/material.dart';
import 'dart:async';

import 'food_category_page.dart';
import 'food_test_start.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  late final Timer timer;
  final values = [
    'assets/images/iPhone 8 - 17.png',
    'assets/images/iPhone 8 - 18.png',
    'assets/images/iPhone 8 - 19.png',
  ];
  int _index = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_index < 2) {
          _index++;
        } else {
          timer.cancel();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FoodTestStart.create()),
          );
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E1732),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedSwitcher(
              switchInCurve: Curves.elasticIn,
              switchOutCurve: Curves.elasticOut,
              duration: const Duration(seconds: 2),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 1,
                child: Image.asset(
                  values[_index % values.length],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
