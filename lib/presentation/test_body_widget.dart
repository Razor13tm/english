import 'package:english/presentation/horraey.dart';
import 'package:english/presentation/test_oops_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/models/test_page_model.dart';

class TestBodyWidget extends StatelessWidget {
  const TestBodyWidget({Key? key, required this.asset, required this.words})
      : super(key: key);

  final String asset;
  final String words;

  static Widget create() {
    return ChangeNotifierProvider(
        create: (context) => TestPageModel(),
        lazy: false,
        child: const TestBodyWidget(
          asset: '',
          words: '',
        ));
  }

  @override
  Widget build(BuildContext context) {
    var model = context.read<TestPageModel>();
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.11,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 170,
                        child: Image.asset(
                          asset,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            width: MediaQuery.of(context).size.width * 0.83,
                            height: 80,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFF0E1732)),
                            ),
                          ),
                          Transform.scale(
                            scale: 0.94,
                            origin: const Offset(90, -25),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFF1F1F1)),
                            ),
                          ),
                          Positioned(
                            top: 30,
                            left: 130,
                            child: Text(
                              words,
                              style: const TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF0E1732)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 47,
                      child: ElevatedButton(
                        onPressed: () {
                          if (model.controller.page!.toInt() < 2) {
                            model.controller.animateToPage(
                              ++model.selectedIndex,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HorraeyPage(),
                                ));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: const Color(0xFF0E1732)),
                        child: const Text(
                          'Далее',
                          style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
