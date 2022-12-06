import 'package:flutter/material.dart';

class App_Bar extends StatelessWidget {
  const App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image/pemprovjabar.png',
                scale: 25,
              ),
              Image.asset(
                'assets/image/disdikjabar.png',
                scale: 23,
              ),
              Image.asset(
                'assets/image/ppdb.png',
                scale: 4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
