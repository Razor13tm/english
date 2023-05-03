import 'package:english/presentation/food_test_start.dart';
import 'package:english/presentation/home_page.dart';
import 'package:english/presentation/test_body_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const HomePage(),
        '/food_test_start': (context) => FoodTestStart.create(),
        '/test_body_widget': (context) => TestBodyWidget.create()
      },
    );
  }
}

