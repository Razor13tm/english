import 'package:english/presentation/categories_page.dart';
import 'package:flutter/material.dart';

class OopsPage extends StatefulWidget {
  const OopsPage({Key? key, required this.first, required this.second}) : super(key: key);

 final String first;
 final String second;

  @override
  State<OopsPage> createState() => _OopsPageState();
}

class _OopsPageState extends State<OopsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/Frame 29.png',
            fit: BoxFit.fill,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1.7,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(children: [
                        TextSpan(
                          text: widget.first,
                          style: const TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF777D86)),
                        ),
                        TextSpan(
                          text: widget.second,
                          style: const TextStyle(
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
