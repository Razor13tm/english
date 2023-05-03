import 'package:english/presentation/categories_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _wolfVisible = false;
  bool _figuresVisible = false;
  bool _wordsVisible = false;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 700), () {
      setState(() {
        _wolfVisible = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 1900), () {
      setState(() {
        _wordsVisible = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 2800), () {
      setState(() {
        _figuresVisible = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Image.asset(
                  'assets/images/up_back.png',
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.6,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.168,
                left: MediaQuery.of(context).size.width * 0.1,
                child: AnimatedOpacity(
                  opacity: _wolfVisible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 1500),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.326,
                    child: Image.asset(
                      'assets/images/wolf.png',
                    ),
                  ),
                ),
              ),
              Positioned(
                child: AnimatedOpacity(
                  opacity: _figuresVisible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 1500),
                  child: Image.asset(
                    'assets/images/cube.png',
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.06,
                right: MediaQuery.of(context).size.width * 0.05,
                child: AnimatedOpacity(
                  opacity: _figuresVisible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 1500),
                  child: Image.asset(
                    'assets/images/cone.png',
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.15,
                right: MediaQuery.of(context).size.width * 0.15,
                child: AnimatedOpacity(
                  opacity: _wordsVisible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 1500),
                  child: Image.asset(
                    'assets/images/english.png',
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.45,
                right: MediaQuery.of(context).size.width * 0.1,
                child: AnimatedOpacity(
                  opacity: _figuresVisible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 1500),
                  child: Image.asset(
                    'assets/images/buble.png',
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.4,
                left: MediaQuery.of(context).size.width * 0.1,
                child: AnimatedOpacity(
                  opacity: _figuresVisible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 1500),
                  child: Image.asset(
                    'assets/images/green.png',
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Не знаете английский язык?',
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0E1732)),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Учиться еще никогда ',
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF777D86)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'не было ',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF777D86)),
                  ),
                  TextSpan(
                    text: 'так весело!',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0E1732)),
                  ),
                ]),
              ),
            ],
          ),
          const Expanded(child: SizedBox.shrink()),
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
                        builder: (context) => const CategoriesPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color(0xFF0E1732)),
                child: const Text(
                  'Начать обучение',
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
    );
  }
}
