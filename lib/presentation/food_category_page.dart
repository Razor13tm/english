import 'package:english/presentation/animated_page.dart';
import 'package:english/presentation/food_test_start.dart';
import 'package:flutter/material.dart';

class FoodCategoryPage extends StatefulWidget {
  const FoodCategoryPage({Key? key}) : super(key: key);

  @override
  State<FoodCategoryPage> createState() => _FoodCategoryPageState();
}

class _FoodCategoryPageState extends State<FoodCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
            const Center(
              child: Text(
                'LEARNING ENGLISH',
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0E1732)),
              ),
            ),
            Image.asset(
              'assets/images/food.png',
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            const SizedBox(height: 32,),
            const Text(
              'Еда и продукты',
              style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0E1732)),
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                textAlign: TextAlign.center,
                'Популярные продукты питания которые можно встретить по всему миру',
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF0E1732)),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.13,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimatedPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: const Color(0xFF0E1732)),
                  child: const Text(
                    'Начать',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
