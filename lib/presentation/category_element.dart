import 'package:flutter/material.dart';

class CategoryElement extends StatefulWidget {
  const CategoryElement({Key? key, required this.first, required this.second, required this.asset}) : super(key: key);

  final String first;
  final String second;
  final String asset;

  @override
  State<CategoryElement> createState() => _CategoryElementState();
}

class _CategoryElementState extends State<CategoryElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 185,
      child: Stack(
        children: [
          Positioned(
            width: 165,
            height: 90,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF0E1732)
              ),
            ),
          ),
          Transform.scale(
            scale: 0.94,
            origin: const Offset(90,-25),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFF1F1F1)
              ),
            ),
          ),
          Positioned(child: Image.asset(
            'assets/images/buble.png',
          ),)
        ],
      ),
    );
  }
}
