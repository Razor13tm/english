import 'package:english/presentation/categories_page.dart';
import 'package:flutter/material.dart';

class HorraeyPage extends StatefulWidget {
  const HorraeyPage({Key? key,}) : super(key: key);

  @override
  State<HorraeyPage> createState() => _HorraeyPageState();
}

class _HorraeyPageState extends State<HorraeyPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/hooraey.png',
            fit: BoxFit.fill,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1.7,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: const [
                Expanded(
                  child: Center(
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(children: [
                        TextSpan(
                          text: 'Ты прошел всю еду и продукты, ',
                          style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF777D86)),
                        ),
                        TextSpan(
                          text: 'двигайся дальше',
                          style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF0E1732)),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
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
                        builder: (context) => const CategoriesPage(
                        )),
                  );
                },
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color(0xFF0E1732)),
                child: const Text(
                  'К категориям',
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
