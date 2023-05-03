import 'package:english/presentation/categories_page.dart';
import 'package:english/presentation/test_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/models/test_page_model.dart';

class FoodTestStart extends StatelessWidget {
  const FoodTestStart({Key? key}) : super(key: key);

  static Widget create() {
    return ChangeNotifierProvider(
      create: (context) => TestPageModel(),
      lazy: false,
      child: const FoodTestStart()
    );
  }

  @override
  Widget build(BuildContext context) {
    var model = context.read<TestPageModel>();
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0xFFF1F1F1),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategoriesPage()),
              );
            },
            child: Image.asset(
              'assets/images/Frame 17.png',
            ),
          ),
          title: const Text(
            'Еда и продукты',
            style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color(0xFF0E1732)),
          ),
        ),
        body: PageView(
          controller: model.controller,
          onPageChanged: (i) {
            model.onItemTapped(i);
          },
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            TestBodyWidget(
              asset: 'assets/images/pizzaFirst.png',
              words: 'Пицца\n\n Pizza',
            ),
            TestBodyWidget(
              asset: 'assets/images/grapeFirst.png',
              words: 'Мясо\n\nMeat',
            ),
            TestBodyWidget(
              asset: 'assets/images/bananFirst.png',
              words: 'Банан\n\nBanana',
            ),
          ],
        ));
  }
}


