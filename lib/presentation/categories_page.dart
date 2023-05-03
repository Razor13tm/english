import 'package:english/presentation/food_category_page.dart';
import 'package:english/presentation/test_oops_page.dart';
import 'package:flutter/material.dart';

import 'oops_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: double.infinity,
                  height: 30,
                  color: Colors.lightBlue,
                ),
                Image.asset(
                  'assets/images/level.png',
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 4,
                ),
                const Positioned(
                 top: 5,
                  left: 15,
                  child: Text(
                    'Проверь\nсвои знания',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                const Positioned(
                  bottom: 65,
                  left: 15,
                  child: Text(
                    'Пройти тестирование легко,\nтам слова из разных категорий ',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 15,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TestOopsPage()),
                      );
                    },
                    child: Image.asset(
                      'assets/images/begin_test.png',
                      width: 185,
                      height: 35,
                    ),
                  ),
                ),
              ]),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const Text(
                'Категории обучения',
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0E1732)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Попробуй начать с того что тебе более интересно',
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF0E1732)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              Padding(
                padding: const EdgeInsets.only(top: 2.5, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FoodCategoryPage()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/Component 1.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OopsPage(
                                    first:
                                        'Категория “животных” слов, сейчас недоступна, ',
                                    second: 'попробуй позже',
                                  )),
                        );
                      },
                      child: Image.asset(
                        'assets/images/Component 2.png',
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 22.5,
                  left: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OopsPage(
                                    first: 'Разговорные слова сейчас недоступны, ',
                                    second: 'попробуй позже',
                                  )),
                        );
                      },
                      child: Image.asset(
                        'assets/images/Component 3.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OopsPage(
                                    first:
                                        'Разговорные "транспорт" сейчас недоступна, ',
                                    second: 'попробуй позже',
                                  )),
                        );
                      },
                      child: Image.asset(
                        'assets/images/Component 4.png',
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
